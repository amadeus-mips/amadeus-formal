bind AXIWritePort axi_write_port_fv axi_write_port_fv_inst(.*);

module axi_write_port_fv (
	input        clock                    ,
	input        reset                    ,
	input        io_addrRequest_ready     ,
	input        io_addrRequest_valid     ,
	input [27:0] io_addrRequest_bits_tag  ,
	input        io_addrRequest_bits_index,
	input        io_data_ready            ,
	input        io_data_valid            ,
	input [31:0] io_data_bits             ,
	input        io_dataLast              ,
	input        io_axi_aw_ready          ,
	input        io_axi_aw_valid          ,
	input [31:0] io_axi_aw_bits_addr      ,
	input        io_axi_w_ready           ,
	input        io_axi_w_valid           ,
	input [31:0] io_axi_w_bits_data       ,
	input        io_axi_w_bits_last       ,
//	input        io_writeHandshake        ,
	// dut signals
	input        writeState               ,
	input        awValidReg               
);

	bit first_cycle = 1;
	always @(posedge clock) 
		first_cycle <= 0;

	always @(posedge clock)
		if (first_cycle)
			assume(reset);

	/** default clocking and reset */
	default clocking @(posedge clock); endclocking 
	default disable iff (reset);

	`define AW_HANDHSAKE (io_axi_aw_valid && io_axi_aw_ready)
	`define W_HANDSHAKE (io_axi_w_valid && io_axi_w_ready)

	/* cover handshakes */
	axi_write_port_cover_aw_handshake: cover property (`AW_HANDHSAKE);
	axi_write_port_cover_w_handshake: cover property (`W_HANDSHAKE);

	/* when there is a handshake, assert write handshake */
	// error_handshake_without_telling_writeQueue: assert property (`AW_HANDHSAKE || `W_HANDSHAKE |-> io_writeHandshake);

	//TODO: dont change before handshake once asserted
	property aw_dont_change_until_handshake(sig);
		(io_axi_aw_valid && !io_axi_aw_ready |-> ##1 !$changed(sig));
	endproperty

	property w_dont_change_until_handshake(sig);
		(io_axi_w_valid && !io_axi_w_ready |-> ##1 !$changed(sig));
	endproperty

	aw_address_dont_change_until_handshake: assert property (aw_dont_change_until_handshake(io_axi_aw_bits_addr));

	w_data_dont_change_until_handshake: assert property (w_dont_change_until_handshake(io_axi_w_bits_data));

	// commented because hidden by chisel
	// w_write_strb_dont_change_until_handshake: assert property (w_dont_change_until_handshake(io_axi_w_bits_strb));


	/* handshake can only take place during transfer state */
	// error_handshake_during_idle: assert property (`AW_HANDHSAKE || `W_HANDSHAKE |-> (writeState == 1));

	/* check handshake */
	error_aw_shake_twice: assert property (`AW_HANDHSAKE |-> ##1 !`AW_HANDHSAKE);
	error_w_finish_state_not_idle: assert property (`W_HANDSHAKE && io_axi_w_bits_last |-> ##1 writeState == 0);
	error_w_handshake_more_than_twice: assert property ( (`W_HANDSHAKE && io_axi_w_bits_last) |-> ##[1:$] `W_HANDSHAKE [->2] ##1 !`W_HANDSHAKE);


endmodule
