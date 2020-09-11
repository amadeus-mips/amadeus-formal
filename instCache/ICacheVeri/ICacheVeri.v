module LUTRam(
  input         clock,
  input         reset,
  input         io_readAddr,
  output [27:0] io_readData,
  input         io_writeAddr,
  input  [27:0] io_writeData,
  input         io_writeEnable
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [27:0] _T_1_0; // @[LUTRam.scala 57:19]
  reg [27:0] _T_1_1; // @[LUTRam.scala 57:19]
  assign io_readData = io_readAddr ? _T_1_1 : _T_1_0; // @[LUTRam.scala 58:20]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_1_0 = _RAND_0[27:0];
  _RAND_1 = {1{`RANDOM}};
  _T_1_1 = _RAND_1[27:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_1_0 <= 28'h0;
    end else if (io_writeEnable) begin
      if (~io_writeAddr) begin
        _T_1_0 <= io_writeData;
      end
    end
    if (reset) begin
      _T_1_1 <= 28'h0;
    end else if (io_writeEnable) begin
      if (io_writeAddr) begin
        _T_1_1 <= io_writeData;
      end
    end
  end
endmodule
module TagValidBanks(
  input         clock,
  input         reset,
  input         io_way_0_portA_addr,
  output [27:0] io_way_0_portA_data_tag,
  output        io_way_0_portA_data_valid,
  input         io_way_0_portB_addr,
  input         io_way_0_portB_writeEnable,
  input  [27:0] io_way_0_portB_writeData_tag,
  input         io_way_1_portA_addr,
  output [27:0] io_way_1_portA_data_tag,
  output        io_way_1_portA_data_valid,
  input         io_way_1_portB_addr,
  input         io_way_1_portB_writeEnable,
  input  [27:0] io_way_1_portB_writeData_tag
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  tag_bank_way_0_clock; // @[TagValidBanks.scala 31:25]
  wire  tag_bank_way_0_reset; // @[TagValidBanks.scala 31:25]
  wire  tag_bank_way_0_io_readAddr; // @[TagValidBanks.scala 31:25]
  wire [27:0] tag_bank_way_0_io_readData; // @[TagValidBanks.scala 31:25]
  wire  tag_bank_way_0_io_writeAddr; // @[TagValidBanks.scala 31:25]
  wire [27:0] tag_bank_way_0_io_writeData; // @[TagValidBanks.scala 31:25]
  wire  tag_bank_way_0_io_writeEnable; // @[TagValidBanks.scala 31:25]
  wire  tag_bank_way_1_clock; // @[TagValidBanks.scala 31:25]
  wire  tag_bank_way_1_reset; // @[TagValidBanks.scala 31:25]
  wire  tag_bank_way_1_io_readAddr; // @[TagValidBanks.scala 31:25]
  wire [27:0] tag_bank_way_1_io_readData; // @[TagValidBanks.scala 31:25]
  wire  tag_bank_way_1_io_writeAddr; // @[TagValidBanks.scala 31:25]
  wire [27:0] tag_bank_way_1_io_writeData; // @[TagValidBanks.scala 31:25]
  wire  tag_bank_way_1_io_writeEnable; // @[TagValidBanks.scala 31:25]
  reg  valid_bank_way_0_0; // @[TagValidBanks.scala 37:28]
  reg  valid_bank_way_0_1; // @[TagValidBanks.scala 37:28]
  wire  _GEN_12 = ~io_way_0_portB_addr; // @[TagValidBanks.scala 51:39]
  wire  _GEN_2 = _GEN_12 | valid_bank_way_0_0; // @[TagValidBanks.scala 51:39]
  wire  _GEN_3 = io_way_0_portB_addr | valid_bank_way_0_1; // @[TagValidBanks.scala 51:39]
  reg  valid_bank_way_1_0; // @[TagValidBanks.scala 37:28]
  reg  valid_bank_way_1_1; // @[TagValidBanks.scala 37:28]
  wire  _GEN_13 = ~io_way_1_portB_addr; // @[TagValidBanks.scala 51:39]
  wire  _GEN_8 = _GEN_13 | valid_bank_way_1_0; // @[TagValidBanks.scala 51:39]
  wire  _GEN_9 = io_way_1_portB_addr | valid_bank_way_1_1; // @[TagValidBanks.scala 51:39]
  LUTRam tag_bank_way_0 ( // @[TagValidBanks.scala 31:25]
    .clock(tag_bank_way_0_clock),
    .reset(tag_bank_way_0_reset),
    .io_readAddr(tag_bank_way_0_io_readAddr),
    .io_readData(tag_bank_way_0_io_readData),
    .io_writeAddr(tag_bank_way_0_io_writeAddr),
    .io_writeData(tag_bank_way_0_io_writeData),
    .io_writeEnable(tag_bank_way_0_io_writeEnable)
  );
  LUTRam tag_bank_way_1 ( // @[TagValidBanks.scala 31:25]
    .clock(tag_bank_way_1_clock),
    .reset(tag_bank_way_1_reset),
    .io_readAddr(tag_bank_way_1_io_readAddr),
    .io_readData(tag_bank_way_1_io_readData),
    .io_writeAddr(tag_bank_way_1_io_writeAddr),
    .io_writeData(tag_bank_way_1_io_writeData),
    .io_writeEnable(tag_bank_way_1_io_writeEnable)
  );
  assign io_way_0_portA_data_tag = tag_bank_way_0_io_readData; // @[TagValidBanks.scala 42:32]
  assign io_way_0_portA_data_valid = io_way_0_portA_addr ? valid_bank_way_0_1 : valid_bank_way_0_0; // @[TagValidBanks.scala 43:32]
  assign io_way_1_portA_data_tag = tag_bank_way_1_io_readData; // @[TagValidBanks.scala 42:32]
  assign io_way_1_portA_data_valid = io_way_1_portA_addr ? valid_bank_way_1_1 : valid_bank_way_1_0; // @[TagValidBanks.scala 43:32]
  assign tag_bank_way_0_clock = clock;
  assign tag_bank_way_0_reset = reset;
  assign tag_bank_way_0_io_readAddr = io_way_0_portA_addr; // @[TagValidBanks.scala 41:32]
  assign tag_bank_way_0_io_writeAddr = io_way_0_portB_addr; // @[TagValidBanks.scala 47:30]
  assign tag_bank_way_0_io_writeData = io_way_0_portB_writeData_tag; // @[TagValidBanks.scala 49:30]
  assign tag_bank_way_0_io_writeEnable = io_way_0_portB_writeEnable; // @[TagValidBanks.scala 48:30]
  assign tag_bank_way_1_clock = clock;
  assign tag_bank_way_1_reset = reset;
  assign tag_bank_way_1_io_readAddr = io_way_1_portA_addr; // @[TagValidBanks.scala 41:32]
  assign tag_bank_way_1_io_writeAddr = io_way_1_portB_addr; // @[TagValidBanks.scala 47:30]
  assign tag_bank_way_1_io_writeData = io_way_1_portB_writeData_tag; // @[TagValidBanks.scala 49:30]
  assign tag_bank_way_1_io_writeEnable = io_way_1_portB_writeEnable; // @[TagValidBanks.scala 48:30]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  valid_bank_way_0_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  valid_bank_way_0_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  valid_bank_way_1_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  valid_bank_way_1_1 = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      valid_bank_way_0_0 <= 1'h0;
    end else if (io_way_0_portB_writeEnable) begin
      valid_bank_way_0_0 <= _GEN_2;
    end
    if (reset) begin
      valid_bank_way_0_1 <= 1'h0;
    end else if (io_way_0_portB_writeEnable) begin
      valid_bank_way_0_1 <= _GEN_3;
    end
    if (reset) begin
      valid_bank_way_1_0 <= 1'h0;
    end else if (io_way_1_portB_writeEnable) begin
      valid_bank_way_1_0 <= _GEN_8;
    end
    if (reset) begin
      valid_bank_way_1_1 <= 1'h0;
    end else if (io_way_1_portB_writeEnable) begin
      valid_bank_way_1_1 <= _GEN_9;
    end
  end
endmodule
module TagValid(
  input         clock,
  input         reset,
  input         io_index,
  input         io_write_valid,
  input         io_write_bits_waySelection,
  input         io_write_bits_indexSelection,
  input  [27:0] io_write_bits_tagValid_tag,
  output [27:0] io_tagValid_0_tag,
  output        io_tagValid_0_valid,
  output [27:0] io_tagValid_1_tag,
  output        io_tagValid_1_valid
);
  wire  tagValidBanks_clock; // @[TagValid.scala 40:29]
  wire  tagValidBanks_reset; // @[TagValid.scala 40:29]
  wire  tagValidBanks_io_way_0_portA_addr; // @[TagValid.scala 40:29]
  wire [27:0] tagValidBanks_io_way_0_portA_data_tag; // @[TagValid.scala 40:29]
  wire  tagValidBanks_io_way_0_portA_data_valid; // @[TagValid.scala 40:29]
  wire  tagValidBanks_io_way_0_portB_addr; // @[TagValid.scala 40:29]
  wire  tagValidBanks_io_way_0_portB_writeEnable; // @[TagValid.scala 40:29]
  wire [27:0] tagValidBanks_io_way_0_portB_writeData_tag; // @[TagValid.scala 40:29]
  wire  tagValidBanks_io_way_1_portA_addr; // @[TagValid.scala 40:29]
  wire [27:0] tagValidBanks_io_way_1_portA_data_tag; // @[TagValid.scala 40:29]
  wire  tagValidBanks_io_way_1_portA_data_valid; // @[TagValid.scala 40:29]
  wire  tagValidBanks_io_way_1_portB_addr; // @[TagValid.scala 40:29]
  wire  tagValidBanks_io_way_1_portB_writeEnable; // @[TagValid.scala 40:29]
  wire [27:0] tagValidBanks_io_way_1_portB_writeData_tag; // @[TagValid.scala 40:29]
  wire  _T = ~io_write_bits_waySelection; // @[TagValid.scala 53:94]
  TagValidBanks tagValidBanks ( // @[TagValid.scala 40:29]
    .clock(tagValidBanks_clock),
    .reset(tagValidBanks_reset),
    .io_way_0_portA_addr(tagValidBanks_io_way_0_portA_addr),
    .io_way_0_portA_data_tag(tagValidBanks_io_way_0_portA_data_tag),
    .io_way_0_portA_data_valid(tagValidBanks_io_way_0_portA_data_valid),
    .io_way_0_portB_addr(tagValidBanks_io_way_0_portB_addr),
    .io_way_0_portB_writeEnable(tagValidBanks_io_way_0_portB_writeEnable),
    .io_way_0_portB_writeData_tag(tagValidBanks_io_way_0_portB_writeData_tag),
    .io_way_1_portA_addr(tagValidBanks_io_way_1_portA_addr),
    .io_way_1_portA_data_tag(tagValidBanks_io_way_1_portA_data_tag),
    .io_way_1_portA_data_valid(tagValidBanks_io_way_1_portA_data_valid),
    .io_way_1_portB_addr(tagValidBanks_io_way_1_portB_addr),
    .io_way_1_portB_writeEnable(tagValidBanks_io_way_1_portB_writeEnable),
    .io_way_1_portB_writeData_tag(tagValidBanks_io_way_1_portB_writeData_tag)
  );
  assign io_tagValid_0_tag = tagValidBanks_io_way_0_portA_data_tag; // @[TagValid.scala 46:40]
  assign io_tagValid_0_valid = tagValidBanks_io_way_0_portA_data_valid; // @[TagValid.scala 46:40]
  assign io_tagValid_1_tag = tagValidBanks_io_way_1_portA_data_tag; // @[TagValid.scala 46:40]
  assign io_tagValid_1_valid = tagValidBanks_io_way_1_portA_data_valid; // @[TagValid.scala 46:40]
  assign tagValidBanks_clock = clock;
  assign tagValidBanks_reset = reset;
  assign tagValidBanks_io_way_0_portA_addr = io_index; // @[TagValid.scala 45:40]
  assign tagValidBanks_io_way_0_portB_addr = io_write_bits_indexSelection; // @[TagValid.scala 49:40]
  assign tagValidBanks_io_way_0_portB_writeEnable = io_write_valid & _T; // @[TagValid.scala 53:45]
  assign tagValidBanks_io_way_0_portB_writeData_tag = io_write_bits_tagValid_tag; // @[TagValid.scala 54:45]
  assign tagValidBanks_io_way_1_portA_addr = io_index; // @[TagValid.scala 45:40]
  assign tagValidBanks_io_way_1_portB_addr = io_write_bits_indexSelection; // @[TagValid.scala 49:40]
  assign tagValidBanks_io_way_1_portB_writeEnable = io_write_valid & io_write_bits_waySelection; // @[TagValid.scala 53:45]
  assign tagValidBanks_io_way_1_portB_writeData_tag = io_write_bits_tagValid_tag; // @[TagValid.scala 54:45]
endmodule
module FetchTop(
  input         clock,
  input         reset,
  input  [31:0] io_addr,
  input         io_write_valid,
  input         io_write_bits_waySelection,
  input         io_write_bits_indexSelection,
  input  [27:0] io_write_bits_tagValid_tag,
  output        io_index,
  output [27:0] io_tagValid_0_tag,
  output        io_tagValid_0_valid,
  output [27:0] io_tagValid_1_tag,
  output        io_tagValid_1_valid,
  output [27:0] io_phyTag,
  output        io_bankIndex
);
  wire  tagValid_clock; // @[FetchTop.scala 25:24]
  wire  tagValid_reset; // @[FetchTop.scala 25:24]
  wire  tagValid_io_index; // @[FetchTop.scala 25:24]
  wire  tagValid_io_write_valid; // @[FetchTop.scala 25:24]
  wire  tagValid_io_write_bits_waySelection; // @[FetchTop.scala 25:24]
  wire  tagValid_io_write_bits_indexSelection; // @[FetchTop.scala 25:24]
  wire [27:0] tagValid_io_write_bits_tagValid_tag; // @[FetchTop.scala 25:24]
  wire [27:0] tagValid_io_tagValid_0_tag; // @[FetchTop.scala 25:24]
  wire  tagValid_io_tagValid_0_valid; // @[FetchTop.scala 25:24]
  wire [27:0] tagValid_io_tagValid_1_tag; // @[FetchTop.scala 25:24]
  wire  tagValid_io_tagValid_1_valid; // @[FetchTop.scala 25:24]
  wire [27:0] virtualTag = io_addr[31:4]; // @[FetchTop.scala 27:27]
  TagValid tagValid ( // @[FetchTop.scala 25:24]
    .clock(tagValid_clock),
    .reset(tagValid_reset),
    .io_index(tagValid_io_index),
    .io_write_valid(tagValid_io_write_valid),
    .io_write_bits_waySelection(tagValid_io_write_bits_waySelection),
    .io_write_bits_indexSelection(tagValid_io_write_bits_indexSelection),
    .io_write_bits_tagValid_tag(tagValid_io_write_bits_tagValid_tag),
    .io_tagValid_0_tag(tagValid_io_tagValid_0_tag),
    .io_tagValid_0_valid(tagValid_io_tagValid_0_valid),
    .io_tagValid_1_tag(tagValid_io_tagValid_1_tag),
    .io_tagValid_1_valid(tagValid_io_tagValid_1_valid)
  );
  assign io_index = io_addr[3]; // @[FetchTop.scala 34:33]
  assign io_tagValid_0_tag = tagValid_io_tagValid_0_tag; // @[FetchTop.scala 38:33]
  assign io_tagValid_0_valid = tagValid_io_tagValid_0_valid; // @[FetchTop.scala 38:33]
  assign io_tagValid_1_tag = tagValid_io_tagValid_1_tag; // @[FetchTop.scala 38:33]
  assign io_tagValid_1_valid = tagValid_io_tagValid_1_valid; // @[FetchTop.scala 38:33]
  assign io_phyTag = {3'h0,virtualTag[24:0]}; // @[FetchTop.scala 41:13]
  assign io_bankIndex = io_addr[2]; // @[FetchTop.scala 39:33]
  assign tagValid_clock = clock;
  assign tagValid_reset = reset;
  assign tagValid_io_index = io_addr[3]; // @[FetchTop.scala 35:33]
  assign tagValid_io_write_valid = io_write_valid; // @[FetchTop.scala 36:33]
  assign tagValid_io_write_bits_waySelection = io_write_bits_waySelection; // @[FetchTop.scala 36:33]
  assign tagValid_io_write_bits_indexSelection = io_write_bits_indexSelection; // @[FetchTop.scala 36:33]
  assign tagValid_io_write_bits_tagValid_tag = io_write_bits_tagValid_tag; // @[FetchTop.scala 36:33]
endmodule
module CachePipelineStage(
  input         clock,
  input         reset,
  input         io_stall,
  input  [27:0] io_in_tagValid_0_tag,
  input         io_in_tagValid_0_valid,
  input  [27:0] io_in_tagValid_1_tag,
  input         io_in_tagValid_1_valid,
  input  [27:0] io_in_phyTag,
  input         io_in_index,
  input         io_in_bankIndex,
  input         io_in_valid,
  output [27:0] io_out_tagValid_0_tag,
  output        io_out_tagValid_0_valid,
  output [27:0] io_out_tagValid_1_tag,
  output        io_out_tagValid_1_valid,
  output [27:0] io_out_phyTag,
  output        io_out_index,
  output        io_out_bankIndex,
  output        io_out_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [27:0] pipelineReg_tagValid_0_tag; // @[CachePipelineStage.scala 24:28]
  reg  pipelineReg_tagValid_0_valid; // @[CachePipelineStage.scala 24:28]
  reg [27:0] pipelineReg_tagValid_1_tag; // @[CachePipelineStage.scala 24:28]
  reg  pipelineReg_tagValid_1_valid; // @[CachePipelineStage.scala 24:28]
  reg [27:0] pipelineReg_phyTag; // @[CachePipelineStage.scala 24:28]
  reg  pipelineReg_index; // @[CachePipelineStage.scala 24:28]
  reg  pipelineReg_bankIndex; // @[CachePipelineStage.scala 24:28]
  reg  pipelineReg_valid; // @[CachePipelineStage.scala 24:28]
  wire  _T_1 = ~io_stall; // @[CachePipelineStage.scala 26:8]
  assign io_out_tagValid_0_tag = pipelineReg_tagValid_0_tag; // @[CachePipelineStage.scala 30:10]
  assign io_out_tagValid_0_valid = pipelineReg_tagValid_0_valid; // @[CachePipelineStage.scala 30:10]
  assign io_out_tagValid_1_tag = pipelineReg_tagValid_1_tag; // @[CachePipelineStage.scala 30:10]
  assign io_out_tagValid_1_valid = pipelineReg_tagValid_1_valid; // @[CachePipelineStage.scala 30:10]
  assign io_out_phyTag = pipelineReg_phyTag; // @[CachePipelineStage.scala 30:10]
  assign io_out_index = pipelineReg_index; // @[CachePipelineStage.scala 30:10]
  assign io_out_bankIndex = pipelineReg_bankIndex; // @[CachePipelineStage.scala 30:10]
  assign io_out_valid = pipelineReg_valid; // @[CachePipelineStage.scala 30:10]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  pipelineReg_tagValid_0_tag = _RAND_0[27:0];
  _RAND_1 = {1{`RANDOM}};
  pipelineReg_tagValid_0_valid = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  pipelineReg_tagValid_1_tag = _RAND_2[27:0];
  _RAND_3 = {1{`RANDOM}};
  pipelineReg_tagValid_1_valid = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  pipelineReg_phyTag = _RAND_4[27:0];
  _RAND_5 = {1{`RANDOM}};
  pipelineReg_index = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  pipelineReg_bankIndex = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  pipelineReg_valid = _RAND_7[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      pipelineReg_tagValid_0_tag <= 28'h0;
    end else if (_T_1) begin
      pipelineReg_tagValid_0_tag <= io_in_tagValid_0_tag;
    end
    if (reset) begin
      pipelineReg_tagValid_0_valid <= 1'h0;
    end else if (_T_1) begin
      pipelineReg_tagValid_0_valid <= io_in_tagValid_0_valid;
    end
    if (reset) begin
      pipelineReg_tagValid_1_tag <= 28'h0;
    end else if (_T_1) begin
      pipelineReg_tagValid_1_tag <= io_in_tagValid_1_tag;
    end
    if (reset) begin
      pipelineReg_tagValid_1_valid <= 1'h0;
    end else if (_T_1) begin
      pipelineReg_tagValid_1_valid <= io_in_tagValid_1_valid;
    end
    if (reset) begin
      pipelineReg_phyTag <= 28'h0;
    end else if (_T_1) begin
      pipelineReg_phyTag <= io_in_phyTag;
    end
    if (reset) begin
      pipelineReg_index <= 1'h0;
    end else if (_T_1) begin
      pipelineReg_index <= io_in_index;
    end
    if (reset) begin
      pipelineReg_bankIndex <= 1'h0;
    end else if (_T_1) begin
      pipelineReg_bankIndex <= io_in_bankIndex;
    end
    if (reset) begin
      pipelineReg_valid <= 1'h0;
    end else if (_T_1) begin
      pipelineReg_valid <= io_in_valid;
    end
  end
endmodule
module MSHR(
  input         clock,
  input         io_recordMiss_valid,
  input  [27:0] io_recordMiss_bits_addr_tag,
  input         io_recordMiss_bits_addr_index,
  input         io_recordMiss_bits_addr_bankIndex,
  output [27:0] io_extractMiss_addr_tag,
  output        io_extractMiss_addr_index,
  output        io_extractMiss_addr_bankIndex
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [27:0] missEntryReg_tag; // @[MSHR.scala 37:31]
  reg  missEntryReg_index; // @[MSHR.scala 37:31]
  reg  missEntryReg_bankIndex; // @[MSHR.scala 37:31]
  assign io_extractMiss_addr_tag = missEntryReg_tag; // @[MSHR.scala 43:34]
  assign io_extractMiss_addr_index = missEntryReg_index; // @[MSHR.scala 43:34]
  assign io_extractMiss_addr_bankIndex = missEntryReg_bankIndex; // @[MSHR.scala 43:34]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  missEntryReg_tag = _RAND_0[27:0];
  _RAND_1 = {1{`RANDOM}};
  missEntryReg_index = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  missEntryReg_bankIndex = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (io_recordMiss_valid) begin
      missEntryReg_tag <= io_recordMiss_bits_addr_tag;
    end
    if (io_recordMiss_valid) begin
      missEntryReg_index <= io_recordMiss_bits_addr_index;
    end
    if (io_recordMiss_valid) begin
      missEntryReg_bankIndex <= io_recordMiss_bits_addr_bankIndex;
    end
  end
endmodule
module MissComparator(
  input  [27:0] io_tagValid_0_tag,
  input         io_tagValid_0_valid,
  input  [27:0] io_tagValid_1_tag,
  input         io_tagValid_1_valid,
  input  [27:0] io_phyTag,
  input         io_index,
  input  [27:0] io_mshr_tag,
  input         io_mshr_index,
  output        io_bankHitWay_valid,
  output        io_bankHitWay_bits,
  output        io_addrHitInRefillBuffer
);
  wire  _T = io_tagValid_0_tag == io_phyTag; // @[MissComparator.scala 24:66]
  wire  bankHitVec_0 = io_tagValid_0_valid & _T; // @[MissComparator.scala 24:44]
  wire  _T_2 = io_tagValid_1_tag == io_phyTag; // @[MissComparator.scala 24:66]
  wire  bankHitVec_1 = io_tagValid_1_valid & _T_2; // @[MissComparator.scala 24:44]
  wire  _T_17 = io_phyTag == io_mshr_tag; // @[MissComparator.scala 35:15]
  wire  _T_18 = io_index == io_mshr_index; // @[MissComparator.scala 36:16]
  assign io_bankHitWay_valid = bankHitVec_0 | bankHitVec_1; // @[MissComparator.scala 27:23]
  assign io_bankHitWay_bits = bankHitVec_0 ? 1'h0 : 1'h1; // @[MissComparator.scala 28:23]
  assign io_addrHitInRefillBuffer = _T_17 & _T_18; // @[MissComparator.scala 34:28]
endmodule
module AXIARPort(
  input         clock,
  input         reset,
  output        io_addrReq_ready,
  input         io_addrReq_valid,
  input  [31:0] io_addrReq_bits,
  input         io_ar_ready,
  output        io_ar_valid,
  output [31:0] io_ar_bits_addr
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg  arState; // @[AXIARPort.scala 27:40]
  wire  _T = ~arState; // @[AXIARPort.scala 40:31]
  wire  _T_2 = io_ar_ready & io_ar_valid; // @[Decoupled.scala 40:37]
  wire  _T_6 = io_addrReq_ready & io_addrReq_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_0 = _T_6 | arState; // @[AXIARPort.scala 46:29]
  assign io_addrReq_ready = ~arState; // @[AXIARPort.scala 40:20]
  assign io_ar_valid = arState; // @[AXIARPort.scala 42:20]
  assign io_ar_bits_addr = io_addrReq_bits; // @[AXIARPort.scala 31:20]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  arState = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      arState <= 1'h0;
    end else if (_T) begin
      arState <= _GEN_0;
    end else if (arState) begin
      if (_T_2) begin
        arState <= 1'h0;
      end
    end
  end
endmodule
module AXIRPort(
  output        io_r_ready,
  input         io_r_valid,
  input  [31:0] io_r_bits_data,
  input         io_r_bits_last,
  input         io_transferData_ready,
  output        io_transferData_valid,
  output [31:0] io_transferData_bits,
  output        io_finishTransfer
);
  assign io_r_ready = io_transferData_ready; // @[AXIRPort.scala 29:25]
  assign io_transferData_valid = io_r_valid; // @[AXIRPort.scala 28:25]
  assign io_transferData_bits = io_r_bits_data; // @[AXIRPort.scala 27:25]
  assign io_finishTransfer = io_r_bits_last; // @[AXIRPort.scala 26:25]
endmodule
module ReFillBuffer(
  input         clock,
  input         reset,
  input         io_bankIndex_valid,
  input         io_bankIndex_bits,
  input         io_inputData_valid,
  input  [31:0] io_inputData_bits,
  input         io_finish,
  output        io_queryResult_valid,
  output [31:0] io_queryResult_bits,
  output [31:0] io_allData_0,
  output [31:0] io_allData_1
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg  state; // @[ReFillBuffer.scala 37:42]
  reg [31:0] buffer_0; // @[ReFillBuffer.scala 39:19]
  reg [31:0] buffer_1; // @[ReFillBuffer.scala 39:19]
  reg  bufferValidMask_0; // @[ReFillBuffer.scala 42:32]
  reg  bufferValidMask_1; // @[ReFillBuffer.scala 42:32]
  reg  writePtr; // @[ReFillBuffer.scala 44:21]
  wire  _T_1 = io_bankIndex_bits == writePtr; // @[ReFillBuffer.scala 46:73]
  wire  hitInInputData = io_inputData_valid & _T_1; // @[ReFillBuffer.scala 46:52]
  wire  _GEN_1 = io_bankIndex_bits ? bufferValidMask_1 : bufferValidMask_0; // @[ReFillBuffer.scala 48:30]
  wire [31:0] _GEN_3 = io_bankIndex_bits ? buffer_1 : buffer_0; // @[ReFillBuffer.scala 54:29]
  wire  _T_5 = ~state; // @[Conditional.scala 37:30]
  wire  _GEN_7 = io_bankIndex_valid | state; // @[ReFillBuffer.scala 64:32]
  wire  _T_10 = writePtr + 1'h1; // @[ReFillBuffer.scala 73:47]
  wire  _GEN_34 = ~writePtr; // @[ReFillBuffer.scala 74:35]
  wire  _GEN_10 = _GEN_34 | bufferValidMask_0; // @[ReFillBuffer.scala 74:35]
  wire  _GEN_11 = writePtr | bufferValidMask_1; // @[ReFillBuffer.scala 74:35]
  assign io_queryResult_valid = hitInInputData | _GEN_1; // @[ReFillBuffer.scala 48:24]
  assign io_queryResult_bits = hitInInputData ? io_inputData_bits : _GEN_3; // @[ReFillBuffer.scala 54:23]
  assign io_allData_0 = buffer_0; // @[ReFillBuffer.scala 60:14]
  assign io_allData_1 = buffer_1; // @[ReFillBuffer.scala 60:14]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  state = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  buffer_0 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  buffer_1 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  bufferValidMask_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  bufferValidMask_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  writePtr = _RAND_5[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      state <= 1'h0;
    end else if (_T_5) begin
      state <= _GEN_7;
    end else if (state) begin
      if (io_finish) begin
        state <= 1'h0;
      end
    end
    if (_T_5) begin
      if (io_bankIndex_valid) begin
        buffer_0 <= 32'h0;
      end
    end else if (state) begin
      if (io_inputData_valid) begin
        if (~writePtr) begin
          buffer_0 <= io_inputData_bits;
        end
      end
    end
    if (_T_5) begin
      if (io_bankIndex_valid) begin
        buffer_1 <= 32'h0;
      end
    end else if (state) begin
      if (io_inputData_valid) begin
        if (writePtr) begin
          buffer_1 <= io_inputData_bits;
        end
      end
    end
    if (reset) begin
      bufferValidMask_0 <= 1'h0;
    end else if (_T_5) begin
      if (io_bankIndex_valid) begin
        bufferValidMask_0 <= 1'h0;
      end
    end else if (state) begin
      if (io_finish) begin
        bufferValidMask_0 <= 1'h0;
      end else if (io_inputData_valid) begin
        bufferValidMask_0 <= _GEN_10;
      end
    end
    if (reset) begin
      bufferValidMask_1 <= 1'h0;
    end else if (_T_5) begin
      if (io_bankIndex_valid) begin
        bufferValidMask_1 <= 1'h0;
      end
    end else if (state) begin
      if (io_finish) begin
        bufferValidMask_1 <= 1'h0;
      end else if (io_inputData_valid) begin
        bufferValidMask_1 <= _GEN_11;
      end
    end
    if (_T_5) begin
      if (io_bankIndex_valid) begin
        writePtr <= io_bankIndex_bits;
      end
    end else if (state) begin
      if (io_inputData_valid) begin
        writePtr <= _T_10;
      end
    end
  end
endmodule
module ReadHolder(
  input         clock,
  input         reset,
  input         io_input_valid,
  input  [31:0] io_input_bits,
  output        io_output_valid,
  output [31:0] io_output_bits
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] instruction; // @[ReadHolder.scala 16:28]
  reg  valid; // @[ReadHolder.scala 17:28]
  assign io_output_valid = valid; // @[ReadHolder.scala 22:19]
  assign io_output_bits = instruction; // @[ReadHolder.scala 20:19]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  instruction = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  valid = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      instruction <= 32'hdeadbeef;
    end else begin
      instruction <= io_input_bits;
    end
    if (reset) begin
      valid <= 1'h0;
    end else begin
      valid <= io_input_valid;
    end
  end
endmodule
module QueryTop(
  input         clock,
  input         reset,
  output        io_ready,
  input  [27:0] io_fetchQuery_tagValid_0_tag,
  input         io_fetchQuery_tagValid_0_valid,
  input  [27:0] io_fetchQuery_tagValid_1_tag,
  input         io_fetchQuery_tagValid_1_valid,
  input  [27:0] io_fetchQuery_phyTag,
  input         io_fetchQuery_index,
  input         io_fetchQuery_bankIndex,
  input         io_fetchQuery_valid,
  input  [31:0] io_bankData_0,
  input  [31:0] io_bankData_1,
  input         io_data_ready,
  output        io_data_valid,
  output [31:0] io_data_bits,
  output        io_write_valid,
  output        io_write_bits_waySelection,
  output        io_write_bits_indexSelection,
  output [27:0] io_write_bits_tagValid_tag,
  output [31:0] io_instructionWriteBack_0,
  output [31:0] io_instructionWriteBack_1,
  input         io_axi_ar_ready,
  output        io_axi_ar_valid,
  output [31:0] io_axi_ar_bits_addr,
  output        io_axi_r_ready,
  input         io_axi_r_valid,
  input  [31:0] io_axi_r_bits_data,
  input         io_axi_r_bits_last
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  mshr_clock; // @[QueryTop.scala 35:28]
  wire  mshr_io_recordMiss_valid; // @[QueryTop.scala 35:28]
  wire [27:0] mshr_io_recordMiss_bits_addr_tag; // @[QueryTop.scala 35:28]
  wire  mshr_io_recordMiss_bits_addr_index; // @[QueryTop.scala 35:28]
  wire  mshr_io_recordMiss_bits_addr_bankIndex; // @[QueryTop.scala 35:28]
  wire [27:0] mshr_io_extractMiss_addr_tag; // @[QueryTop.scala 35:28]
  wire  mshr_io_extractMiss_addr_index; // @[QueryTop.scala 35:28]
  wire  mshr_io_extractMiss_addr_bankIndex; // @[QueryTop.scala 35:28]
  wire [27:0] comparator_io_tagValid_0_tag; // @[QueryTop.scala 36:28]
  wire  comparator_io_tagValid_0_valid; // @[QueryTop.scala 36:28]
  wire [27:0] comparator_io_tagValid_1_tag; // @[QueryTop.scala 36:28]
  wire  comparator_io_tagValid_1_valid; // @[QueryTop.scala 36:28]
  wire [27:0] comparator_io_phyTag; // @[QueryTop.scala 36:28]
  wire  comparator_io_index; // @[QueryTop.scala 36:28]
  wire [27:0] comparator_io_mshr_tag; // @[QueryTop.scala 36:28]
  wire  comparator_io_mshr_index; // @[QueryTop.scala 36:28]
  wire  comparator_io_bankHitWay_valid; // @[QueryTop.scala 36:28]
  wire  comparator_io_bankHitWay_bits; // @[QueryTop.scala 36:28]
  wire  comparator_io_addrHitInRefillBuffer; // @[QueryTop.scala 36:28]
  wire  axiAR_clock; // @[QueryTop.scala 37:28]
  wire  axiAR_reset; // @[QueryTop.scala 37:28]
  wire  axiAR_io_addrReq_ready; // @[QueryTop.scala 37:28]
  wire  axiAR_io_addrReq_valid; // @[QueryTop.scala 37:28]
  wire [31:0] axiAR_io_addrReq_bits; // @[QueryTop.scala 37:28]
  wire  axiAR_io_ar_ready; // @[QueryTop.scala 37:28]
  wire  axiAR_io_ar_valid; // @[QueryTop.scala 37:28]
  wire [31:0] axiAR_io_ar_bits_addr; // @[QueryTop.scala 37:28]
  wire  axiR_io_r_ready; // @[QueryTop.scala 38:28]
  wire  axiR_io_r_valid; // @[QueryTop.scala 38:28]
  wire [31:0] axiR_io_r_bits_data; // @[QueryTop.scala 38:28]
  wire  axiR_io_r_bits_last; // @[QueryTop.scala 38:28]
  wire  axiR_io_transferData_ready; // @[QueryTop.scala 38:28]
  wire  axiR_io_transferData_valid; // @[QueryTop.scala 38:28]
  wire [31:0] axiR_io_transferData_bits; // @[QueryTop.scala 38:28]
  wire  axiR_io_finishTransfer; // @[QueryTop.scala 38:28]
  wire  refillBuffer_clock; // @[QueryTop.scala 39:28]
  wire  refillBuffer_reset; // @[QueryTop.scala 39:28]
  wire  refillBuffer_io_bankIndex_valid; // @[QueryTop.scala 39:28]
  wire  refillBuffer_io_bankIndex_bits; // @[QueryTop.scala 39:28]
  wire  refillBuffer_io_inputData_valid; // @[QueryTop.scala 39:28]
  wire [31:0] refillBuffer_io_inputData_bits; // @[QueryTop.scala 39:28]
  wire  refillBuffer_io_finish; // @[QueryTop.scala 39:28]
  wire  refillBuffer_io_queryResult_valid; // @[QueryTop.scala 39:28]
  wire [31:0] refillBuffer_io_queryResult_bits; // @[QueryTop.scala 39:28]
  wire [31:0] refillBuffer_io_allData_0; // @[QueryTop.scala 39:28]
  wire [31:0] refillBuffer_io_allData_1; // @[QueryTop.scala 39:28]
  wire  readHolder_clock; // @[QueryTop.scala 43:26]
  wire  readHolder_reset; // @[QueryTop.scala 43:26]
  wire  readHolder_io_input_valid; // @[QueryTop.scala 43:26]
  wire [31:0] readHolder_io_input_bits; // @[QueryTop.scala 43:26]
  wire  readHolder_io_output_valid; // @[QueryTop.scala 43:26]
  wire [31:0] readHolder_io_output_bits; // @[QueryTop.scala 43:26]
  reg  _T_1_0; // @[TrueLRUNM.scala 10:24]
  reg  _T_1_1; // @[TrueLRUNM.scala 10:24]
  wire  passThrough = ~io_fetchQuery_valid; // @[QueryTop.scala 46:33]
  wire  hitInRefillBuffer = comparator_io_addrHitInRefillBuffer & refillBuffer_io_queryResult_valid; // @[QueryTop.scala 52:75]
  reg [1:0] qState; // @[QueryTop.scala 67:54]
  wire  _T_20 = qState != 2'h2; // @[QueryTop.scala 85:58]
  wire  hitInBank = comparator_io_bankHitWay_valid & _T_20; // @[QueryTop.scala 85:48]
  wire  _T_5 = hitInBank | hitInRefillBuffer; // @[QueryTop.scala 58:40]
  wire  hitInReadHolder = readHolder_io_output_valid;
  wire  queryHit = _T_5 | hitInReadHolder; // @[QueryTop.scala 58:61]
  wire  _T_7 = ~passThrough; // @[QueryTop.scala 64:43]
  wire  validData = queryHit & _T_7; // @[QueryTop.scala 64:40]
  wire  _T_9 = 2'h0 == qState; // @[Conditional.scala 37:30]
  wire  _T_13 = ~queryHit; // @[QueryTop.scala 83:15]
  wire  _T_15 = _T_13 & _T_7; // @[QueryTop.scala 83:25]
  wire  _T_16 = qState == 2'h0; // @[QueryTop.scala 83:52]
  wire  _T_17 = qState == 2'h2; // @[QueryTop.scala 83:72]
  wire  _T_18 = _T_16 | _T_17; // @[QueryTop.scala 83:62]
  wire  newMiss = _T_15 & _T_18; // @[QueryTop.scala 83:41]
  wire  _T_10 = 2'h1 == qState; // @[Conditional.scala 37:30]
  wire  _T_11 = 2'h2 == qState; // @[Conditional.scala 37:30]
  wire  _T_22 = io_data_ready & io_data_valid; // @[Decoupled.scala 40:37]
  wire [31:0] _GEN_6 = comparator_io_bankHitWay_bits ? io_bankData_1 : io_bankData_0; // @[Mux.scala 98:16]
  wire [31:0] _T_24 = hitInRefillBuffer ? refillBuffer_io_queryResult_bits : _GEN_6; // @[Mux.scala 98:16]
  wire  _T_28 = ~io_data_ready; // @[QueryTop.scala 123:45]
  wire  _T_30 = ~readHolder_io_output_valid; // @[QueryTop.scala 128:42]
  wire  _T_31 = comparator_io_bankHitWay_valid & _T_30; // @[QueryTop.scala 128:39]
  wire [31:0] _T_32 = _T_31 ? _GEN_6 : readHolder_io_output_bits; // @[Mux.scala 98:16]
  wire [31:0] _T_36 = {io_fetchQuery_phyTag,io_fetchQuery_index,io_fetchQuery_bankIndex,2'h0}; // @[Cat.scala 29:58]
  wire [31:0] _T_39 = {mshr_io_extractMiss_addr_tag,mshr_io_extractMiss_addr_index,mshr_io_extractMiss_addr_bankIndex,2'h0}; // @[Cat.scala 29:58]
  wire  _T_1_io_fetchQuery_index = comparator_io_bankHitWay_bits; // @[TrueLRUNM.scala 14:20 TrueLRUNM.scala 14:20]
  MSHR mshr ( // @[QueryTop.scala 35:28]
    .clock(mshr_clock),
    .io_recordMiss_valid(mshr_io_recordMiss_valid),
    .io_recordMiss_bits_addr_tag(mshr_io_recordMiss_bits_addr_tag),
    .io_recordMiss_bits_addr_index(mshr_io_recordMiss_bits_addr_index),
    .io_recordMiss_bits_addr_bankIndex(mshr_io_recordMiss_bits_addr_bankIndex),
    .io_extractMiss_addr_tag(mshr_io_extractMiss_addr_tag),
    .io_extractMiss_addr_index(mshr_io_extractMiss_addr_index),
    .io_extractMiss_addr_bankIndex(mshr_io_extractMiss_addr_bankIndex)
  );
  MissComparator comparator ( // @[QueryTop.scala 36:28]
    .io_tagValid_0_tag(comparator_io_tagValid_0_tag),
    .io_tagValid_0_valid(comparator_io_tagValid_0_valid),
    .io_tagValid_1_tag(comparator_io_tagValid_1_tag),
    .io_tagValid_1_valid(comparator_io_tagValid_1_valid),
    .io_phyTag(comparator_io_phyTag),
    .io_index(comparator_io_index),
    .io_mshr_tag(comparator_io_mshr_tag),
    .io_mshr_index(comparator_io_mshr_index),
    .io_bankHitWay_valid(comparator_io_bankHitWay_valid),
    .io_bankHitWay_bits(comparator_io_bankHitWay_bits),
    .io_addrHitInRefillBuffer(comparator_io_addrHitInRefillBuffer)
  );
  AXIARPort axiAR ( // @[QueryTop.scala 37:28]
    .clock(axiAR_clock),
    .reset(axiAR_reset),
    .io_addrReq_ready(axiAR_io_addrReq_ready),
    .io_addrReq_valid(axiAR_io_addrReq_valid),
    .io_addrReq_bits(axiAR_io_addrReq_bits),
    .io_ar_ready(axiAR_io_ar_ready),
    .io_ar_valid(axiAR_io_ar_valid),
    .io_ar_bits_addr(axiAR_io_ar_bits_addr)
  );
  AXIRPort axiR ( // @[QueryTop.scala 38:28]
    .io_r_ready(axiR_io_r_ready),
    .io_r_valid(axiR_io_r_valid),
    .io_r_bits_data(axiR_io_r_bits_data),
    .io_r_bits_last(axiR_io_r_bits_last),
    .io_transferData_ready(axiR_io_transferData_ready),
    .io_transferData_valid(axiR_io_transferData_valid),
    .io_transferData_bits(axiR_io_transferData_bits),
    .io_finishTransfer(axiR_io_finishTransfer)
  );
  ReFillBuffer refillBuffer ( // @[QueryTop.scala 39:28]
    .clock(refillBuffer_clock),
    .reset(refillBuffer_reset),
    .io_bankIndex_valid(refillBuffer_io_bankIndex_valid),
    .io_bankIndex_bits(refillBuffer_io_bankIndex_bits),
    .io_inputData_valid(refillBuffer_io_inputData_valid),
    .io_inputData_bits(refillBuffer_io_inputData_bits),
    .io_finish(refillBuffer_io_finish),
    .io_queryResult_valid(refillBuffer_io_queryResult_valid),
    .io_queryResult_bits(refillBuffer_io_queryResult_bits),
    .io_allData_0(refillBuffer_io_allData_0),
    .io_allData_1(refillBuffer_io_allData_1)
  );
  ReadHolder readHolder ( // @[QueryTop.scala 43:26]
    .clock(readHolder_clock),
    .reset(readHolder_reset),
    .io_input_valid(readHolder_io_input_valid),
    .io_input_bits(readHolder_io_input_bits),
    .io_output_valid(readHolder_io_output_valid),
    .io_output_bits(readHolder_io_output_bits)
  );
  assign io_ready = _T_22 | passThrough; // @[QueryTop.scala 89:17]
  assign io_data_valid = queryHit & _T_7; // @[QueryTop.scala 90:17]
  assign io_data_bits = readHolder_io_output_valid ? readHolder_io_output_bits : _T_24; // @[QueryTop.scala 91:16]
  assign io_write_valid = qState == 2'h2; // @[QueryTop.scala 101:32]
  assign io_write_bits_waySelection = mshr_io_extractMiss_addr_index ? _T_1_1 : _T_1_0; // @[QueryTop.scala 102:32]
  assign io_write_bits_indexSelection = mshr_io_extractMiss_addr_index; // @[QueryTop.scala 103:32]
  assign io_write_bits_tagValid_tag = mshr_io_extractMiss_addr_tag; // @[QueryTop.scala 104:32]
  assign io_instructionWriteBack_0 = refillBuffer_io_allData_0; // @[QueryTop.scala 106:32]
  assign io_instructionWriteBack_1 = refillBuffer_io_allData_1; // @[QueryTop.scala 106:32]
  assign io_axi_ar_valid = axiAR_io_ar_valid; // @[QueryTop.scala 109:13]
  assign io_axi_ar_bits_addr = axiAR_io_ar_bits_addr; // @[QueryTop.scala 109:13]
  assign io_axi_r_ready = axiR_io_r_ready; // @[QueryTop.scala 110:13]
  assign mshr_clock = clock;
  assign mshr_io_recordMiss_valid = _T_15 & _T_18; // @[QueryTop.scala 149:43]
  assign mshr_io_recordMiss_bits_addr_tag = io_fetchQuery_phyTag; // @[QueryTop.scala 150:43]
  assign mshr_io_recordMiss_bits_addr_index = io_fetchQuery_index; // @[QueryTop.scala 151:43]
  assign mshr_io_recordMiss_bits_addr_bankIndex = io_fetchQuery_bankIndex; // @[QueryTop.scala 152:43]
  assign comparator_io_tagValid_0_tag = io_fetchQuery_tagValid_0_tag; // @[QueryTop.scala 112:26]
  assign comparator_io_tagValid_0_valid = io_fetchQuery_tagValid_0_valid; // @[QueryTop.scala 112:26]
  assign comparator_io_tagValid_1_tag = io_fetchQuery_tagValid_1_tag; // @[QueryTop.scala 112:26]
  assign comparator_io_tagValid_1_valid = io_fetchQuery_tagValid_1_valid; // @[QueryTop.scala 112:26]
  assign comparator_io_phyTag = io_fetchQuery_phyTag; // @[QueryTop.scala 113:26]
  assign comparator_io_index = io_fetchQuery_index; // @[QueryTop.scala 114:26]
  assign comparator_io_mshr_tag = mshr_io_extractMiss_addr_tag; // @[QueryTop.scala 115:26]
  assign comparator_io_mshr_index = mshr_io_extractMiss_addr_index; // @[QueryTop.scala 115:26]
  assign axiAR_clock = clock;
  assign axiAR_reset = reset;
  assign axiAR_io_addrReq_valid = _T_15 & _T_18; // @[QueryTop.scala 143:26]
  assign axiAR_io_addrReq_bits = newMiss ? _T_36 : _T_39; // @[QueryTop.scala 132:25]
  assign axiAR_io_ar_ready = io_axi_ar_ready; // @[QueryTop.scala 109:13]
  assign axiR_io_r_valid = io_axi_r_valid; // @[QueryTop.scala 110:13]
  assign axiR_io_r_bits_data = io_axi_r_bits_data; // @[QueryTop.scala 110:13]
  assign axiR_io_r_bits_last = io_axi_r_bits_last; // @[QueryTop.scala 110:13]
  assign axiR_io_transferData_ready = qState != 2'h2; // @[QueryTop.scala 146:30]
  assign refillBuffer_clock = clock;
  assign refillBuffer_reset = reset;
  assign refillBuffer_io_bankIndex_valid = _T_15 & _T_18; // @[QueryTop.scala 118:35]
  assign refillBuffer_io_bankIndex_bits = io_fetchQuery_bankIndex; // @[QueryTop.scala 119:35]
  assign refillBuffer_io_inputData_valid = axiR_io_transferData_valid; // @[QueryTop.scala 120:35]
  assign refillBuffer_io_inputData_bits = axiR_io_transferData_bits; // @[QueryTop.scala 120:35]
  assign refillBuffer_io_finish = axiR_io_finishTransfer; // @[QueryTop.scala 121:35]
  assign readHolder_clock = clock;
  assign readHolder_reset = reset;
  assign readHolder_io_input_valid = validData & _T_28; // @[QueryTop.scala 123:29]
  assign readHolder_io_input_bits = hitInRefillBuffer ? refillBuffer_io_queryResult_bits : _T_32; // @[QueryTop.scala 124:28]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_1_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  _T_1_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  qState = _RAND_2[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_1_0 <= 1'h0;
    end else if (hitInBank) begin
      if (~io_fetchQuery_index) begin
        _T_1_0 <= _T_1_io_fetchQuery_index;
      end
    end
    if (reset) begin
      _T_1_1 <= 1'h0;
    end else if (hitInBank) begin
      if (io_fetchQuery_index) begin
        _T_1_1 <= _T_1_io_fetchQuery_index;
      end
    end
    if (reset) begin
      qState <= 2'h0;
    end else if (_T_9) begin
      if (newMiss) begin
        qState <= 2'h1;
      end
    end else if (_T_10) begin
      if (axiR_io_finishTransfer) begin
        qState <= 2'h2;
      end
    end else if (_T_11) begin
      if (newMiss) begin
        qState <= 2'h1;
      end else begin
        qState <= 2'h0;
      end
    end
  end
endmodule
module SinglePortBRam(
  input         clock,
  input         io_addr,
  input         io_writeVector,
  input  [31:0] io_inData,
  output [31:0] io_outData
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] _T [0:1]; // @[SinglePortBRam.scala 59:29]
  wire [31:0] _T__T_3_data; // @[SinglePortBRam.scala 59:29]
  wire  _T__T_3_addr; // @[SinglePortBRam.scala 59:29]
  wire [31:0] _T__T_2_data; // @[SinglePortBRam.scala 59:29]
  wire  _T__T_2_addr; // @[SinglePortBRam.scala 59:29]
  wire  _T__T_2_mask; // @[SinglePortBRam.scala 59:29]
  wire  _T__T_2_en; // @[SinglePortBRam.scala 59:29]
  reg  _T__T_3_en_pipe_0;
  reg  _T__T_3_addr_pipe_0;
  assign _T__T_3_addr = _T__T_3_addr_pipe_0;
  assign _T__T_3_data = _T[_T__T_3_addr]; // @[SinglePortBRam.scala 59:29]
  assign _T__T_2_data = io_inData;
  assign _T__T_2_addr = io_addr;
  assign _T__T_2_mask = 1'h1;
  assign _T__T_2_en = io_writeVector;
  assign io_outData = _T__T_3_data; // @[SinglePortBRam.scala 65:22]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T__T_3_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  _T__T_3_addr_pipe_0 = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(_T__T_2_en & _T__T_2_mask) begin
      _T[_T__T_2_addr] <= _T__T_2_data; // @[SinglePortBRam.scala 59:29]
    end
    if (io_writeVector) begin
      _T__T_3_en_pipe_0 <= 1'h0;
    end else begin
      _T__T_3_en_pipe_0 <= 1'h1;
    end
    if (io_writeVector ? 1'h0 : 1'h1) begin
      _T__T_3_addr_pipe_0 <= io_addr;
    end
  end
endmodule
module InstBanks(
  input         clock,
  input         io_way_bank_0_0_addr,
  input         io_way_bank_0_0_writeEnable,
  input  [31:0] io_way_bank_0_0_writeData,
  output [31:0] io_way_bank_0_0_readData,
  input         io_way_bank_0_1_addr,
  input         io_way_bank_0_1_writeEnable,
  input  [31:0] io_way_bank_0_1_writeData,
  output [31:0] io_way_bank_0_1_readData,
  input         io_way_bank_1_0_addr,
  input         io_way_bank_1_0_writeEnable,
  input  [31:0] io_way_bank_1_0_writeData,
  output [31:0] io_way_bank_1_0_readData,
  input         io_way_bank_1_1_addr,
  input         io_way_bank_1_1_writeEnable,
  input  [31:0] io_way_bank_1_1_writeData,
  output [31:0] io_way_bank_1_1_readData
);
  wire  instruction_bank_way_0_bankoffset_0_clock; // @[InstBanks.scala 32:22]
  wire  instruction_bank_way_0_bankoffset_0_io_addr; // @[InstBanks.scala 32:22]
  wire  instruction_bank_way_0_bankoffset_0_io_writeVector; // @[InstBanks.scala 32:22]
  wire [31:0] instruction_bank_way_0_bankoffset_0_io_inData; // @[InstBanks.scala 32:22]
  wire [31:0] instruction_bank_way_0_bankoffset_0_io_outData; // @[InstBanks.scala 32:22]
  wire  instruction_bank_way_0_bankoffset_1_clock; // @[InstBanks.scala 32:22]
  wire  instruction_bank_way_0_bankoffset_1_io_addr; // @[InstBanks.scala 32:22]
  wire  instruction_bank_way_0_bankoffset_1_io_writeVector; // @[InstBanks.scala 32:22]
  wire [31:0] instruction_bank_way_0_bankoffset_1_io_inData; // @[InstBanks.scala 32:22]
  wire [31:0] instruction_bank_way_0_bankoffset_1_io_outData; // @[InstBanks.scala 32:22]
  wire  instruction_bank_way_1_bankoffset_0_clock; // @[InstBanks.scala 32:22]
  wire  instruction_bank_way_1_bankoffset_0_io_addr; // @[InstBanks.scala 32:22]
  wire  instruction_bank_way_1_bankoffset_0_io_writeVector; // @[InstBanks.scala 32:22]
  wire [31:0] instruction_bank_way_1_bankoffset_0_io_inData; // @[InstBanks.scala 32:22]
  wire [31:0] instruction_bank_way_1_bankoffset_0_io_outData; // @[InstBanks.scala 32:22]
  wire  instruction_bank_way_1_bankoffset_1_clock; // @[InstBanks.scala 32:22]
  wire  instruction_bank_way_1_bankoffset_1_io_addr; // @[InstBanks.scala 32:22]
  wire  instruction_bank_way_1_bankoffset_1_io_writeVector; // @[InstBanks.scala 32:22]
  wire [31:0] instruction_bank_way_1_bankoffset_1_io_inData; // @[InstBanks.scala 32:22]
  wire [31:0] instruction_bank_way_1_bankoffset_1_io_outData; // @[InstBanks.scala 32:22]
  SinglePortBRam instruction_bank_way_0_bankoffset_0 ( // @[InstBanks.scala 32:22]
    .clock(instruction_bank_way_0_bankoffset_0_clock),
    .io_addr(instruction_bank_way_0_bankoffset_0_io_addr),
    .io_writeVector(instruction_bank_way_0_bankoffset_0_io_writeVector),
    .io_inData(instruction_bank_way_0_bankoffset_0_io_inData),
    .io_outData(instruction_bank_way_0_bankoffset_0_io_outData)
  );
  SinglePortBRam instruction_bank_way_0_bankoffset_1 ( // @[InstBanks.scala 32:22]
    .clock(instruction_bank_way_0_bankoffset_1_clock),
    .io_addr(instruction_bank_way_0_bankoffset_1_io_addr),
    .io_writeVector(instruction_bank_way_0_bankoffset_1_io_writeVector),
    .io_inData(instruction_bank_way_0_bankoffset_1_io_inData),
    .io_outData(instruction_bank_way_0_bankoffset_1_io_outData)
  );
  SinglePortBRam instruction_bank_way_1_bankoffset_0 ( // @[InstBanks.scala 32:22]
    .clock(instruction_bank_way_1_bankoffset_0_clock),
    .io_addr(instruction_bank_way_1_bankoffset_0_io_addr),
    .io_writeVector(instruction_bank_way_1_bankoffset_0_io_writeVector),
    .io_inData(instruction_bank_way_1_bankoffset_0_io_inData),
    .io_outData(instruction_bank_way_1_bankoffset_0_io_outData)
  );
  SinglePortBRam instruction_bank_way_1_bankoffset_1 ( // @[InstBanks.scala 32:22]
    .clock(instruction_bank_way_1_bankoffset_1_clock),
    .io_addr(instruction_bank_way_1_bankoffset_1_io_addr),
    .io_writeVector(instruction_bank_way_1_bankoffset_1_io_writeVector),
    .io_inData(instruction_bank_way_1_bankoffset_1_io_inData),
    .io_outData(instruction_bank_way_1_bankoffset_1_io_outData)
  );
  assign io_way_bank_0_0_readData = instruction_bank_way_0_bankoffset_0_io_outData; // @[InstBanks.scala 39:32]
  assign io_way_bank_0_1_readData = instruction_bank_way_0_bankoffset_1_io_outData; // @[InstBanks.scala 39:32]
  assign io_way_bank_1_0_readData = instruction_bank_way_1_bankoffset_0_io_outData; // @[InstBanks.scala 39:32]
  assign io_way_bank_1_1_readData = instruction_bank_way_1_bankoffset_1_io_outData; // @[InstBanks.scala 39:32]
  assign instruction_bank_way_0_bankoffset_0_clock = clock;
  assign instruction_bank_way_0_bankoffset_0_io_addr = io_way_bank_0_0_addr; // @[InstBanks.scala 36:18]
  assign instruction_bank_way_0_bankoffset_0_io_writeVector = io_way_bank_0_0_writeEnable; // @[InstBanks.scala 38:25]
  assign instruction_bank_way_0_bankoffset_0_io_inData = io_way_bank_0_0_writeData; // @[InstBanks.scala 37:20]
  assign instruction_bank_way_0_bankoffset_1_clock = clock;
  assign instruction_bank_way_0_bankoffset_1_io_addr = io_way_bank_0_1_addr; // @[InstBanks.scala 36:18]
  assign instruction_bank_way_0_bankoffset_1_io_writeVector = io_way_bank_0_1_writeEnable; // @[InstBanks.scala 38:25]
  assign instruction_bank_way_0_bankoffset_1_io_inData = io_way_bank_0_1_writeData; // @[InstBanks.scala 37:20]
  assign instruction_bank_way_1_bankoffset_0_clock = clock;
  assign instruction_bank_way_1_bankoffset_0_io_addr = io_way_bank_1_0_addr; // @[InstBanks.scala 36:18]
  assign instruction_bank_way_1_bankoffset_0_io_writeVector = io_way_bank_1_0_writeEnable; // @[InstBanks.scala 38:25]
  assign instruction_bank_way_1_bankoffset_0_io_inData = io_way_bank_1_0_writeData; // @[InstBanks.scala 37:20]
  assign instruction_bank_way_1_bankoffset_1_clock = clock;
  assign instruction_bank_way_1_bankoffset_1_io_addr = io_way_bank_1_1_addr; // @[InstBanks.scala 36:18]
  assign instruction_bank_way_1_bankoffset_1_io_writeVector = io_way_bank_1_1_writeEnable; // @[InstBanks.scala 38:25]
  assign instruction_bank_way_1_bankoffset_1_io_inData = io_way_bank_1_1_writeData; // @[InstBanks.scala 37:20]
endmodule
module ICacheController(
  input   io_stage2Free,
  input   io_writeBack,
  output  io_reqReady,
  output  io_writeEnable
);
  wire  _T = ~io_writeBack; // @[ICacheController.scala 36:38]
  assign io_reqReady = io_stage2Free & _T; // @[ICacheController.scala 36:18]
  assign io_writeEnable = io_writeBack; // @[ICacheController.scala 38:18]
endmodule
module InstrCache(
  input         clock,
  input         reset,
  output        io_addr_ready,
  input         io_addr_valid,
  input  [31:0] io_addr_bits,
  input         io_data_ready,
  output        io_data_valid,
  output [31:0] io_data_bits,
  input         io_axi_ar_ready,
  output        io_axi_ar_valid,
  output [31:0] io_axi_ar_bits_addr,
  output        io_axi_r_ready,
  input         io_axi_r_valid,
  input  [31:0] io_axi_r_bits_data,
  input         io_axi_r_bits_last
);
  wire  fetch_clock; // @[InstrCache.scala 31:27]
  wire  fetch_reset; // @[InstrCache.scala 31:27]
  wire [31:0] fetch_io_addr; // @[InstrCache.scala 31:27]
  wire  fetch_io_write_valid; // @[InstrCache.scala 31:27]
  wire  fetch_io_write_bits_waySelection; // @[InstrCache.scala 31:27]
  wire  fetch_io_write_bits_indexSelection; // @[InstrCache.scala 31:27]
  wire [27:0] fetch_io_write_bits_tagValid_tag; // @[InstrCache.scala 31:27]
  wire  fetch_io_index; // @[InstrCache.scala 31:27]
  wire [27:0] fetch_io_tagValid_0_tag; // @[InstrCache.scala 31:27]
  wire  fetch_io_tagValid_0_valid; // @[InstrCache.scala 31:27]
  wire [27:0] fetch_io_tagValid_1_tag; // @[InstrCache.scala 31:27]
  wire  fetch_io_tagValid_1_valid; // @[InstrCache.scala 31:27]
  wire [27:0] fetch_io_phyTag; // @[InstrCache.scala 31:27]
  wire  fetch_io_bankIndex; // @[InstrCache.scala 31:27]
  wire  fetch_query_clock; // @[InstrCache.scala 32:27]
  wire  fetch_query_reset; // @[InstrCache.scala 32:27]
  wire  fetch_query_io_stall; // @[InstrCache.scala 32:27]
  wire [27:0] fetch_query_io_in_tagValid_0_tag; // @[InstrCache.scala 32:27]
  wire  fetch_query_io_in_tagValid_0_valid; // @[InstrCache.scala 32:27]
  wire [27:0] fetch_query_io_in_tagValid_1_tag; // @[InstrCache.scala 32:27]
  wire  fetch_query_io_in_tagValid_1_valid; // @[InstrCache.scala 32:27]
  wire [27:0] fetch_query_io_in_phyTag; // @[InstrCache.scala 32:27]
  wire  fetch_query_io_in_index; // @[InstrCache.scala 32:27]
  wire  fetch_query_io_in_bankIndex; // @[InstrCache.scala 32:27]
  wire  fetch_query_io_in_valid; // @[InstrCache.scala 32:27]
  wire [27:0] fetch_query_io_out_tagValid_0_tag; // @[InstrCache.scala 32:27]
  wire  fetch_query_io_out_tagValid_0_valid; // @[InstrCache.scala 32:27]
  wire [27:0] fetch_query_io_out_tagValid_1_tag; // @[InstrCache.scala 32:27]
  wire  fetch_query_io_out_tagValid_1_valid; // @[InstrCache.scala 32:27]
  wire [27:0] fetch_query_io_out_phyTag; // @[InstrCache.scala 32:27]
  wire  fetch_query_io_out_index; // @[InstrCache.scala 32:27]
  wire  fetch_query_io_out_bankIndex; // @[InstrCache.scala 32:27]
  wire  fetch_query_io_out_valid; // @[InstrCache.scala 32:27]
  wire  query_clock; // @[InstrCache.scala 33:27]
  wire  query_reset; // @[InstrCache.scala 33:27]
  wire  query_io_ready; // @[InstrCache.scala 33:27]
  wire [27:0] query_io_fetchQuery_tagValid_0_tag; // @[InstrCache.scala 33:27]
  wire  query_io_fetchQuery_tagValid_0_valid; // @[InstrCache.scala 33:27]
  wire [27:0] query_io_fetchQuery_tagValid_1_tag; // @[InstrCache.scala 33:27]
  wire  query_io_fetchQuery_tagValid_1_valid; // @[InstrCache.scala 33:27]
  wire [27:0] query_io_fetchQuery_phyTag; // @[InstrCache.scala 33:27]
  wire  query_io_fetchQuery_index; // @[InstrCache.scala 33:27]
  wire  query_io_fetchQuery_bankIndex; // @[InstrCache.scala 33:27]
  wire  query_io_fetchQuery_valid; // @[InstrCache.scala 33:27]
  wire [31:0] query_io_bankData_0; // @[InstrCache.scala 33:27]
  wire [31:0] query_io_bankData_1; // @[InstrCache.scala 33:27]
  wire  query_io_data_ready; // @[InstrCache.scala 33:27]
  wire  query_io_data_valid; // @[InstrCache.scala 33:27]
  wire [31:0] query_io_data_bits; // @[InstrCache.scala 33:27]
  wire  query_io_write_valid; // @[InstrCache.scala 33:27]
  wire  query_io_write_bits_waySelection; // @[InstrCache.scala 33:27]
  wire  query_io_write_bits_indexSelection; // @[InstrCache.scala 33:27]
  wire [27:0] query_io_write_bits_tagValid_tag; // @[InstrCache.scala 33:27]
  wire [31:0] query_io_instructionWriteBack_0; // @[InstrCache.scala 33:27]
  wire [31:0] query_io_instructionWriteBack_1; // @[InstrCache.scala 33:27]
  wire  query_io_axi_ar_ready; // @[InstrCache.scala 33:27]
  wire  query_io_axi_ar_valid; // @[InstrCache.scala 33:27]
  wire [31:0] query_io_axi_ar_bits_addr; // @[InstrCache.scala 33:27]
  wire  query_io_axi_r_ready; // @[InstrCache.scala 33:27]
  wire  query_io_axi_r_valid; // @[InstrCache.scala 33:27]
  wire [31:0] query_io_axi_r_bits_data; // @[InstrCache.scala 33:27]
  wire  query_io_axi_r_bits_last; // @[InstrCache.scala 33:27]
  wire  instrBanks_clock; // @[InstrCache.scala 34:27]
  wire  instrBanks_io_way_bank_0_0_addr; // @[InstrCache.scala 34:27]
  wire  instrBanks_io_way_bank_0_0_writeEnable; // @[InstrCache.scala 34:27]
  wire [31:0] instrBanks_io_way_bank_0_0_writeData; // @[InstrCache.scala 34:27]
  wire [31:0] instrBanks_io_way_bank_0_0_readData; // @[InstrCache.scala 34:27]
  wire  instrBanks_io_way_bank_0_1_addr; // @[InstrCache.scala 34:27]
  wire  instrBanks_io_way_bank_0_1_writeEnable; // @[InstrCache.scala 34:27]
  wire [31:0] instrBanks_io_way_bank_0_1_writeData; // @[InstrCache.scala 34:27]
  wire [31:0] instrBanks_io_way_bank_0_1_readData; // @[InstrCache.scala 34:27]
  wire  instrBanks_io_way_bank_1_0_addr; // @[InstrCache.scala 34:27]
  wire  instrBanks_io_way_bank_1_0_writeEnable; // @[InstrCache.scala 34:27]
  wire [31:0] instrBanks_io_way_bank_1_0_writeData; // @[InstrCache.scala 34:27]
  wire [31:0] instrBanks_io_way_bank_1_0_readData; // @[InstrCache.scala 34:27]
  wire  instrBanks_io_way_bank_1_1_addr; // @[InstrCache.scala 34:27]
  wire  instrBanks_io_way_bank_1_1_writeEnable; // @[InstrCache.scala 34:27]
  wire [31:0] instrBanks_io_way_bank_1_1_writeData; // @[InstrCache.scala 34:27]
  wire [31:0] instrBanks_io_way_bank_1_1_readData; // @[InstrCache.scala 34:27]
  wire  controller_io_stage2Free; // @[InstrCache.scala 35:27]
  wire  controller_io_writeBack; // @[InstrCache.scala 35:27]
  wire  controller_io_reqReady; // @[InstrCache.scala 35:27]
  wire  controller_io_writeEnable; // @[InstrCache.scala 35:27]
  wire  _T_11 = ~query_io_write_bits_waySelection; // @[InstrCache.scala 62:42]
  wire [31:0] _GEN_3 = instrBanks_io_way_bank_0_0_readData; // @[InstrCache.scala 65:23]
  wire  _T_17 = query_io_write_bits_waySelection; // @[InstrCache.scala 62:42]
  wire [31:0] _GEN_11 = instrBanks_io_way_bank_1_0_readData; // @[InstrCache.scala 65:23]
  FetchTop fetch ( // @[InstrCache.scala 31:27]
    .clock(fetch_clock),
    .reset(fetch_reset),
    .io_addr(fetch_io_addr),
    .io_write_valid(fetch_io_write_valid),
    .io_write_bits_waySelection(fetch_io_write_bits_waySelection),
    .io_write_bits_indexSelection(fetch_io_write_bits_indexSelection),
    .io_write_bits_tagValid_tag(fetch_io_write_bits_tagValid_tag),
    .io_index(fetch_io_index),
    .io_tagValid_0_tag(fetch_io_tagValid_0_tag),
    .io_tagValid_0_valid(fetch_io_tagValid_0_valid),
    .io_tagValid_1_tag(fetch_io_tagValid_1_tag),
    .io_tagValid_1_valid(fetch_io_tagValid_1_valid),
    .io_phyTag(fetch_io_phyTag),
    .io_bankIndex(fetch_io_bankIndex)
  );
  CachePipelineStage fetch_query ( // @[InstrCache.scala 32:27]
    .clock(fetch_query_clock),
    .reset(fetch_query_reset),
    .io_stall(fetch_query_io_stall),
    .io_in_tagValid_0_tag(fetch_query_io_in_tagValid_0_tag),
    .io_in_tagValid_0_valid(fetch_query_io_in_tagValid_0_valid),
    .io_in_tagValid_1_tag(fetch_query_io_in_tagValid_1_tag),
    .io_in_tagValid_1_valid(fetch_query_io_in_tagValid_1_valid),
    .io_in_phyTag(fetch_query_io_in_phyTag),
    .io_in_index(fetch_query_io_in_index),
    .io_in_bankIndex(fetch_query_io_in_bankIndex),
    .io_in_valid(fetch_query_io_in_valid),
    .io_out_tagValid_0_tag(fetch_query_io_out_tagValid_0_tag),
    .io_out_tagValid_0_valid(fetch_query_io_out_tagValid_0_valid),
    .io_out_tagValid_1_tag(fetch_query_io_out_tagValid_1_tag),
    .io_out_tagValid_1_valid(fetch_query_io_out_tagValid_1_valid),
    .io_out_phyTag(fetch_query_io_out_phyTag),
    .io_out_index(fetch_query_io_out_index),
    .io_out_bankIndex(fetch_query_io_out_bankIndex),
    .io_out_valid(fetch_query_io_out_valid)
  );
  QueryTop query ( // @[InstrCache.scala 33:27]
    .clock(query_clock),
    .reset(query_reset),
    .io_ready(query_io_ready),
    .io_fetchQuery_tagValid_0_tag(query_io_fetchQuery_tagValid_0_tag),
    .io_fetchQuery_tagValid_0_valid(query_io_fetchQuery_tagValid_0_valid),
    .io_fetchQuery_tagValid_1_tag(query_io_fetchQuery_tagValid_1_tag),
    .io_fetchQuery_tagValid_1_valid(query_io_fetchQuery_tagValid_1_valid),
    .io_fetchQuery_phyTag(query_io_fetchQuery_phyTag),
    .io_fetchQuery_index(query_io_fetchQuery_index),
    .io_fetchQuery_bankIndex(query_io_fetchQuery_bankIndex),
    .io_fetchQuery_valid(query_io_fetchQuery_valid),
    .io_bankData_0(query_io_bankData_0),
    .io_bankData_1(query_io_bankData_1),
    .io_data_ready(query_io_data_ready),
    .io_data_valid(query_io_data_valid),
    .io_data_bits(query_io_data_bits),
    .io_write_valid(query_io_write_valid),
    .io_write_bits_waySelection(query_io_write_bits_waySelection),
    .io_write_bits_indexSelection(query_io_write_bits_indexSelection),
    .io_write_bits_tagValid_tag(query_io_write_bits_tagValid_tag),
    .io_instructionWriteBack_0(query_io_instructionWriteBack_0),
    .io_instructionWriteBack_1(query_io_instructionWriteBack_1),
    .io_axi_ar_ready(query_io_axi_ar_ready),
    .io_axi_ar_valid(query_io_axi_ar_valid),
    .io_axi_ar_bits_addr(query_io_axi_ar_bits_addr),
    .io_axi_r_ready(query_io_axi_r_ready),
    .io_axi_r_valid(query_io_axi_r_valid),
    .io_axi_r_bits_data(query_io_axi_r_bits_data),
    .io_axi_r_bits_last(query_io_axi_r_bits_last)
  );
  InstBanks instrBanks ( // @[InstrCache.scala 34:27]
    .clock(instrBanks_clock),
    .io_way_bank_0_0_addr(instrBanks_io_way_bank_0_0_addr),
    .io_way_bank_0_0_writeEnable(instrBanks_io_way_bank_0_0_writeEnable),
    .io_way_bank_0_0_writeData(instrBanks_io_way_bank_0_0_writeData),
    .io_way_bank_0_0_readData(instrBanks_io_way_bank_0_0_readData),
    .io_way_bank_0_1_addr(instrBanks_io_way_bank_0_1_addr),
    .io_way_bank_0_1_writeEnable(instrBanks_io_way_bank_0_1_writeEnable),
    .io_way_bank_0_1_writeData(instrBanks_io_way_bank_0_1_writeData),
    .io_way_bank_0_1_readData(instrBanks_io_way_bank_0_1_readData),
    .io_way_bank_1_0_addr(instrBanks_io_way_bank_1_0_addr),
    .io_way_bank_1_0_writeEnable(instrBanks_io_way_bank_1_0_writeEnable),
    .io_way_bank_1_0_writeData(instrBanks_io_way_bank_1_0_writeData),
    .io_way_bank_1_0_readData(instrBanks_io_way_bank_1_0_readData),
    .io_way_bank_1_1_addr(instrBanks_io_way_bank_1_1_addr),
    .io_way_bank_1_1_writeEnable(instrBanks_io_way_bank_1_1_writeEnable),
    .io_way_bank_1_1_writeData(instrBanks_io_way_bank_1_1_writeData),
    .io_way_bank_1_1_readData(instrBanks_io_way_bank_1_1_readData)
  );
  ICacheController controller ( // @[InstrCache.scala 35:27]
    .io_stage2Free(controller_io_stage2Free),
    .io_writeBack(controller_io_writeBack),
    .io_reqReady(controller_io_reqReady),
    .io_writeEnable(controller_io_writeEnable)
  );
  assign io_addr_ready = controller_io_reqReady; // @[InstrCache.scala 37:28]
  assign io_data_valid = query_io_data_valid; // @[InstrCache.scala 86:23]
  assign io_data_bits = query_io_data_bits; // @[InstrCache.scala 86:23]
  assign io_axi_ar_valid = query_io_axi_ar_valid; // @[InstrCache.scala 87:23]
  assign io_axi_ar_bits_addr = query_io_axi_ar_bits_addr; // @[InstrCache.scala 87:23]
  assign io_axi_r_ready = query_io_axi_r_ready; // @[InstrCache.scala 87:23]
  assign fetch_clock = clock;
  assign fetch_reset = reset;
  assign fetch_io_addr = io_addr_bits; // @[InstrCache.scala 40:38]
  assign fetch_io_write_valid = controller_io_writeEnable; // @[InstrCache.scala 41:38]
  assign fetch_io_write_bits_waySelection = query_io_write_bits_waySelection; // @[InstrCache.scala 49:36]
  assign fetch_io_write_bits_indexSelection = query_io_write_bits_indexSelection; // @[InstrCache.scala 44:38]
  assign fetch_io_write_bits_tagValid_tag = query_io_write_bits_tagValid_tag; // @[InstrCache.scala 42:38]
  assign fetch_query_clock = clock;
  assign fetch_query_reset = reset;
  assign fetch_query_io_stall = ~controller_io_stage2Free; // @[InstrCache.scala 72:31]
  assign fetch_query_io_in_tagValid_0_tag = fetch_io_tagValid_0_tag; // @[InstrCache.scala 74:31]
  assign fetch_query_io_in_tagValid_0_valid = fetch_io_tagValid_0_valid; // @[InstrCache.scala 74:31]
  assign fetch_query_io_in_tagValid_1_tag = fetch_io_tagValid_1_tag; // @[InstrCache.scala 74:31]
  assign fetch_query_io_in_tagValid_1_valid = fetch_io_tagValid_1_valid; // @[InstrCache.scala 74:31]
  assign fetch_query_io_in_phyTag = fetch_io_phyTag; // @[InstrCache.scala 75:31]
  assign fetch_query_io_in_index = fetch_io_index; // @[InstrCache.scala 73:31]
  assign fetch_query_io_in_bankIndex = fetch_io_bankIndex; // @[InstrCache.scala 76:31]
  assign fetch_query_io_in_valid = io_addr_ready & io_addr_valid; // @[InstrCache.scala 77:31]
  assign query_clock = clock;
  assign query_reset = reset;
  assign query_io_fetchQuery_tagValid_0_tag = fetch_query_io_out_tagValid_0_tag; // @[InstrCache.scala 84:23]
  assign query_io_fetchQuery_tagValid_0_valid = fetch_query_io_out_tagValid_0_valid; // @[InstrCache.scala 84:23]
  assign query_io_fetchQuery_tagValid_1_tag = fetch_query_io_out_tagValid_1_tag; // @[InstrCache.scala 84:23]
  assign query_io_fetchQuery_tagValid_1_valid = fetch_query_io_out_tagValid_1_valid; // @[InstrCache.scala 84:23]
  assign query_io_fetchQuery_phyTag = fetch_query_io_out_phyTag; // @[InstrCache.scala 84:23]
  assign query_io_fetchQuery_index = fetch_query_io_out_index; // @[InstrCache.scala 84:23]
  assign query_io_fetchQuery_bankIndex = fetch_query_io_out_bankIndex; // @[InstrCache.scala 84:23]
  assign query_io_fetchQuery_valid = fetch_query_io_out_valid; // @[InstrCache.scala 84:23]
  assign query_io_bankData_0 = fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_0_1_readData : _GEN_3; // @[InstrCache.scala 85:23]
  assign query_io_bankData_1 = fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_1_1_readData : _GEN_11; // @[InstrCache.scala 85:23]
  assign query_io_data_ready = io_data_ready; // @[InstrCache.scala 86:23]
  assign query_io_axi_ar_ready = io_axi_ar_ready; // @[InstrCache.scala 87:23]
  assign query_io_axi_r_valid = io_axi_r_valid; // @[InstrCache.scala 87:23]
  assign query_io_axi_r_bits_data = io_axi_r_bits_data; // @[InstrCache.scala 87:23]
  assign query_io_axi_r_bits_last = io_axi_r_bits_last; // @[InstrCache.scala 87:23]
  assign instrBanks_clock = clock;
  assign instrBanks_io_way_bank_0_0_addr = controller_io_writeEnable ? query_io_write_bits_indexSelection : fetch_io_index; // @[InstrCache.scala 56:41]
  assign instrBanks_io_way_bank_0_0_writeEnable = controller_io_writeEnable & _T_11; // @[InstrCache.scala 61:48]
  assign instrBanks_io_way_bank_0_0_writeData = query_io_instructionWriteBack_0; // @[InstrCache.scala 63:46]
  assign instrBanks_io_way_bank_0_1_addr = controller_io_writeEnable ? query_io_write_bits_indexSelection : fetch_io_index; // @[InstrCache.scala 56:41]
  assign instrBanks_io_way_bank_0_1_writeEnable = controller_io_writeEnable & _T_11; // @[InstrCache.scala 61:48]
  assign instrBanks_io_way_bank_0_1_writeData = query_io_instructionWriteBack_1; // @[InstrCache.scala 63:46]
  assign instrBanks_io_way_bank_1_0_addr = controller_io_writeEnable ? query_io_write_bits_indexSelection : fetch_io_index; // @[InstrCache.scala 56:41]
  assign instrBanks_io_way_bank_1_0_writeEnable = controller_io_writeEnable & _T_17; // @[InstrCache.scala 61:48]
  assign instrBanks_io_way_bank_1_0_writeData = query_io_instructionWriteBack_0; // @[InstrCache.scala 63:46]
  assign instrBanks_io_way_bank_1_1_addr = controller_io_writeEnable ? query_io_write_bits_indexSelection : fetch_io_index; // @[InstrCache.scala 56:41]
  assign instrBanks_io_way_bank_1_1_writeEnable = controller_io_writeEnable & _T_17; // @[InstrCache.scala 61:48]
  assign instrBanks_io_way_bank_1_1_writeData = query_io_instructionWriteBack_1; // @[InstrCache.scala 63:46]
  assign controller_io_stage2Free = query_io_ready; // @[InstrCache.scala 90:28]
  assign controller_io_writeBack = query_io_write_valid; // @[InstrCache.scala 91:28]
endmodule
module Queue(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [31:0] io_enq_bits_addr,
  input  [3:0]  io_enq_bits_len,
  input  [1:0]  io_enq_bits_burst,
  input         io_deq_ready,
  output        io_deq_valid,
  output [31:0] io_deq_bits_addr,
  output [3:0]  io_deq_bits_len,
  output [1:0]  io_deq_bits_burst
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] ram_addr [0:9]; // @[Decoupled.scala 209:16]
  wire [31:0] ram_addr__T_11_data; // @[Decoupled.scala 209:16]
  wire [3:0] ram_addr__T_11_addr; // @[Decoupled.scala 209:16]
  wire [31:0] ram_addr__T_3_data; // @[Decoupled.scala 209:16]
  wire [3:0] ram_addr__T_3_addr; // @[Decoupled.scala 209:16]
  wire  ram_addr__T_3_mask; // @[Decoupled.scala 209:16]
  wire  ram_addr__T_3_en; // @[Decoupled.scala 209:16]
  reg [3:0] ram_len [0:9]; // @[Decoupled.scala 209:16]
  wire [3:0] ram_len__T_11_data; // @[Decoupled.scala 209:16]
  wire [3:0] ram_len__T_11_addr; // @[Decoupled.scala 209:16]
  wire [3:0] ram_len__T_3_data; // @[Decoupled.scala 209:16]
  wire [3:0] ram_len__T_3_addr; // @[Decoupled.scala 209:16]
  wire  ram_len__T_3_mask; // @[Decoupled.scala 209:16]
  wire  ram_len__T_3_en; // @[Decoupled.scala 209:16]
  reg [1:0] ram_burst [0:9]; // @[Decoupled.scala 209:16]
  wire [1:0] ram_burst__T_11_data; // @[Decoupled.scala 209:16]
  wire [3:0] ram_burst__T_11_addr; // @[Decoupled.scala 209:16]
  wire [1:0] ram_burst__T_3_data; // @[Decoupled.scala 209:16]
  wire [3:0] ram_burst__T_3_addr; // @[Decoupled.scala 209:16]
  wire  ram_burst__T_3_mask; // @[Decoupled.scala 209:16]
  wire  ram_burst__T_3_en; // @[Decoupled.scala 209:16]
  reg [3:0] enq_ptr_value; // @[Counter.scala 29:33]
  reg [3:0] deq_ptr_value; // @[Counter.scala 29:33]
  reg  maybe_full; // @[Decoupled.scala 212:27]
  wire  ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 214:33]
  wire  _T = ~maybe_full; // @[Decoupled.scala 215:28]
  wire  empty = ptr_match & _T; // @[Decoupled.scala 215:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 216:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37]
  wire  wrap = enq_ptr_value == 4'h9; // @[Counter.scala 38:24]
  wire [3:0] _T_5 = enq_ptr_value + 4'h1; // @[Counter.scala 39:22]
  wire  wrap_1 = deq_ptr_value == 4'h9; // @[Counter.scala 38:24]
  wire [3:0] _T_7 = deq_ptr_value + 4'h1; // @[Counter.scala 39:22]
  wire  _T_8 = do_enq != do_deq; // @[Decoupled.scala 227:16]
  assign ram_addr__T_11_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_addr__T_11_data = ram_addr[ram_addr__T_11_addr]; // @[Decoupled.scala 209:16]
  `else
  assign ram_addr__T_11_data = ram_addr__T_11_addr >= 4'ha ? _RAND_1[31:0] : ram_addr[ram_addr__T_11_addr]; // @[Decoupled.scala 209:16]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_addr__T_3_data = io_enq_bits_addr;
  assign ram_addr__T_3_addr = enq_ptr_value;
  assign ram_addr__T_3_mask = 1'h1;
  assign ram_addr__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_len__T_11_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_len__T_11_data = ram_len[ram_len__T_11_addr]; // @[Decoupled.scala 209:16]
  `else
  assign ram_len__T_11_data = ram_len__T_11_addr >= 4'ha ? _RAND_3[3:0] : ram_len[ram_len__T_11_addr]; // @[Decoupled.scala 209:16]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_len__T_3_data = io_enq_bits_len;
  assign ram_len__T_3_addr = enq_ptr_value;
  assign ram_len__T_3_mask = 1'h1;
  assign ram_len__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_burst__T_11_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_burst__T_11_data = ram_burst[ram_burst__T_11_addr]; // @[Decoupled.scala 209:16]
  `else
  assign ram_burst__T_11_data = ram_burst__T_11_addr >= 4'ha ? _RAND_5[1:0] : ram_burst[ram_burst__T_11_addr]; // @[Decoupled.scala 209:16]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_burst__T_3_data = io_enq_bits_burst;
  assign ram_burst__T_3_addr = enq_ptr_value;
  assign ram_burst__T_3_mask = 1'h1;
  assign ram_burst__T_3_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 232:16]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16]
  assign io_deq_bits_addr = ram_addr__T_11_data; // @[Decoupled.scala 233:15]
  assign io_deq_bits_len = ram_len__T_11_data; // @[Decoupled.scala 233:15]
  assign io_deq_bits_burst = ram_burst__T_11_data; // @[Decoupled.scala 233:15]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_1 = {1{`RANDOM}};
  _RAND_3 = {1{`RANDOM}};
  _RAND_5 = {1{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 10; initvar = initvar+1)
    ram_addr[initvar] = _RAND_0[31:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 10; initvar = initvar+1)
    ram_len[initvar] = _RAND_2[3:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 10; initvar = initvar+1)
    ram_burst[initvar] = _RAND_4[1:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  enq_ptr_value = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  deq_ptr_value = _RAND_7[3:0];
  _RAND_8 = {1{`RANDOM}};
  maybe_full = _RAND_8[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_addr__T_3_en & ram_addr__T_3_mask) begin
      ram_addr[ram_addr__T_3_addr] <= ram_addr__T_3_data; // @[Decoupled.scala 209:16]
    end
    if(ram_len__T_3_en & ram_len__T_3_mask) begin
      ram_len[ram_len__T_3_addr] <= ram_len__T_3_data; // @[Decoupled.scala 209:16]
    end
    if(ram_burst__T_3_en & ram_burst__T_3_mask) begin
      ram_burst[ram_burst__T_3_addr] <= ram_burst__T_3_data; // @[Decoupled.scala 209:16]
    end
    if (reset) begin
      enq_ptr_value <= 4'h0;
    end else if (do_enq) begin
      if (wrap) begin
        enq_ptr_value <= 4'h0;
      end else begin
        enq_ptr_value <= _T_5;
      end
    end
    if (reset) begin
      deq_ptr_value <= 4'h0;
    end else if (do_deq) begin
      if (wrap_1) begin
        deq_ptr_value <= 4'h0;
      end else begin
        deq_ptr_value <= _T_7;
      end
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_8) begin
      maybe_full <= do_enq;
    end
  end
endmodule
module SymbiyosysAXIRam(
  input         clock,
  input         reset,
  output        io_axi_ar_ready,
  input         io_axi_ar_valid,
  input  [31:0] io_axi_ar_bits_addr,
  input         io_axi_r_ready,
  output        io_axi_r_valid,
  output [31:0] io_axi_r_bits_data,
  output        io_axi_r_bits_last
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
`endif // RANDOMIZE_REG_INIT
  wire  instRQ_clock; // @[SymbiyosysAXIRam.scala 33:40]
  wire  instRQ_reset; // @[SymbiyosysAXIRam.scala 33:40]
  wire  instRQ_io_enq_ready; // @[SymbiyosysAXIRam.scala 33:40]
  wire  instRQ_io_enq_valid; // @[SymbiyosysAXIRam.scala 33:40]
  wire [31:0] instRQ_io_enq_bits_addr; // @[SymbiyosysAXIRam.scala 33:40]
  wire [3:0] instRQ_io_enq_bits_len; // @[SymbiyosysAXIRam.scala 33:40]
  wire [1:0] instRQ_io_enq_bits_burst; // @[SymbiyosysAXIRam.scala 33:40]
  wire  instRQ_io_deq_ready; // @[SymbiyosysAXIRam.scala 33:40]
  wire  instRQ_io_deq_valid; // @[SymbiyosysAXIRam.scala 33:40]
  wire [31:0] instRQ_io_deq_bits_addr; // @[SymbiyosysAXIRam.scala 33:40]
  wire [3:0] instRQ_io_deq_bits_len; // @[SymbiyosysAXIRam.scala 33:40]
  wire [1:0] instRQ_io_deq_bits_burst; // @[SymbiyosysAXIRam.scala 33:40]
  wire  dataRQ_clock; // @[SymbiyosysAXIRam.scala 34:40]
  wire  dataRQ_reset; // @[SymbiyosysAXIRam.scala 34:40]
  wire  dataRQ_io_enq_ready; // @[SymbiyosysAXIRam.scala 34:40]
  wire  dataRQ_io_enq_valid; // @[SymbiyosysAXIRam.scala 34:40]
  wire [31:0] dataRQ_io_enq_bits_addr; // @[SymbiyosysAXIRam.scala 34:40]
  wire [3:0] dataRQ_io_enq_bits_len; // @[SymbiyosysAXIRam.scala 34:40]
  wire [1:0] dataRQ_io_enq_bits_burst; // @[SymbiyosysAXIRam.scala 34:40]
  wire  dataRQ_io_deq_ready; // @[SymbiyosysAXIRam.scala 34:40]
  wire  dataRQ_io_deq_valid; // @[SymbiyosysAXIRam.scala 34:40]
  wire [31:0] dataRQ_io_deq_bits_addr; // @[SymbiyosysAXIRam.scala 34:40]
  wire [3:0] dataRQ_io_deq_bits_len; // @[SymbiyosysAXIRam.scala 34:40]
  wire [1:0] dataRQ_io_deq_bits_burst; // @[SymbiyosysAXIRam.scala 34:40]
  wire  dataWQ_clock; // @[SymbiyosysAXIRam.scala 46:50]
  wire  dataWQ_reset; // @[SymbiyosysAXIRam.scala 46:50]
  wire  dataWQ_io_enq_ready; // @[SymbiyosysAXIRam.scala 46:50]
  wire  dataWQ_io_enq_valid; // @[SymbiyosysAXIRam.scala 46:50]
  wire [31:0] dataWQ_io_enq_bits_addr; // @[SymbiyosysAXIRam.scala 46:50]
  wire [3:0] dataWQ_io_enq_bits_len; // @[SymbiyosysAXIRam.scala 46:50]
  wire [1:0] dataWQ_io_enq_bits_burst; // @[SymbiyosysAXIRam.scala 46:50]
  wire  dataWQ_io_deq_ready; // @[SymbiyosysAXIRam.scala 46:50]
  wire  dataWQ_io_deq_valid; // @[SymbiyosysAXIRam.scala 46:50]
  wire [31:0] dataWQ_io_deq_bits_addr; // @[SymbiyosysAXIRam.scala 46:50]
  wire [3:0] dataWQ_io_deq_bits_len; // @[SymbiyosysAXIRam.scala 46:50]
  wire [1:0] dataWQ_io_deq_bits_burst; // @[SymbiyosysAXIRam.scala 46:50]
  reg [31:0] mem_0; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_1; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_2; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_3; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_4; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_5; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_6; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_7; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_8; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_9; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_10; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_11; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_12; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_13; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_14; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_15; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_16; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_17; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_18; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_19; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_20; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_21; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_22; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_23; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_24; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_25; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_26; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_27; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_28; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_29; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_30; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_31; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_32; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_33; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_34; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_35; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_36; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_37; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_38; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_39; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_40; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_41; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_42; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_43; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_44; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_45; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_46; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_47; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_48; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_49; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_50; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_51; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_52; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_53; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_54; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_55; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_56; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_57; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_58; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_59; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_60; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_61; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_62; // @[SymbiyosysAXIRam.scala 19:20]
  reg [31:0] mem_63; // @[SymbiyosysAXIRam.scala 19:20]
  reg  rState; // @[SymbiyosysAXIRam.scala 32:41]
  wire  currentID = instRQ_io_deq_valid ? 1'h0 : 1'h1; // @[SymbiyosysAXIRam.scala 35:37]
  reg [1:0] rBurst; // @[SymbiyosysAXIRam.scala 37:41]
  reg [3:0] rLen; // @[SymbiyosysAXIRam.scala 38:41]
  reg [2:0] rWrapSel; // @[SymbiyosysAXIRam.scala 39:41]
  reg [31:0] rRamAddr; // @[SymbiyosysAXIRam.scala 40:41]
  reg [1:0] wState; // @[SymbiyosysAXIRam.scala 45:51]
  wire  _T_37 = ~rState; // @[Conditional.scala 37:30]
  wire  _T_38 = 4'h1 == instRQ_io_deq_bits_len; // @[Mux.scala 80:60]
  wire [1:0] _T_39 = _T_38 ? 2'h3 : 2'h0; // @[Mux.scala 80:57]
  wire  _T_40 = 4'h3 == instRQ_io_deq_bits_len; // @[Mux.scala 80:60]
  wire  _T_42 = 4'h7 == instRQ_io_deq_bits_len; // @[Mux.scala 80:60]
  wire  _T_44 = 4'hf == instRQ_io_deq_bits_len; // @[Mux.scala 80:60]
  wire  _T_46 = 4'h1 == dataRQ_io_deq_bits_len; // @[Mux.scala 80:60]
  wire [1:0] _T_47 = _T_46 ? 2'h3 : 2'h0; // @[Mux.scala 80:57]
  wire  _T_48 = 4'h3 == dataRQ_io_deq_bits_len; // @[Mux.scala 80:60]
  wire  _T_50 = 4'h7 == dataRQ_io_deq_bits_len; // @[Mux.scala 80:60]
  wire  _T_52 = 4'hf == dataRQ_io_deq_bits_len; // @[Mux.scala 80:60]
  wire  _GEN_5 = dataRQ_io_deq_ready | rState; // @[SymbiyosysAXIRam.scala 54:39]
  wire  _GEN_11 = instRQ_io_deq_ready | _GEN_5; // @[SymbiyosysAXIRam.scala 50:33]
  wire  _T_55 = rLen == 4'h0; // @[SymbiyosysAXIRam.scala 62:19]
  wire [31:0] _T_57 = rRamAddr + 32'h4; // @[SymbiyosysAXIRam.scala 114:26]
  wire [31:0] _T_58 = rRamAddr >> rWrapSel; // @[SymbiyosysAXIRam.scala 116:57]
  wire [38:0] _GEN_304 = {{7'd0}, _T_58}; // @[SymbiyosysAXIRam.scala 116:70]
  wire [38:0] _T_59 = _GEN_304 << rWrapSel; // @[SymbiyosysAXIRam.scala 116:70]
  wire [5:0] _GEN_305 = {{3'd0}, rWrapSel}; // @[SymbiyosysAXIRam.scala 119:40]
  wire [5:0] _T_64 = 6'h20 - _GEN_305; // @[SymbiyosysAXIRam.scala 119:40]
  wire [94:0] _GEN_306 = {{63'd0}, _T_57}; // @[SymbiyosysAXIRam.scala 119:31]
  wire [94:0] _T_65 = _GEN_306 << _T_64; // @[SymbiyosysAXIRam.scala 119:31]
  wire [31:0] _T_69 = _T_65[31:0] >> _T_64; // @[SymbiyosysAXIRam.scala 119:69]
  wire [31:0] _T_71 = _T_59[31:0] | _T_69; // @[SymbiyosysAXIRam.scala 121:16]
  wire  _T_72 = 2'h1 == rBurst; // @[Mux.scala 80:60]
  wire  _T_74 = 2'h2 == rBurst; // @[Mux.scala 80:60]
  wire [3:0] _T_77 = rLen - 4'h1; // @[SymbiyosysAXIRam.scala 66:28]
  wire  _T_82 = _T_37 & instRQ_io_deq_valid; // @[SymbiyosysAXIRam.scala 74:44]
  wire  _T_83 = ~currentID; // @[SymbiyosysAXIRam.scala 74:80]
  wire  _T_89 = _T_37 & dataRQ_io_deq_valid; // @[SymbiyosysAXIRam.scala 78:44]
  wire [31:0] _GEN_28 = 6'h1 == rRamAddr[7:2] ? mem_1 : mem_0; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_29 = 6'h2 == rRamAddr[7:2] ? mem_2 : _GEN_28; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_30 = 6'h3 == rRamAddr[7:2] ? mem_3 : _GEN_29; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_31 = 6'h4 == rRamAddr[7:2] ? mem_4 : _GEN_30; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_32 = 6'h5 == rRamAddr[7:2] ? mem_5 : _GEN_31; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_33 = 6'h6 == rRamAddr[7:2] ? mem_6 : _GEN_32; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_34 = 6'h7 == rRamAddr[7:2] ? mem_7 : _GEN_33; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_35 = 6'h8 == rRamAddr[7:2] ? mem_8 : _GEN_34; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_36 = 6'h9 == rRamAddr[7:2] ? mem_9 : _GEN_35; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_37 = 6'ha == rRamAddr[7:2] ? mem_10 : _GEN_36; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_38 = 6'hb == rRamAddr[7:2] ? mem_11 : _GEN_37; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_39 = 6'hc == rRamAddr[7:2] ? mem_12 : _GEN_38; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_40 = 6'hd == rRamAddr[7:2] ? mem_13 : _GEN_39; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_41 = 6'he == rRamAddr[7:2] ? mem_14 : _GEN_40; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_42 = 6'hf == rRamAddr[7:2] ? mem_15 : _GEN_41; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_43 = 6'h10 == rRamAddr[7:2] ? mem_16 : _GEN_42; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_44 = 6'h11 == rRamAddr[7:2] ? mem_17 : _GEN_43; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_45 = 6'h12 == rRamAddr[7:2] ? mem_18 : _GEN_44; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_46 = 6'h13 == rRamAddr[7:2] ? mem_19 : _GEN_45; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_47 = 6'h14 == rRamAddr[7:2] ? mem_20 : _GEN_46; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_48 = 6'h15 == rRamAddr[7:2] ? mem_21 : _GEN_47; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_49 = 6'h16 == rRamAddr[7:2] ? mem_22 : _GEN_48; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_50 = 6'h17 == rRamAddr[7:2] ? mem_23 : _GEN_49; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_51 = 6'h18 == rRamAddr[7:2] ? mem_24 : _GEN_50; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_52 = 6'h19 == rRamAddr[7:2] ? mem_25 : _GEN_51; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_53 = 6'h1a == rRamAddr[7:2] ? mem_26 : _GEN_52; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_54 = 6'h1b == rRamAddr[7:2] ? mem_27 : _GEN_53; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_55 = 6'h1c == rRamAddr[7:2] ? mem_28 : _GEN_54; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_56 = 6'h1d == rRamAddr[7:2] ? mem_29 : _GEN_55; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_57 = 6'h1e == rRamAddr[7:2] ? mem_30 : _GEN_56; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_58 = 6'h1f == rRamAddr[7:2] ? mem_31 : _GEN_57; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_59 = 6'h20 == rRamAddr[7:2] ? mem_32 : _GEN_58; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_60 = 6'h21 == rRamAddr[7:2] ? mem_33 : _GEN_59; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_61 = 6'h22 == rRamAddr[7:2] ? mem_34 : _GEN_60; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_62 = 6'h23 == rRamAddr[7:2] ? mem_35 : _GEN_61; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_63 = 6'h24 == rRamAddr[7:2] ? mem_36 : _GEN_62; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_64 = 6'h25 == rRamAddr[7:2] ? mem_37 : _GEN_63; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_65 = 6'h26 == rRamAddr[7:2] ? mem_38 : _GEN_64; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_66 = 6'h27 == rRamAddr[7:2] ? mem_39 : _GEN_65; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_67 = 6'h28 == rRamAddr[7:2] ? mem_40 : _GEN_66; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_68 = 6'h29 == rRamAddr[7:2] ? mem_41 : _GEN_67; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_69 = 6'h2a == rRamAddr[7:2] ? mem_42 : _GEN_68; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_70 = 6'h2b == rRamAddr[7:2] ? mem_43 : _GEN_69; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_71 = 6'h2c == rRamAddr[7:2] ? mem_44 : _GEN_70; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_72 = 6'h2d == rRamAddr[7:2] ? mem_45 : _GEN_71; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_73 = 6'h2e == rRamAddr[7:2] ? mem_46 : _GEN_72; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_74 = 6'h2f == rRamAddr[7:2] ? mem_47 : _GEN_73; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_75 = 6'h30 == rRamAddr[7:2] ? mem_48 : _GEN_74; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_76 = 6'h31 == rRamAddr[7:2] ? mem_49 : _GEN_75; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_77 = 6'h32 == rRamAddr[7:2] ? mem_50 : _GEN_76; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_78 = 6'h33 == rRamAddr[7:2] ? mem_51 : _GEN_77; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_79 = 6'h34 == rRamAddr[7:2] ? mem_52 : _GEN_78; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_80 = 6'h35 == rRamAddr[7:2] ? mem_53 : _GEN_79; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_81 = 6'h36 == rRamAddr[7:2] ? mem_54 : _GEN_80; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_82 = 6'h37 == rRamAddr[7:2] ? mem_55 : _GEN_81; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_83 = 6'h38 == rRamAddr[7:2] ? mem_56 : _GEN_82; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_84 = 6'h39 == rRamAddr[7:2] ? mem_57 : _GEN_83; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_85 = 6'h3a == rRamAddr[7:2] ? mem_58 : _GEN_84; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_86 = 6'h3b == rRamAddr[7:2] ? mem_59 : _GEN_85; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_87 = 6'h3c == rRamAddr[7:2] ? mem_60 : _GEN_86; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_88 = 6'h3d == rRamAddr[7:2] ? mem_61 : _GEN_87; // @[SymbiyosysAXIRam.scala 82:15]
  wire [31:0] _GEN_89 = 6'h3e == rRamAddr[7:2] ? mem_62 : _GEN_88; // @[SymbiyosysAXIRam.scala 82:15]
  wire  _T_97 = 2'h0 == wState; // @[Conditional.scala 37:30]
  wire  _T_164 = wState == 2'h0; // @[SymbiyosysAXIRam.scala 172:33]
  Queue instRQ ( // @[SymbiyosysAXIRam.scala 33:40]
    .clock(instRQ_clock),
    .reset(instRQ_reset),
    .io_enq_ready(instRQ_io_enq_ready),
    .io_enq_valid(instRQ_io_enq_valid),
    .io_enq_bits_addr(instRQ_io_enq_bits_addr),
    .io_enq_bits_len(instRQ_io_enq_bits_len),
    .io_enq_bits_burst(instRQ_io_enq_bits_burst),
    .io_deq_ready(instRQ_io_deq_ready),
    .io_deq_valid(instRQ_io_deq_valid),
    .io_deq_bits_addr(instRQ_io_deq_bits_addr),
    .io_deq_bits_len(instRQ_io_deq_bits_len),
    .io_deq_bits_burst(instRQ_io_deq_bits_burst)
  );
  Queue dataRQ ( // @[SymbiyosysAXIRam.scala 34:40]
    .clock(dataRQ_clock),
    .reset(dataRQ_reset),
    .io_enq_ready(dataRQ_io_enq_ready),
    .io_enq_valid(dataRQ_io_enq_valid),
    .io_enq_bits_addr(dataRQ_io_enq_bits_addr),
    .io_enq_bits_len(dataRQ_io_enq_bits_len),
    .io_enq_bits_burst(dataRQ_io_enq_bits_burst),
    .io_deq_ready(dataRQ_io_deq_ready),
    .io_deq_valid(dataRQ_io_deq_valid),
    .io_deq_bits_addr(dataRQ_io_deq_bits_addr),
    .io_deq_bits_len(dataRQ_io_deq_bits_len),
    .io_deq_bits_burst(dataRQ_io_deq_bits_burst)
  );
  Queue dataWQ ( // @[SymbiyosysAXIRam.scala 46:50]
    .clock(dataWQ_clock),
    .reset(dataWQ_reset),
    .io_enq_ready(dataWQ_io_enq_ready),
    .io_enq_valid(dataWQ_io_enq_valid),
    .io_enq_bits_addr(dataWQ_io_enq_bits_addr),
    .io_enq_bits_len(dataWQ_io_enq_bits_len),
    .io_enq_bits_burst(dataWQ_io_enq_bits_burst),
    .io_deq_ready(dataWQ_io_deq_ready),
    .io_deq_valid(dataWQ_io_deq_valid),
    .io_deq_bits_addr(dataWQ_io_deq_bits_addr),
    .io_deq_bits_len(dataWQ_io_deq_bits_len),
    .io_deq_bits_burst(dataWQ_io_deq_bits_burst)
  );
  assign io_axi_ar_ready = instRQ_io_enq_ready & dataRQ_io_enq_ready; // @[SymbiyosysAXIRam.scala 80:15]
  assign io_axi_r_valid = rState; // @[SymbiyosysAXIRam.scala 85:15]
  assign io_axi_r_bits_data = 6'h3f == rRamAddr[7:2] ? mem_63 : _GEN_89; // @[SymbiyosysAXIRam.scala 82:15]
  assign io_axi_r_bits_last = rLen == 4'h0; // @[SymbiyosysAXIRam.scala 84:15]
  assign instRQ_clock = clock;
  assign instRQ_reset = reset;
  assign instRQ_io_enq_valid = io_axi_ar_ready & io_axi_ar_valid; // @[SymbiyosysAXIRam.scala 72:23]
  assign instRQ_io_enq_bits_addr = io_axi_ar_bits_addr; // @[SymbiyosysAXIRam.scala 73:23]
  assign instRQ_io_enq_bits_len = 4'h1; // @[SymbiyosysAXIRam.scala 73:23]
  assign instRQ_io_enq_bits_burst = 2'h2; // @[SymbiyosysAXIRam.scala 73:23]
  assign instRQ_io_deq_ready = _T_82 & _T_83; // @[SymbiyosysAXIRam.scala 74:23]
  assign dataRQ_clock = clock;
  assign dataRQ_reset = reset;
  assign dataRQ_io_enq_valid = 1'h0; // @[SymbiyosysAXIRam.scala 76:23]
  assign dataRQ_io_enq_bits_addr = io_axi_ar_bits_addr; // @[SymbiyosysAXIRam.scala 77:23]
  assign dataRQ_io_enq_bits_len = 4'h1; // @[SymbiyosysAXIRam.scala 77:23]
  assign dataRQ_io_enq_bits_burst = 2'h2; // @[SymbiyosysAXIRam.scala 77:23]
  assign dataRQ_io_deq_ready = _T_89 & currentID; // @[SymbiyosysAXIRam.scala 78:23]
  assign dataWQ_clock = clock;
  assign dataWQ_reset = reset;
  assign dataWQ_io_enq_valid = 1'h0; // @[SymbiyosysAXIRam.scala 170:23]
  assign dataWQ_io_enq_bits_addr = 32'h0; // @[SymbiyosysAXIRam.scala 171:23]
  assign dataWQ_io_enq_bits_len = 4'h0; // @[SymbiyosysAXIRam.scala 171:23]
  assign dataWQ_io_enq_bits_burst = 2'h0; // @[SymbiyosysAXIRam.scala 171:23]
  assign dataWQ_io_deq_ready = _T_164 & dataWQ_io_deq_valid; // @[SymbiyosysAXIRam.scala 172:23]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  mem_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  mem_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  mem_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  mem_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  mem_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  mem_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  mem_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  mem_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  mem_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  mem_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  mem_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  mem_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  mem_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  mem_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  mem_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  mem_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  mem_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  mem_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  mem_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  mem_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  mem_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  mem_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  mem_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  mem_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  mem_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  mem_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  mem_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  mem_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  mem_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  mem_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  mem_30 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  mem_31 = _RAND_31[31:0];
  _RAND_32 = {1{`RANDOM}};
  mem_32 = _RAND_32[31:0];
  _RAND_33 = {1{`RANDOM}};
  mem_33 = _RAND_33[31:0];
  _RAND_34 = {1{`RANDOM}};
  mem_34 = _RAND_34[31:0];
  _RAND_35 = {1{`RANDOM}};
  mem_35 = _RAND_35[31:0];
  _RAND_36 = {1{`RANDOM}};
  mem_36 = _RAND_36[31:0];
  _RAND_37 = {1{`RANDOM}};
  mem_37 = _RAND_37[31:0];
  _RAND_38 = {1{`RANDOM}};
  mem_38 = _RAND_38[31:0];
  _RAND_39 = {1{`RANDOM}};
  mem_39 = _RAND_39[31:0];
  _RAND_40 = {1{`RANDOM}};
  mem_40 = _RAND_40[31:0];
  _RAND_41 = {1{`RANDOM}};
  mem_41 = _RAND_41[31:0];
  _RAND_42 = {1{`RANDOM}};
  mem_42 = _RAND_42[31:0];
  _RAND_43 = {1{`RANDOM}};
  mem_43 = _RAND_43[31:0];
  _RAND_44 = {1{`RANDOM}};
  mem_44 = _RAND_44[31:0];
  _RAND_45 = {1{`RANDOM}};
  mem_45 = _RAND_45[31:0];
  _RAND_46 = {1{`RANDOM}};
  mem_46 = _RAND_46[31:0];
  _RAND_47 = {1{`RANDOM}};
  mem_47 = _RAND_47[31:0];
  _RAND_48 = {1{`RANDOM}};
  mem_48 = _RAND_48[31:0];
  _RAND_49 = {1{`RANDOM}};
  mem_49 = _RAND_49[31:0];
  _RAND_50 = {1{`RANDOM}};
  mem_50 = _RAND_50[31:0];
  _RAND_51 = {1{`RANDOM}};
  mem_51 = _RAND_51[31:0];
  _RAND_52 = {1{`RANDOM}};
  mem_52 = _RAND_52[31:0];
  _RAND_53 = {1{`RANDOM}};
  mem_53 = _RAND_53[31:0];
  _RAND_54 = {1{`RANDOM}};
  mem_54 = _RAND_54[31:0];
  _RAND_55 = {1{`RANDOM}};
  mem_55 = _RAND_55[31:0];
  _RAND_56 = {1{`RANDOM}};
  mem_56 = _RAND_56[31:0];
  _RAND_57 = {1{`RANDOM}};
  mem_57 = _RAND_57[31:0];
  _RAND_58 = {1{`RANDOM}};
  mem_58 = _RAND_58[31:0];
  _RAND_59 = {1{`RANDOM}};
  mem_59 = _RAND_59[31:0];
  _RAND_60 = {1{`RANDOM}};
  mem_60 = _RAND_60[31:0];
  _RAND_61 = {1{`RANDOM}};
  mem_61 = _RAND_61[31:0];
  _RAND_62 = {1{`RANDOM}};
  mem_62 = _RAND_62[31:0];
  _RAND_63 = {1{`RANDOM}};
  mem_63 = _RAND_63[31:0];
  _RAND_64 = {1{`RANDOM}};
  rState = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  rBurst = _RAND_65[1:0];
  _RAND_66 = {1{`RANDOM}};
  rLen = _RAND_66[3:0];
  _RAND_67 = {1{`RANDOM}};
  rWrapSel = _RAND_67[2:0];
  _RAND_68 = {1{`RANDOM}};
  rRamAddr = _RAND_68[31:0];
  _RAND_69 = {1{`RANDOM}};
  wState = _RAND_69[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      mem_0 <= 32'h0;
    end
    if (reset) begin
      mem_1 <= 32'h1;
    end
    if (reset) begin
      mem_2 <= 32'h2;
    end
    if (reset) begin
      mem_3 <= 32'h3;
    end
    if (reset) begin
      mem_4 <= 32'h4;
    end
    if (reset) begin
      mem_5 <= 32'h5;
    end
    if (reset) begin
      mem_6 <= 32'h6;
    end
    if (reset) begin
      mem_7 <= 32'h7;
    end
    if (reset) begin
      mem_8 <= 32'h8;
    end
    if (reset) begin
      mem_9 <= 32'h9;
    end
    if (reset) begin
      mem_10 <= 32'ha;
    end
    if (reset) begin
      mem_11 <= 32'hb;
    end
    if (reset) begin
      mem_12 <= 32'hc;
    end
    if (reset) begin
      mem_13 <= 32'hd;
    end
    if (reset) begin
      mem_14 <= 32'he;
    end
    if (reset) begin
      mem_15 <= 32'hf;
    end
    if (reset) begin
      mem_16 <= 32'h10;
    end
    if (reset) begin
      mem_17 <= 32'h11;
    end
    if (reset) begin
      mem_18 <= 32'h12;
    end
    if (reset) begin
      mem_19 <= 32'h13;
    end
    if (reset) begin
      mem_20 <= 32'h14;
    end
    if (reset) begin
      mem_21 <= 32'h15;
    end
    if (reset) begin
      mem_22 <= 32'h16;
    end
    if (reset) begin
      mem_23 <= 32'h17;
    end
    if (reset) begin
      mem_24 <= 32'h18;
    end
    if (reset) begin
      mem_25 <= 32'h19;
    end
    if (reset) begin
      mem_26 <= 32'h1a;
    end
    if (reset) begin
      mem_27 <= 32'h1b;
    end
    if (reset) begin
      mem_28 <= 32'h1c;
    end
    if (reset) begin
      mem_29 <= 32'h1d;
    end
    if (reset) begin
      mem_30 <= 32'h1e;
    end
    if (reset) begin
      mem_31 <= 32'h1f;
    end
    if (reset) begin
      mem_32 <= 32'h20;
    end
    if (reset) begin
      mem_33 <= 32'h21;
    end
    if (reset) begin
      mem_34 <= 32'h22;
    end
    if (reset) begin
      mem_35 <= 32'h23;
    end
    if (reset) begin
      mem_36 <= 32'h24;
    end
    if (reset) begin
      mem_37 <= 32'h25;
    end
    if (reset) begin
      mem_38 <= 32'h26;
    end
    if (reset) begin
      mem_39 <= 32'h27;
    end
    if (reset) begin
      mem_40 <= 32'h28;
    end
    if (reset) begin
      mem_41 <= 32'h29;
    end
    if (reset) begin
      mem_42 <= 32'h2a;
    end
    if (reset) begin
      mem_43 <= 32'h2b;
    end
    if (reset) begin
      mem_44 <= 32'h2c;
    end
    if (reset) begin
      mem_45 <= 32'h2d;
    end
    if (reset) begin
      mem_46 <= 32'h2e;
    end
    if (reset) begin
      mem_47 <= 32'h2f;
    end
    if (reset) begin
      mem_48 <= 32'h30;
    end
    if (reset) begin
      mem_49 <= 32'h31;
    end
    if (reset) begin
      mem_50 <= 32'h32;
    end
    if (reset) begin
      mem_51 <= 32'h33;
    end
    if (reset) begin
      mem_52 <= 32'h34;
    end
    if (reset) begin
      mem_53 <= 32'h35;
    end
    if (reset) begin
      mem_54 <= 32'h36;
    end
    if (reset) begin
      mem_55 <= 32'h37;
    end
    if (reset) begin
      mem_56 <= 32'h38;
    end
    if (reset) begin
      mem_57 <= 32'h39;
    end
    if (reset) begin
      mem_58 <= 32'h3a;
    end
    if (reset) begin
      mem_59 <= 32'h3b;
    end
    if (reset) begin
      mem_60 <= 32'h3c;
    end
    if (reset) begin
      mem_61 <= 32'h3d;
    end
    if (reset) begin
      mem_62 <= 32'h3e;
    end
    if (reset) begin
      mem_63 <= 32'h3f;
    end
    if (reset) begin
      rState <= 1'h0;
    end else if (_T_37) begin
      rState <= _GEN_11;
    end else if (rState) begin
      if (io_axi_r_ready) begin
        if (_T_55) begin
          rState <= 1'h0;
        end
      end
    end
    if (reset) begin
      rBurst <= 2'h0;
    end else if (_T_37) begin
      if (instRQ_io_deq_ready) begin
        rBurst <= instRQ_io_deq_bits_burst;
      end else if (dataRQ_io_deq_ready) begin
        rBurst <= dataRQ_io_deq_bits_burst;
      end
    end
    if (reset) begin
      rLen <= 4'h0;
    end else if (_T_37) begin
      if (instRQ_io_deq_ready) begin
        rLen <= instRQ_io_deq_bits_len;
      end else if (dataRQ_io_deq_ready) begin
        rLen <= dataRQ_io_deq_bits_len;
      end
    end else if (rState) begin
      if (io_axi_r_ready) begin
        if (!(_T_55)) begin
          rLen <= _T_77;
        end
      end
    end
    if (reset) begin
      rWrapSel <= 3'h0;
    end else if (_T_37) begin
      if (instRQ_io_deq_ready) begin
        if (_T_44) begin
          rWrapSel <= 3'h6;
        end else if (_T_42) begin
          rWrapSel <= 3'h5;
        end else if (_T_40) begin
          rWrapSel <= 3'h4;
        end else begin
          rWrapSel <= {{1'd0}, _T_39};
        end
      end else if (dataRQ_io_deq_ready) begin
        if (_T_52) begin
          rWrapSel <= 3'h6;
        end else if (_T_50) begin
          rWrapSel <= 3'h5;
        end else if (_T_48) begin
          rWrapSel <= 3'h4;
        end else begin
          rWrapSel <= {{1'd0}, _T_47};
        end
      end
    end
    if (reset) begin
      rRamAddr <= 32'h0;
    end else if (_T_37) begin
      if (instRQ_io_deq_ready) begin
        rRamAddr <= instRQ_io_deq_bits_addr;
      end else if (dataRQ_io_deq_ready) begin
        rRamAddr <= dataRQ_io_deq_bits_addr;
      end
    end else if (rState) begin
      if (io_axi_r_ready) begin
        if (!(_T_55)) begin
          if (_T_74) begin
            rRamAddr <= _T_71;
          end else if (_T_72) begin
            rRamAddr <= _T_57;
          end else begin
            rRamAddr <= 32'h0;
          end
        end
      end
    end
    if (reset) begin
      wState <= 2'h0;
    end else if (_T_97) begin
      if (dataWQ_io_deq_valid) begin
        wState <= 2'h1;
      end
    end
  end
endmodule
module ICacheVeri(
  input         clock,
  input         reset,
  output        io_addr_ready,
  input         io_addr_valid,
  input  [31:0] io_addr_bits,
  input         io_data_ready,
  output        io_data_valid,
  output [31:0] io_data_bits
);
  wire  insCache_clock; // @[ICacheVeri.scala 16:24]
  wire  insCache_reset; // @[ICacheVeri.scala 16:24]
  wire  insCache_io_addr_ready; // @[ICacheVeri.scala 16:24]
  wire  insCache_io_addr_valid; // @[ICacheVeri.scala 16:24]
  wire [31:0] insCache_io_addr_bits; // @[ICacheVeri.scala 16:24]
  wire  insCache_io_data_ready; // @[ICacheVeri.scala 16:24]
  wire  insCache_io_data_valid; // @[ICacheVeri.scala 16:24]
  wire [31:0] insCache_io_data_bits; // @[ICacheVeri.scala 16:24]
  wire  insCache_io_axi_ar_ready; // @[ICacheVeri.scala 16:24]
  wire  insCache_io_axi_ar_valid; // @[ICacheVeri.scala 16:24]
  wire [31:0] insCache_io_axi_ar_bits_addr; // @[ICacheVeri.scala 16:24]
  wire  insCache_io_axi_r_ready; // @[ICacheVeri.scala 16:24]
  wire  insCache_io_axi_r_valid; // @[ICacheVeri.scala 16:24]
  wire [31:0] insCache_io_axi_r_bits_data; // @[ICacheVeri.scala 16:24]
  wire  insCache_io_axi_r_bits_last; // @[ICacheVeri.scala 16:24]
  wire  ram_clock; // @[ICacheVeri.scala 17:24]
  wire  ram_reset; // @[ICacheVeri.scala 17:24]
  wire  ram_io_axi_ar_ready; // @[ICacheVeri.scala 17:24]
  wire  ram_io_axi_ar_valid; // @[ICacheVeri.scala 17:24]
  wire [31:0] ram_io_axi_ar_bits_addr; // @[ICacheVeri.scala 17:24]
  wire  ram_io_axi_r_ready; // @[ICacheVeri.scala 17:24]
  wire  ram_io_axi_r_valid; // @[ICacheVeri.scala 17:24]
  wire [31:0] ram_io_axi_r_bits_data; // @[ICacheVeri.scala 17:24]
  wire  ram_io_axi_r_bits_last; // @[ICacheVeri.scala 17:24]
  InstrCache insCache ( // @[ICacheVeri.scala 16:24]
    .clock(insCache_clock),
    .reset(insCache_reset),
    .io_addr_ready(insCache_io_addr_ready),
    .io_addr_valid(insCache_io_addr_valid),
    .io_addr_bits(insCache_io_addr_bits),
    .io_data_ready(insCache_io_data_ready),
    .io_data_valid(insCache_io_data_valid),
    .io_data_bits(insCache_io_data_bits),
    .io_axi_ar_ready(insCache_io_axi_ar_ready),
    .io_axi_ar_valid(insCache_io_axi_ar_valid),
    .io_axi_ar_bits_addr(insCache_io_axi_ar_bits_addr),
    .io_axi_r_ready(insCache_io_axi_r_ready),
    .io_axi_r_valid(insCache_io_axi_r_valid),
    .io_axi_r_bits_data(insCache_io_axi_r_bits_data),
    .io_axi_r_bits_last(insCache_io_axi_r_bits_last)
  );
  SymbiyosysAXIRam ram ( // @[ICacheVeri.scala 17:24]
    .clock(ram_clock),
    .reset(ram_reset),
    .io_axi_ar_ready(ram_io_axi_ar_ready),
    .io_axi_ar_valid(ram_io_axi_ar_valid),
    .io_axi_ar_bits_addr(ram_io_axi_ar_bits_addr),
    .io_axi_r_ready(ram_io_axi_r_ready),
    .io_axi_r_valid(ram_io_axi_r_valid),
    .io_axi_r_bits_data(ram_io_axi_r_bits_data),
    .io_axi_r_bits_last(ram_io_axi_r_bits_last)
  );
  assign io_addr_ready = insCache_io_addr_ready; // @[ICacheVeri.scala 19:21]
  assign io_data_valid = insCache_io_data_valid; // @[ICacheVeri.scala 22:21]
  assign io_data_bits = insCache_io_data_bits; // @[ICacheVeri.scala 22:21]
  assign insCache_clock = clock;
  assign insCache_reset = reset;
  assign insCache_io_addr_valid = io_addr_valid; // @[ICacheVeri.scala 19:21]
  assign insCache_io_addr_bits = io_addr_bits; // @[ICacheVeri.scala 19:21]
  assign insCache_io_data_ready = io_data_ready; // @[ICacheVeri.scala 22:21]
  assign insCache_io_axi_ar_ready = ram_io_axi_ar_ready; // @[ICacheVeri.scala 18:21]
  assign insCache_io_axi_r_valid = ram_io_axi_r_valid; // @[ICacheVeri.scala 18:21]
  assign insCache_io_axi_r_bits_data = ram_io_axi_r_bits_data; // @[ICacheVeri.scala 18:21]
  assign insCache_io_axi_r_bits_last = ram_io_axi_r_bits_last; // @[ICacheVeri.scala 18:21]
  assign ram_clock = clock;
  assign ram_reset = reset;
  assign ram_io_axi_ar_valid = insCache_io_axi_ar_valid; // @[ICacheVeri.scala 18:21]
  assign ram_io_axi_ar_bits_addr = insCache_io_axi_ar_bits_addr; // @[ICacheVeri.scala 18:21]
  assign ram_io_axi_r_ready = insCache_io_axi_r_ready; // @[ICacheVeri.scala 18:21]
endmodule
