bind MissComparator comparator_fv comparator_fv_inst(.*);

module comparator_fv (
  input  [27:0] io_tagValid_0_tag,
  input         io_tagValid_0_valid,
  input  [27:0] io_tagValid_1_tag,
  input         io_tagValid_1_valid,
  input  [27:0] io_phyTag,
  input         io_index,
  input  [27:0] io_mshr_tag,
  input         io_mshr_index,
  input        io_bankHitWay_valid,
  input        io_bankHitWay_bits,
  input        io_addrHitInRefillBuffer,
	
  // dut signals
    input  bankHitVec_0,
    input  bankHitVec_1

);

	//comparator_one_hot_hit: assert property ($onehot0({bankHitVec_0, bankHitVec_1}));

endmodule
