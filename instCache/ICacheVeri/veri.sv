module Veri (
  input         clock,
  input         reset,
  output        io_addr_ready,
  input         io_addr_valid,
  input  [31:0] io_addr_bits,
  input         io_data_ready,
  output        io_data_valid,
  output [31:0] io_data_bits
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

	ICacheVeri ivr (.*);

	//(*anyconst*) reg [31:0] randomAddress;

	reg [31:0] intermediateAddress;

	// this is actually a wire
	wire [31:0] validData;

	GoldenICache gold (
		.clock(clock),
		.reset(reset),
		.io_addr(intermediateAddress),
		.io_data(validData)
		);

	always @(posedge clock) begin
		if (reset) begin
			intermediateAddress <= 0;
		end 
		else begin
			if (io_addr_ready && io_addr_valid) begin
				intermediateAddress <= io_addr_bits;
			end 
		end
	end

	// cover state transition from write back to refill
	//cover_qState_writeBack_refill: cover property (ivr.insCache.query.qState == 2 |-> ##1 ivr.insCache.query.qState == 1);

	//// cover state transition from write back to idle
	//cover_qState_writeBack_qIlde: cover property (ivr.insCache.query.qState == 2 |-> ##1 ivr.insCache.query.qState == 0);

	//// as new Miss is *guaranteed* to be accepted, there should be none
	//// during write back
	//no_new_miss_during_write_back: assert property (ivr.insCache.query.newMiss |-> ivr.insCache.query.qState != 1);

	// assume address restriction
	addr_restrict: assume property (io_addr_bits[31:8] == 0 && io_addr_bits[1:0] == 0);

	// correct write
	correct_write: assert property (io_data_valid |-> io_data_bits == validData);

	// bank hit vec in comparator should be one hot
	onehot_hit: assert property (!(ivr.insCache.query.comparator.bankHitVec_0 && ivr.insCache.query.comparator.bankHitVec_1));

	// don't accept new instructions during write back
	// write_back_bank_data_invalid: assert property (ivr.insCache.query.io_write_valid |-> !io_addr_ready);	

	// write holder should not be valid if its former query is not valid
//	write_holder_should_not_be_valid_if_former_is_not_valid: assert property (!io_data_valid |-> ##1 !ivr.insCache.query.readHolder.io_output_valid);

	// write holder should be always valid if former is a hit
//	write_holder_valid_former_hit: assert property (io_data_valid && !io_data_ready |-> ##1 ivr.insCache.query.readHolder.io_output_valid);

	// when handshake, read holder should always be invalid
//	write_holder_invalid_after_handshake: assert property (io_data_valid && io_data_ready |-> ##1 !ivr.insCache.query.readHolder.io_output_valid);

//	read_holder_valid_dont_new_miss: assert property (ivr.insCache.query.readHolder.io_output_valid |-> !ivr.insCache.query.newMiss);

endmodule
