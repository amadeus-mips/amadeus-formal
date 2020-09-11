module Veri (
  input         clock,
  input         reset,
  output        io_request_ready,
  input         io_request_valid,
  input  [19:0] io_request_bits_tag,
  input  [11:0] io_request_bits_physicalIndex,
  input  [3:0]  io_request_bits_writeMask,
  input  [31:0] io_request_bits_writeData,
  output        io_data_valid,
  output [31:0] io_data_bits,
  output io_cacheInstruction_ready,
  input io_cacheInstruction_valid
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

	default clocking @(posedge clock); endclocking
	default disable iff(reset);

	VeriDCache dvr (.*);

	// _1 registers belong is fetch_query, _2 register is query_commit
	reg [31:0] intermediate_address_1, intermediate_address_2;
	reg [ 3:0] intermediate_writeMask_1, intermediate_writeMask_2;
	reg [31:0] intermediate_writeData_1, intermediate_writeData_2;
	reg intermdediate_valid_request;

	// this is actually a wire, wiring to the golden data
	wire [31:0] valid_data;


	GoldenDCache gold (
		.clock(clock),
		.reset(reset),
		.io_addr(intermediate_address_2),
		.io_data(valid_data),
        .io_writeEnable(|intermediate_writeMask_2),
        .io_writeMask(intermediate_writeMask_2),
        .io_writeData(intermediate_writeData_2)
		);
	`define REQ_HANDSHAKE (io_request_valid && io_request_ready)
	always @(posedge clock) begin
		if (reset) begin
			intermediate_address_1 <= 0;
			intermediate_address_2 <= 0;
			intermediate_writeData_1 <= 0;
			intermediate_writeMask_1 <= 0;
			intermediate_writeData_2 <= 0;
			intermediate_writeMask_2 <= 0;
			

		end 
		else begin
			if (io_request_ready) begin
				intermediate_writeMask_1 <= io_request_bits_writeMask;
				intermediate_writeData_1 <= io_request_bits_writeData;
				intermediate_address_1 <= {io_request_bits_tag, io_request_bits_physicalIndex};
			end 
			if (io_data_valid) begin
				intermediate_address_2 <= intermediate_address_1;
				intermediate_writeData_2 <= intermediate_writeData_1;
				intermediate_writeMask_2 <= intermediate_writeMask_1;
			end 
		end
	end

	cover_cache_instruction_invalidate_true: cover property (io_cacheInstruction_ready && io_cacheInstruction_valid);


	// cover axi write handshake
	cover_axi_write_handshake: cover property (dvr.dcache.io_axi_w_ready && dvr.dcache.io_axi_w_valid);

	/** before there is a handshake, the input data cannot be changed */
	restrain_when_not_handshake_dont_change_address: assume property (!(io_request_valid && io_request_ready) |-> ##1 !$changed({io_request_bits_tag, io_request_bits_physicalIndex}));
	restrain_when_not_handshake_dont_change_write_mask: assume property (!(io_request_valid && io_request_ready) |-> ##1 !$changed(io_request_bits_writeMask));
	restrain_when_not_handshake_dont_change_write_data: assume property (!(io_request_valid && io_request_ready) |-> ##1 !$changed(io_request_bits_writeData));


  // assume address restriction
	restrain_address_in_sixty_four: assume property (io_request_bits_tag == 0 && io_request_bits_physicalIndex[11:8] == 0 && io_request_bits_physicalIndex[1:0] == 0);


	// correct read
	//correct_read: assert property ((io_data_valid && !(|intermediate_writeMask_1)) |-> ##1 io_data_bits == valid_data);


	// don't accept new instructions during write back
	// write_back_bank_data_invalid: assert property (dvr.dcache.query.io_writeBack_valid |-> !io_request_ready);

	// there should be some valid data output after input handshake
	there_should_be_output_after_handshake: assert property ( `REQ_HANDSHAKE |-> s_eventually(io_data_valid));
endmodule
