module icachVeri (
	input         clock        , // Clock
	input         reset        , // Clock Enable
	output        io_addr_ready,
	input         io_addr_valid,
	input  [31:0] io_addr_bits ,
	input         io_data_ready,
	output        io_data_valid,
	output [31:0] io_data_bits ,
	input         io_flush
);

	/**
	snippet for reset
	*/
	bit first_cycle = 1;
	always @(posedge clock)
	  first_cycle <= 0;

	always @(posedge clock)
	  if (first_cycle)
	    assume(reset);

	ICacheVeri veri (.*);

	default clocking @(posedge clock); endclocking
	default disable iff(reset);

	reg [13:0] query_addr_pipeline;
	wire [13:0] addr;
	always @(posedge clock) begin 
		if (reset) begin
			query_addr_pipeline <= '1;
		end
		else if (io_addr_ready) begin
			query_addr_pipeline <= io_addr_bits[15:2];
		end
		else begin
			query_addr_pipeline <= query_addr_pipeline;
		end
	end
	
	assign addr = query_addr_pipeline;
	/** 
	* input address should be aligned
	*/
       	addr_align: assume property (io_addr_bits[1:0] == 0);

	/**
	* only 14 bit
	*/
       	bit_sixteen: assume property (io_addr_bits[31:16] == 0);

	/**
	should cover flush
	*/
	cover_flush: cover property (io_flush);

	/**
	cover input not valid
	*/
	cover_invalid_addr: cover property (!io_addr_valid);

	// cover data not valid
	cover_not_ready_data: cover property (!io_data_ready);


	/**
	assume there is no flush in this case
	*/
	//assume_no_flush: assume property (!io_flush);
	
	/**
	flush next is invalid
	*/
	flush_next_invalid: assert property (io_flush |-> !io_data_valid);

	/**
	flush next is ready unless there is a writeback
	*/
	//flush_next_rdy: assert property (io_flush |-> io_addr_ready || veri.insCache.mshr.io_writeBack);

	/**
	when input is received, the pipeline register should not be stalled
	**/
	input_ready_not_stall: assert property (io_addr_ready |-> !veri.insCache.fetch_query.io_stall);

	/** query should be successful */
	query_correct: assert property (io_data_valid |-> io_data_bits == veri.ram.mem[addr]);


endmodule
