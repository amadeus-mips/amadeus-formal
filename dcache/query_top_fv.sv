

bind QueryTop query_top_fv query_top_fv_inst(.*);

module query_top_fv (
    input        clock                                 ,
    input        reset                                 ,
    input [27:0] io_fetchQuery_tagValid_0_tag          ,
    input        io_fetchQuery_tagValid_0_valid        ,
    input [27:0] io_fetchQuery_tagValid_1_tag          ,
    input        io_fetchQuery_tagValid_1_valid        ,
    input [27:0] io_fetchQuery_phyTag                  ,
    input        io_fetchQuery_index                   ,
    input        io_fetchQuery_bankIndex               ,
    input        io_fetchQuery_valid                   ,
    input [31:0] io_fetchQuery_writeData               ,
    input [ 3:0] io_fetchQuery_writeMask               ,
    input        io_writeBack_valid                    ,
    input        io_writeBack_bits_addr_index          ,
    input        io_writeBack_bits_addr_waySel         ,
    input [27:0] io_writeBack_bits_tagValid_tag        ,
    input [31:0] io_writeBack_bits_data_0              ,
    input [31:0] io_writeBack_bits_data_1              ,
    input        io_axi_ar_ready                       ,
    input        io_axi_ar_valid                       ,
    input [31:0] io_axi_ar_bits_addr                   ,
    input        io_axi_r_ready                        ,
    input        io_axi_r_valid                        ,
    input [31:0] io_axi_r_bits_data                    ,
    input        io_axi_r_bits_last                    ,
    input        io_axi_aw_ready                       ,
    input        io_axi_aw_valid                       ,
    input [31:0] io_axi_aw_bits_addr                   ,
    input        io_axi_w_ready                        ,
    input        io_axi_w_valid                        ,
    input [31:0] io_axi_w_bits_data                    ,
    input        io_axi_w_bits_last                    ,
    input [31:0] io_dirtyData_0                        ,
    input [31:0] io_dirtyData_1                        ,
    input        io_queryCommit_indexSel               ,
    input        io_queryCommit_waySel                 ,
    input        io_queryCommit_bankIndexSel           ,
    input [31:0] io_queryCommit_writeData              ,
    input        io_queryCommit_writeEnable            ,
    input [ 3:0] io_queryCommit_writeMask              ,
    input [31:0] io_queryCommit_readData               ,
    input        io_queryCommit_readDataValid          ,
    input        io_hit                                ,
    input        io_ready                              ,
    input        io_dirtyWay                           ,
    // dut signals
    input        writeQueue_io_holdOffNewMiss          ,
    input        writeQueue_io_enqueue_valid           ,
    input        writeQueue_io_enqueue_ready           ,
    input [27:0] writeQueue_io_enqueue_bits_addr_tag   ,
    input        writeQueue_io_enqueue_bits_addr_index , // @[QueryTop.scala 55:26]
    input [31:0] writeQueue_io_enqueue_bits_data_0     , // @[QueryTop.scala 55:26]
    input [31:0] writeQueue_io_enqueue_bits_data_1     ,
    input        writeQueue_io_resp_valid               ,
    input [ 2:0] qState                                ,
    input        hitInBank                             ,
    input        axiRead_io_finishTransfer             ,
    input [ 3:0] refillBuffer_io_request_bits_writeMask,
    input        hitInRefillBuffer
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

    for (genvar i = 0; i < 6; i++) begin
        cover_qState_property: cover property (qState == i);
    end

    cover_wait_for_evict: cover property (qState == 2 ##1 qState == 2);

    cover_hold_off_new_miss: cover property (writeQueue_io_holdOffNewMiss );
    error_new_ar_request_when_hold_off_new_miss: assert property (writeQueue_io_holdOffNewMiss |->  !io_axi_ar_valid);

    error_hit_without_valid: assert property (io_fetchQuery_valid == 0 |-> io_hit == 0);
    error_write_without_valid: assert property (io_fetchQuery_valid == 0 |-> (io_queryCommit_writeEnable) == 0);


    // when write, cannot hit
    error_hit_in_bank_when_write_back: assert property (io_hit |-> ((qState == 0 || (qState == 1 && !axiRead_io_finishTransfer)) || io_queryCommit_readDataValid));
    error_write_enable_when_write_back: assert property (io_queryCommit_writeEnable |-> !io_writeBack_valid);
    error_write_enable_when_rlast_comes: assert property (io_queryCommit_writeEnable |-> !axiRead_io_finishTransfer);
    error_write_enable_when_evict: assert property (io_queryCommit_writeEnable |-> !(qState == 2));
    error_write_not_when_available: assert property (io_queryCommit_writeEnable |-> ((qState == 0) || ((qState == 1) && (!axiRead_io_finishTransfer))));
    error_hit_in_bank_and_others: assert property (!(io_queryCommit_readDataValid && io_hit && hitInBank));
    error_hit_in_more_than_one_place: assert property(io_fetchQuery_valid |-> $onehot0({hitInBank,hitInRefillBuffer,writeQueue_io_resp_valid}));


    property error_change_before_handshake(a);
        writeQueue_io_enqueue_valid && !writeQueue_io_enqueue_ready |-> ##1 !$changed(a);
    endproperty
    error_enqueue_data_1_change_before_handshake: assert property (error_change_before_handshake(writeQueue_io_enqueue_bits_data_1));
    error_enqueue_data_0_change_before_handshake: assert property (error_change_before_handshake(writeQueue_io_enqueue_bits_data_0));
    error_enqueue_tag_change_before_handshake: assert property (error_change_before_handshake(writeQueue_io_enqueue_bits_addr_tag));
    error_enqueue_index_change_before_handshake: assert property (error_change_before_handshake(writeQueue_io_enqueue_bits_addr_index));
    error_write_in_refill_buffer_when_not_refill: assert property (refillBuffer_io_request_bits_writeMask != 0 |-> qState == 1);
    error_hit_in_refill_buffer_when_not_refill: assert property (hitInRefillBuffer |-> qState == 1);
endmodule



























