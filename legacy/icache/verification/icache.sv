module icache_vip (
  input         clock,
  input         reset,
  output        io_addr_ready,
  input         io_addr_valid,
  input  [31:0] io_addr_bits,
  output        io_data_valid,
  output [31:0] io_data_bits,
  input         io_flush,
  input         io_axi_ar_ready,
  output        io_axi_ar_valid,
  output [3:0]  io_axi_ar_bits_id,
  output [31:0] io_axi_ar_bits_addr,
  output [3:0]  io_axi_ar_bits_len,
  output [2:0]  io_axi_ar_bits_size,
  output [1:0]  io_axi_ar_bits_burst,
  output [1:0]  io_axi_ar_bits_lock,
  output [3:0]  io_axi_ar_bits_cache,
  output [2:0]  io_axi_ar_bits_prot,
  output        io_axi_r_ready,
  input         io_axi_r_valid,
  input  [3:0]  io_axi_r_bits_id,
  input  [31:0] io_axi_r_bits_data,
  input  [1:0]  io_axi_r_bits_resp,
  input         io_axi_r_bits_last,
  input         io_axi_aw_ready,
  output        io_axi_aw_valid,
  output [3:0]  io_axi_aw_bits_id,
  output [31:0] io_axi_aw_bits_addr,
  output [3:0]  io_axi_aw_bits_len,
  output [2:0]  io_axi_aw_bits_size,
  output [1:0]  io_axi_aw_bits_burst,
  output [1:0]  io_axi_aw_bits_lock,
  output [3:0]  io_axi_aw_bits_cache,
  output [2:0]  io_axi_aw_bits_prot,
  input         io_axi_w_ready,
  output        io_axi_w_valid,
  output [3:0]  io_axi_w_bits_id,
  output [31:0] io_axi_w_bits_data,
  output [3:0]  io_axi_w_bits_strb,
  output        io_axi_w_bits_last,
  output        io_axi_b_ready,
  input         io_axi_b_valid,
  input  [3:0]  io_axi_b_bits_id,
  input  [1:0]  io_axi_b_bits_resp
);
	//TODO: snippet for reset
	bit first_cycle = 1;
	always @(posedge clock)
	  first_cycle <= 0;

	always @(posedge clock)
	  if (first_cycle)
	    assume(reset);
	
    	//TODO: module instantiation
	InstrCache icache (.*);

	default clocking @(posedge clock); endclocking
	default disable iff(reset);
	/**
	 * some basic assumptions regarding flush, valid
	 */
	cover_flush: cover property (io_flush == 1);
	cover_invalid_addr: cover property (io_addr_valid == 0);
	cover_not_ready: cover property (io_addr_ready == 0);
	cover_ready: cover property (io_addr_ready == 1);
	cover_valid_instr: cover property (io_data_valid == 1);
	cover_invalid_instr: cover property (io_data_valid == 0);
	
	/**
	 * some assumptions
	 */
	axi_data_transfer: assume property (io_axi_ar_ready && io_axi_ar_valid |=> (io_axi_r_ready && io_axi_r_valid) [=15] ##1 (io_axi_r_ready && io_axi_r_valid && io_axi_r_bits_last));
	
//	axi_lower_r_valid: assume property ((io_axi_r_ready && io_axi_r_valid) [->16] ##1 !io_axi_r_ready);
	
	//TODO: efficient assume
//	assume_16_tranasfer: assume property ((io_axi_ar_ready && io_axi_ar_valid) |=> (io_axi_r_valid[->15] ##1 (io_axi_r_valid && io_axi_r_bits_last) and io_axi_r_bits_last[->15] ##1 (io_axi_r_valid && io_axi_r_bits_last)));


	assume_16_consecutive: assume property((io_axi_ar_ready && io_axi_ar_valid) |=> (io_axi_r_valid)[*16] ##1 !io_axi_r_valid );
	assume_16_consecutive_last: assume property((io_axi_ar_ready && io_axi_ar_valid) |=> (!io_axi_r_bits_last)[*15] ##1 io_axi_r_bits_last );
	
	// assert ar ready after ar valid
	axi_assert_ar: assume property (!io_axi_ar_ready && io_axi_ar_valid |=> io_axi_ar_ready);
	
	// lower ar ready after handshake
	axi_lower_ar: assume property (io_axi_ar_ready && io_axi_ar_valid |=> !io_axi_ar_ready);
	 
	/**
	 * named sequences
	 */
	
	/**
	* intentional wrong
	*/
//       	intentional_wrong: assert property (io_flush |=> io_addr_ready);
	
	/**
	 * assert properties
	 */
	 flush_signal: assert property (io_flush |-> io_data_valid == 0)
		 else $error("data at the cycle of flush is valid");
	 invalid_input: assert property (io_addr_ready && io_addr_valid && !io_addr_valid ##1 io_addr_ready |=> !io_data_valid)
		 else $error("invalid input should cause invalid output");;
	 // should not continue to receive requests after io.addr.ready
	 
	 not_ready_after_last_transfer: assert property (
		 io_axi_r_bits_last && io_axi_r_ready && io_axi_r_valid 
		 |=> !io_addr_ready)
		 else $error("io address should not be ready after rlast ( writeback )");;
	 // after flushing, ready should be high at the same cycle
	 flush_next_ready: assert property (io_flush |-> (io_addr_ready || $past(io_axi_r_bits_last)) )
		 else $error("if flush is high, address ready should be high, too");
	 
	/**
	 * axi properties
	 */
	 dont_change_after_valid_assert: assert property
		 (io_axi_ar_valid |=> !$changed(io_axi_ar_bits_addr) || !io_axi_ar_valid)
		 else $error("io ar address should not be changed during ar valid");
	 

endmodule
