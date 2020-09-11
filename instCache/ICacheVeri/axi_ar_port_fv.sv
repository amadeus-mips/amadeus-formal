bind AXIARPort axi_ar_port_fv axi_ar_port_fv_inst(.*);

module axi_ar_port_fv (
  input         clock,
  input         reset,
  input        io_addrReq_ready,
  input         io_addrReq_valid,
  input  [31:0] io_addrReq_bits,
  input         io_ar_ready,
  input        io_ar_valid,
  input [31:0] io_ar_bits_addr
//  input        io_arCommit
);


		/** default clocking and reset */
	default clocking @(posedge clock); endclocking 
	default disable iff (reset);

	`define AR_HANDSHAKE (io_ar_ready && io_ar_valid)

	// when valid is high, data cannot change
	error_address_change_after_valid_asserted_before_handshake: assert property (io_ar_valid && !io_ar_ready |-> ##1 !$changed(io_ar_bits_addr));

	// ar should commit with ar handshake
//	error_ar_not_commit_when_ar_handshake: assert property (io_ar_ready && io_ar_valid |-> io_arCommit);

	// when ar is valid, the ready could not be high
	error_ar_valid_and_request_ready: assert property (io_ar_valid |-> !io_addrReq_ready);
	
	error_ar_handshake_twice: assert property (`AR_HANDSHAKE |-> ##1 !`AR_HANDSHAKE);
endmodule
