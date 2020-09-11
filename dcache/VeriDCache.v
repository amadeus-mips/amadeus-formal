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
  reg [27:0] _T_1_0; // @[LUTRam.scala 61:25]
  reg [27:0] _T_1_1; // @[LUTRam.scala 61:25]
  assign io_readData = io_readAddr ? _T_1_1 : _T_1_0; // @[LUTRam.scala 62:22]
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
      _T_1_1 <= 28'h1;
    end else if (io_writeEnable) begin
      if (io_writeAddr) begin
        _T_1_1 <= io_writeData;
      end
    end
  end
endmodule
module LUTRam_1(
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
  reg [27:0] _T_1_0; // @[LUTRam.scala 61:25]
  reg [27:0] _T_1_1; // @[LUTRam.scala 61:25]
  assign io_readData = io_readAddr ? _T_1_1 : _T_1_0; // @[LUTRam.scala 62:22]
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
      _T_1_0 <= 28'h2;
    end else if (io_writeEnable) begin
      if (~io_writeAddr) begin
        _T_1_0 <= io_writeData;
      end
    end
    if (reset) begin
      _T_1_1 <= 28'h3;
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
  input         io_way_0_portB_writeData_valid,
  input         io_way_1_portA_addr,
  output [27:0] io_way_1_portA_data_tag,
  output        io_way_1_portA_data_valid,
  input         io_way_1_portB_addr,
  input         io_way_1_portB_writeEnable,
  input  [27:0] io_way_1_portB_writeData_tag,
  input         io_way_1_portB_writeData_valid
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
  reg  valid_bank_way_0_0; // @[TagValidBanks.scala 38:28]
  reg  valid_bank_way_0_1; // @[TagValidBanks.scala 38:28]
  wire  _GEN_2 = ~io_way_0_portB_addr ? io_way_0_portB_writeData_valid : valid_bank_way_0_0; // @[TagValidBanks.scala 52:39]
  wire  _GEN_3 = io_way_0_portB_addr ? io_way_0_portB_writeData_valid : valid_bank_way_0_1; // @[TagValidBanks.scala 52:39]
  wire  _GEN_4 = io_way_0_portB_writeEnable ? _GEN_2 : valid_bank_way_0_0; // @[TagValidBanks.scala 51:39]
  wire  _GEN_5 = io_way_0_portB_writeEnable ? _GEN_3 : valid_bank_way_0_1; // @[TagValidBanks.scala 51:39]
  reg  valid_bank_way_1_0; // @[TagValidBanks.scala 38:28]
  reg  valid_bank_way_1_1; // @[TagValidBanks.scala 38:28]
  wire  _GEN_8 = ~io_way_1_portB_addr ? io_way_1_portB_writeData_valid : valid_bank_way_1_0; // @[TagValidBanks.scala 52:39]
  wire  _GEN_9 = io_way_1_portB_addr ? io_way_1_portB_writeData_valid : valid_bank_way_1_1; // @[TagValidBanks.scala 52:39]
  wire  _GEN_10 = io_way_1_portB_writeEnable ? _GEN_8 : valid_bank_way_1_0; // @[TagValidBanks.scala 51:39]
  wire  _GEN_11 = io_way_1_portB_writeEnable ? _GEN_9 : valid_bank_way_1_1; // @[TagValidBanks.scala 51:39]
  LUTRam tag_bank_way_0 ( // @[TagValidBanks.scala 31:25]
    .clock(tag_bank_way_0_clock),
    .reset(tag_bank_way_0_reset),
    .io_readAddr(tag_bank_way_0_io_readAddr),
    .io_readData(tag_bank_way_0_io_readData),
    .io_writeAddr(tag_bank_way_0_io_writeAddr),
    .io_writeData(tag_bank_way_0_io_writeData),
    .io_writeEnable(tag_bank_way_0_io_writeEnable)
  );
  LUTRam_1 tag_bank_way_1 ( // @[TagValidBanks.scala 31:25]
    .clock(tag_bank_way_1_clock),
    .reset(tag_bank_way_1_reset),
    .io_readAddr(tag_bank_way_1_io_readAddr),
    .io_readData(tag_bank_way_1_io_readData),
    .io_writeAddr(tag_bank_way_1_io_writeAddr),
    .io_writeData(tag_bank_way_1_io_writeData),
    .io_writeEnable(tag_bank_way_1_io_writeEnable)
  );
  assign io_way_0_portA_data_tag = tag_bank_way_0_io_readData; // @[TagValidBanks.scala 43:32]
  assign io_way_0_portA_data_valid = io_way_0_portA_addr ? valid_bank_way_0_1 : valid_bank_way_0_0; // @[TagValidBanks.scala 44:32]
  assign io_way_1_portA_data_tag = tag_bank_way_1_io_readData; // @[TagValidBanks.scala 43:32]
  assign io_way_1_portA_data_valid = io_way_1_portA_addr ? valid_bank_way_1_1 : valid_bank_way_1_0; // @[TagValidBanks.scala 44:32]
  assign tag_bank_way_0_clock = clock;
  assign tag_bank_way_0_reset = reset;
  assign tag_bank_way_0_io_readAddr = io_way_0_portA_addr; // @[TagValidBanks.scala 42:32]
  assign tag_bank_way_0_io_writeAddr = io_way_0_portB_addr; // @[TagValidBanks.scala 48:30]
  assign tag_bank_way_0_io_writeData = io_way_0_portB_writeData_tag; // @[TagValidBanks.scala 50:30]
  assign tag_bank_way_0_io_writeEnable = io_way_0_portB_writeEnable; // @[TagValidBanks.scala 49:30]
  assign tag_bank_way_1_clock = clock;
  assign tag_bank_way_1_reset = reset;
  assign tag_bank_way_1_io_readAddr = io_way_1_portA_addr; // @[TagValidBanks.scala 42:32]
  assign tag_bank_way_1_io_writeAddr = io_way_1_portB_addr; // @[TagValidBanks.scala 48:30]
  assign tag_bank_way_1_io_writeData = io_way_1_portB_writeData_tag; // @[TagValidBanks.scala 50:30]
  assign tag_bank_way_1_io_writeEnable = io_way_1_portB_writeEnable; // @[TagValidBanks.scala 49:30]
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
    valid_bank_way_0_0 <= reset | _GEN_4;
    valid_bank_way_0_1 <= reset | _GEN_5;
    valid_bank_way_1_0 <= reset | _GEN_10;
    valid_bank_way_1_1 <= reset | _GEN_11;
  end
endmodule
module TagValid(
  input         clock,
  input         reset,
  input         io_index,
  input         io_write_valid,
  input         io_write_bits_addr_index,
  input         io_write_bits_addr_waySel,
  input  [27:0] io_write_bits_tagValid_tag,
  output [27:0] io_tagValid_0_tag,
  output        io_tagValid_0_valid,
  output [27:0] io_tagValid_1_tag,
  output        io_tagValid_1_valid,
  input         io_invalidateAllWays
);
  wire  tagValidBanks_clock; // @[TagValid.scala 45:29]
  wire  tagValidBanks_reset; // @[TagValid.scala 45:29]
  wire  tagValidBanks_io_way_0_portA_addr; // @[TagValid.scala 45:29]
  wire [27:0] tagValidBanks_io_way_0_portA_data_tag; // @[TagValid.scala 45:29]
  wire  tagValidBanks_io_way_0_portA_data_valid; // @[TagValid.scala 45:29]
  wire  tagValidBanks_io_way_0_portB_addr; // @[TagValid.scala 45:29]
  wire  tagValidBanks_io_way_0_portB_writeEnable; // @[TagValid.scala 45:29]
  wire [27:0] tagValidBanks_io_way_0_portB_writeData_tag; // @[TagValid.scala 45:29]
  wire  tagValidBanks_io_way_0_portB_writeData_valid; // @[TagValid.scala 45:29]
  wire  tagValidBanks_io_way_1_portA_addr; // @[TagValid.scala 45:29]
  wire [27:0] tagValidBanks_io_way_1_portA_data_tag; // @[TagValid.scala 45:29]
  wire  tagValidBanks_io_way_1_portA_data_valid; // @[TagValid.scala 45:29]
  wire  tagValidBanks_io_way_1_portB_addr; // @[TagValid.scala 45:29]
  wire  tagValidBanks_io_way_1_portB_writeEnable; // @[TagValid.scala 45:29]
  wire [27:0] tagValidBanks_io_way_1_portB_writeData_tag; // @[TagValid.scala 45:29]
  wire  tagValidBanks_io_way_1_portB_writeData_valid; // @[TagValid.scala 45:29]
  wire  _T = ~io_write_bits_addr_waySel; // @[TagValid.scala 58:93]
  wire  _T_1 = io_write_valid & _T; // @[TagValid.scala 58:64]
  wire  _T_4 = io_write_valid & io_write_bits_addr_waySel; // @[TagValid.scala 58:64]
  TagValidBanks tagValidBanks ( // @[TagValid.scala 45:29]
    .clock(tagValidBanks_clock),
    .reset(tagValidBanks_reset),
    .io_way_0_portA_addr(tagValidBanks_io_way_0_portA_addr),
    .io_way_0_portA_data_tag(tagValidBanks_io_way_0_portA_data_tag),
    .io_way_0_portA_data_valid(tagValidBanks_io_way_0_portA_data_valid),
    .io_way_0_portB_addr(tagValidBanks_io_way_0_portB_addr),
    .io_way_0_portB_writeEnable(tagValidBanks_io_way_0_portB_writeEnable),
    .io_way_0_portB_writeData_tag(tagValidBanks_io_way_0_portB_writeData_tag),
    .io_way_0_portB_writeData_valid(tagValidBanks_io_way_0_portB_writeData_valid),
    .io_way_1_portA_addr(tagValidBanks_io_way_1_portA_addr),
    .io_way_1_portA_data_tag(tagValidBanks_io_way_1_portA_data_tag),
    .io_way_1_portA_data_valid(tagValidBanks_io_way_1_portA_data_valid),
    .io_way_1_portB_addr(tagValidBanks_io_way_1_portB_addr),
    .io_way_1_portB_writeEnable(tagValidBanks_io_way_1_portB_writeEnable),
    .io_way_1_portB_writeData_tag(tagValidBanks_io_way_1_portB_writeData_tag),
    .io_way_1_portB_writeData_valid(tagValidBanks_io_way_1_portB_writeData_valid)
  );
  assign io_tagValid_0_tag = tagValidBanks_io_way_0_portA_data_tag; // @[TagValid.scala 51:40]
  assign io_tagValid_0_valid = tagValidBanks_io_way_0_portA_data_valid; // @[TagValid.scala 51:40]
  assign io_tagValid_1_tag = tagValidBanks_io_way_1_portA_data_tag; // @[TagValid.scala 51:40]
  assign io_tagValid_1_valid = tagValidBanks_io_way_1_portA_data_valid; // @[TagValid.scala 51:40]
  assign tagValidBanks_clock = clock;
  assign tagValidBanks_reset = reset;
  assign tagValidBanks_io_way_0_portA_addr = io_index; // @[TagValid.scala 50:40]
  assign tagValidBanks_io_way_0_portB_addr = io_write_bits_addr_index; // @[TagValid.scala 54:40]
  assign tagValidBanks_io_way_0_portB_writeEnable = _T_1 | io_invalidateAllWays; // @[TagValid.scala 58:45]
  assign tagValidBanks_io_way_0_portB_writeData_tag = io_write_bits_tagValid_tag; // @[TagValid.scala 59:45]
  assign tagValidBanks_io_way_0_portB_writeData_valid = io_invalidateAllWays ? 1'h0 : 1'h1; // @[TagValid.scala 59:45 TagValid.scala 61:53]
  assign tagValidBanks_io_way_1_portA_addr = io_index; // @[TagValid.scala 50:40]
  assign tagValidBanks_io_way_1_portB_addr = io_write_bits_addr_index; // @[TagValid.scala 54:40]
  assign tagValidBanks_io_way_1_portB_writeEnable = _T_4 | io_invalidateAllWays; // @[TagValid.scala 58:45]
  assign tagValidBanks_io_way_1_portB_writeData_tag = io_write_bits_tagValid_tag; // @[TagValid.scala 59:45]
  assign tagValidBanks_io_way_1_portB_writeData_valid = io_invalidateAllWays ? 1'h0 : 1'h1; // @[TagValid.scala 59:45 TagValid.scala 61:53]
endmodule
module FetchTop(
  input         clock,
  input         reset,
  input  [19:0] io_addr_translatedTag,
  input  [11:0] io_addr_physicalIndex,
  input         io_write_valid,
  input         io_write_bits_addr_index,
  input         io_write_bits_addr_waySel,
  input  [27:0] io_write_bits_tagValid_tag,
  input         io_invalidateAll,
  output [27:0] io_addrResult_phyTag,
  output        io_addrResult_index,
  output        io_addrResult_bankIndex,
  output [27:0] io_tagValid_0_tag,
  output        io_tagValid_0_valid,
  output [27:0] io_tagValid_1_tag,
  output        io_tagValid_1_valid
);
  wire  tagValid_clock; // @[FetchTop.scala 42:24]
  wire  tagValid_reset; // @[FetchTop.scala 42:24]
  wire  tagValid_io_index; // @[FetchTop.scala 42:24]
  wire  tagValid_io_write_valid; // @[FetchTop.scala 42:24]
  wire  tagValid_io_write_bits_addr_index; // @[FetchTop.scala 42:24]
  wire  tagValid_io_write_bits_addr_waySel; // @[FetchTop.scala 42:24]
  wire [27:0] tagValid_io_write_bits_tagValid_tag; // @[FetchTop.scala 42:24]
  wire [27:0] tagValid_io_tagValid_0_tag; // @[FetchTop.scala 42:24]
  wire  tagValid_io_tagValid_0_valid; // @[FetchTop.scala 42:24]
  wire [27:0] tagValid_io_tagValid_1_tag; // @[FetchTop.scala 42:24]
  wire  tagValid_io_tagValid_1_valid; // @[FetchTop.scala 42:24]
  wire  tagValid_io_invalidateAllWays; // @[FetchTop.scala 42:24]
  TagValid tagValid ( // @[FetchTop.scala 42:24]
    .clock(tagValid_clock),
    .reset(tagValid_reset),
    .io_index(tagValid_io_index),
    .io_write_valid(tagValid_io_write_valid),
    .io_write_bits_addr_index(tagValid_io_write_bits_addr_index),
    .io_write_bits_addr_waySel(tagValid_io_write_bits_addr_waySel),
    .io_write_bits_tagValid_tag(tagValid_io_write_bits_tagValid_tag),
    .io_tagValid_0_tag(tagValid_io_tagValid_0_tag),
    .io_tagValid_0_valid(tagValid_io_tagValid_0_valid),
    .io_tagValid_1_tag(tagValid_io_tagValid_1_tag),
    .io_tagValid_1_valid(tagValid_io_tagValid_1_valid),
    .io_invalidateAllWays(tagValid_io_invalidateAllWays)
  );
  assign io_addrResult_phyTag = {io_addr_translatedTag,io_addr_physicalIndex[11:4]}; // @[FetchTop.scala 53:27]
  assign io_addrResult_index = io_addr_physicalIndex[3]; // @[FetchTop.scala 54:27]
  assign io_addrResult_bankIndex = io_addr_physicalIndex[2]; // @[FetchTop.scala 55:27]
  assign io_tagValid_0_tag = tagValid_io_tagValid_0_tag; // @[FetchTop.scala 56:27]
  assign io_tagValid_0_valid = tagValid_io_tagValid_0_valid; // @[FetchTop.scala 56:27]
  assign io_tagValid_1_tag = tagValid_io_tagValid_1_tag; // @[FetchTop.scala 56:27]
  assign io_tagValid_1_valid = tagValid_io_tagValid_1_valid; // @[FetchTop.scala 56:27]
  assign tagValid_clock = clock;
  assign tagValid_reset = reset;
  assign tagValid_io_index = io_addr_physicalIndex[3]; // @[FetchTop.scala 58:21]
  assign tagValid_io_write_valid = io_write_valid; // @[FetchTop.scala 59:21]
  assign tagValid_io_write_bits_addr_index = io_write_bits_addr_index; // @[FetchTop.scala 59:21]
  assign tagValid_io_write_bits_addr_waySel = io_write_bits_addr_waySel; // @[FetchTop.scala 59:21]
  assign tagValid_io_write_bits_tagValid_tag = io_write_bits_tagValid_tag; // @[FetchTop.scala 59:21]
  assign tagValid_io_invalidateAllWays = io_invalidateAll; // @[FetchTop.scala 61:33]
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
  input  [31:0] io_in_writeData,
  input  [3:0]  io_in_writeMask,
  input         io_in_invalidate,
  output [27:0] io_out_tagValid_0_tag,
  output        io_out_tagValid_0_valid,
  output [27:0] io_out_tagValid_1_tag,
  output        io_out_tagValid_1_valid,
  output [27:0] io_out_phyTag,
  output        io_out_index,
  output        io_out_bankIndex,
  output        io_out_valid,
  output [31:0] io_out_writeData,
  output [3:0]  io_out_writeMask,
  output        io_out_invalidate
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
`endif // RANDOMIZE_REG_INIT
  reg [27:0] pipelineReg_tagValid_0_tag; // @[CachePipelineStage.scala 24:28]
  reg  pipelineReg_tagValid_0_valid; // @[CachePipelineStage.scala 24:28]
  reg [27:0] pipelineReg_tagValid_1_tag; // @[CachePipelineStage.scala 24:28]
  reg  pipelineReg_tagValid_1_valid; // @[CachePipelineStage.scala 24:28]
  reg [27:0] pipelineReg_phyTag; // @[CachePipelineStage.scala 24:28]
  reg  pipelineReg_index; // @[CachePipelineStage.scala 24:28]
  reg  pipelineReg_bankIndex; // @[CachePipelineStage.scala 24:28]
  reg  pipelineReg_valid; // @[CachePipelineStage.scala 24:28]
  reg [31:0] pipelineReg_writeData; // @[CachePipelineStage.scala 24:28]
  reg [3:0] pipelineReg_writeMask; // @[CachePipelineStage.scala 24:28]
  reg  pipelineReg_invalidate; // @[CachePipelineStage.scala 24:28]
  wire  _T_1 = ~io_stall; // @[CachePipelineStage.scala 26:8]
  assign io_out_tagValid_0_tag = pipelineReg_tagValid_0_tag; // @[CachePipelineStage.scala 30:10]
  assign io_out_tagValid_0_valid = pipelineReg_tagValid_0_valid; // @[CachePipelineStage.scala 30:10]
  assign io_out_tagValid_1_tag = pipelineReg_tagValid_1_tag; // @[CachePipelineStage.scala 30:10]
  assign io_out_tagValid_1_valid = pipelineReg_tagValid_1_valid; // @[CachePipelineStage.scala 30:10]
  assign io_out_phyTag = pipelineReg_phyTag; // @[CachePipelineStage.scala 30:10]
  assign io_out_index = pipelineReg_index; // @[CachePipelineStage.scala 30:10]
  assign io_out_bankIndex = pipelineReg_bankIndex; // @[CachePipelineStage.scala 30:10]
  assign io_out_valid = pipelineReg_valid; // @[CachePipelineStage.scala 30:10]
  assign io_out_writeData = pipelineReg_writeData; // @[CachePipelineStage.scala 30:10]
  assign io_out_writeMask = pipelineReg_writeMask; // @[CachePipelineStage.scala 30:10]
  assign io_out_invalidate = pipelineReg_invalidate; // @[CachePipelineStage.scala 30:10]
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
  _RAND_8 = {1{`RANDOM}};
  pipelineReg_writeData = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  pipelineReg_writeMask = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  pipelineReg_invalidate = _RAND_10[0:0];
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
    if (reset) begin
      pipelineReg_writeData <= 32'h0;
    end else if (_T_1) begin
      pipelineReg_writeData <= io_in_writeData;
    end
    if (reset) begin
      pipelineReg_writeMask <= 4'h0;
    end else if (_T_1) begin
      pipelineReg_writeMask <= io_in_writeMask;
    end
    if (reset) begin
      pipelineReg_invalidate <= 1'h0;
    end else if (_T_1) begin
      pipelineReg_invalidate <= io_in_invalidate;
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
  wire  _T = io_tagValid_0_tag == io_phyTag; // @[MissComparator.scala 26:48]
  wire  bankHitVec_0 = io_tagValid_0_valid & _T; // @[MissComparator.scala 26:26]
  wire  _T_2 = io_tagValid_1_tag == io_phyTag; // @[MissComparator.scala 26:48]
  wire  bankHitVec_1 = io_tagValid_1_valid & _T_2; // @[MissComparator.scala 26:26]
  wire  _T_17 = io_phyTag == io_mshr_tag; // @[MissComparator.scala 37:15]
  wire  _T_18 = io_index == io_mshr_index; // @[MissComparator.scala 38:16]
  assign io_bankHitWay_valid = bankHitVec_0 | bankHitVec_1; // @[MissComparator.scala 29:23]
  assign io_bankHitWay_bits = bankHitVec_0 ? 1'h0 : 1'h1; // @[MissComparator.scala 30:23]
  assign io_addrHitInRefillBuffer = _T_17 & _T_18; // @[MissComparator.scala 36:28]
endmodule
module MSHR(
  input         clock,
  input         io_recordMiss_valid,
  input  [27:0] io_recordMiss_bits_addr_tag,
  input         io_recordMiss_bits_addr_index,
  input         io_recordMiss_bits_addr_bankIndex,
  input  [27:0] io_recordMiss_bits_tagValidAtIndex_0_tag,
  input         io_recordMiss_bits_tagValidAtIndex_0_valid,
  input  [27:0] io_recordMiss_bits_tagValidAtIndex_1_tag,
  input         io_recordMiss_bits_tagValidAtIndex_1_valid,
  output [27:0] io_extractMiss_addr_tag,
  output        io_extractMiss_addr_index,
  output        io_extractMiss_addr_bankIndex,
  output [27:0] io_extractMiss_tagValidAtIndex_0_tag,
  output        io_extractMiss_tagValidAtIndex_0_valid,
  output [27:0] io_extractMiss_tagValidAtIndex_1_tag,
  output        io_extractMiss_tagValidAtIndex_1_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [27:0] missEntryReg_tag; // @[MSHR.scala 37:31]
  reg  missEntryReg_index; // @[MSHR.scala 37:31]
  reg  missEntryReg_bankIndex; // @[MSHR.scala 37:31]
  reg [27:0] tagValidAtIndexReg_0_tag; // @[MSHR.scala 38:31]
  reg  tagValidAtIndexReg_0_valid; // @[MSHR.scala 38:31]
  reg [27:0] tagValidAtIndexReg_1_tag; // @[MSHR.scala 38:31]
  reg  tagValidAtIndexReg_1_valid; // @[MSHR.scala 38:31]
  assign io_extractMiss_addr_tag = missEntryReg_tag; // @[MSHR.scala 43:34]
  assign io_extractMiss_addr_index = missEntryReg_index; // @[MSHR.scala 43:34]
  assign io_extractMiss_addr_bankIndex = missEntryReg_bankIndex; // @[MSHR.scala 43:34]
  assign io_extractMiss_tagValidAtIndex_0_tag = tagValidAtIndexReg_0_tag; // @[MSHR.scala 44:34]
  assign io_extractMiss_tagValidAtIndex_0_valid = tagValidAtIndexReg_0_valid; // @[MSHR.scala 44:34]
  assign io_extractMiss_tagValidAtIndex_1_tag = tagValidAtIndexReg_1_tag; // @[MSHR.scala 44:34]
  assign io_extractMiss_tagValidAtIndex_1_valid = tagValidAtIndexReg_1_valid; // @[MSHR.scala 44:34]
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
  _RAND_3 = {1{`RANDOM}};
  tagValidAtIndexReg_0_tag = _RAND_3[27:0];
  _RAND_4 = {1{`RANDOM}};
  tagValidAtIndexReg_0_valid = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  tagValidAtIndexReg_1_tag = _RAND_5[27:0];
  _RAND_6 = {1{`RANDOM}};
  tagValidAtIndexReg_1_valid = _RAND_6[0:0];
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
    if (io_recordMiss_valid) begin
      tagValidAtIndexReg_0_tag <= io_recordMiss_bits_tagValidAtIndex_0_tag;
    end
    if (io_recordMiss_valid) begin
      tagValidAtIndexReg_0_valid <= io_recordMiss_bits_tagValidAtIndex_0_valid;
    end
    if (io_recordMiss_valid) begin
      tagValidAtIndexReg_1_tag <= io_recordMiss_bits_tagValidAtIndex_1_tag;
    end
    if (io_recordMiss_valid) begin
      tagValidAtIndexReg_1_valid <= io_recordMiss_bits_tagValidAtIndex_1_valid;
    end
  end
endmodule
module MaskedRefillBuffer(
  input         clock,
  input         reset,
  input         io_request_valid,
  input         io_request_bits_bankIndex,
  input  [3:0]  io_request_bits_writeMask,
  input  [31:0] io_request_bits_writeData,
  input         io_inputData_valid,
  input  [31:0] io_inputData_bits,
  input         io_finish,
  output        io_queryResult_valid,
  output [31:0] io_queryResult_bits,
  output [31:0] io_allData_0,
  output [31:0] io_allData_1,
  output        io_dataDirty
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
`endif // RANDOMIZE_REG_INIT
  reg  state; // @[MaskedRefillBuffer.scala 45:42]
  reg [31:0] refillBuffer_0; // @[MaskedRefillBuffer.scala 47:25]
  reg [31:0] refillBuffer_1; // @[MaskedRefillBuffer.scala 47:25]
  reg  refillBufferValidArray_0; // @[MaskedRefillBuffer.scala 52:39]
  reg  refillBufferValidArray_1; // @[MaskedRefillBuffer.scala 52:39]
  reg  writePtr; // @[MaskedRefillBuffer.scala 55:21]
  reg [31:0] writeHoldBuffer_0; // @[MaskedRefillBuffer.scala 58:37]
  reg [31:0] writeHoldBuffer_1; // @[MaskedRefillBuffer.scala 58:37]
  reg  writeHoldBufferMaskArray_0_0; // @[MaskedRefillBuffer.scala 59:41]
  reg  writeHoldBufferMaskArray_0_1; // @[MaskedRefillBuffer.scala 59:41]
  reg  writeHoldBufferMaskArray_0_2; // @[MaskedRefillBuffer.scala 59:41]
  reg  writeHoldBufferMaskArray_0_3; // @[MaskedRefillBuffer.scala 59:41]
  reg  writeHoldBufferMaskArray_1_0; // @[MaskedRefillBuffer.scala 59:41]
  reg  writeHoldBufferMaskArray_1_1; // @[MaskedRefillBuffer.scala 59:41]
  reg  writeHoldBufferMaskArray_1_2; // @[MaskedRefillBuffer.scala 59:41]
  reg  writeHoldBufferMaskArray_1_3; // @[MaskedRefillBuffer.scala 59:41]
  reg  bufferDirty; // @[MaskedRefillBuffer.scala 62:28]
  wire [7:0] _T_6 = writeHoldBufferMaskArray_0_3 ? writeHoldBuffer_0[31:24] : refillBuffer_0[31:24]; // @[MaskedRefillBuffer.scala 69:16]
  wire [7:0] _T_9 = writeHoldBufferMaskArray_0_2 ? writeHoldBuffer_0[23:16] : refillBuffer_0[23:16]; // @[MaskedRefillBuffer.scala 69:16]
  wire [7:0] _T_12 = writeHoldBufferMaskArray_0_1 ? writeHoldBuffer_0[15:8] : refillBuffer_0[15:8]; // @[MaskedRefillBuffer.scala 69:16]
  wire [7:0] _T_15 = writeHoldBufferMaskArray_0_0 ? writeHoldBuffer_0[7:0] : refillBuffer_0[7:0]; // @[MaskedRefillBuffer.scala 69:16]
  wire [15:0] _T_16 = {_T_12,_T_15}; // @[Cat.scala 29:58]
  wire [15:0] _T_17 = {_T_6,_T_9}; // @[Cat.scala 29:58]
  wire [31:0] readData_0 = {_T_6,_T_9,_T_12,_T_15}; // @[Cat.scala 29:58]
  wire [7:0] _T_21 = writeHoldBufferMaskArray_1_3 ? writeHoldBuffer_1[31:24] : refillBuffer_1[31:24]; // @[MaskedRefillBuffer.scala 69:16]
  wire [7:0] _T_24 = writeHoldBufferMaskArray_1_2 ? writeHoldBuffer_1[23:16] : refillBuffer_1[23:16]; // @[MaskedRefillBuffer.scala 69:16]
  wire [7:0] _T_27 = writeHoldBufferMaskArray_1_1 ? writeHoldBuffer_1[15:8] : refillBuffer_1[15:8]; // @[MaskedRefillBuffer.scala 69:16]
  wire [7:0] _T_30 = writeHoldBufferMaskArray_1_0 ? writeHoldBuffer_1[7:0] : refillBuffer_1[7:0]; // @[MaskedRefillBuffer.scala 69:16]
  wire [15:0] _T_31 = {_T_27,_T_30}; // @[Cat.scala 29:58]
  wire [15:0] _T_32 = {_T_21,_T_24}; // @[Cat.scala 29:58]
  wire [31:0] readData_1 = {_T_21,_T_24,_T_27,_T_30}; // @[Cat.scala 29:58]
  wire  _GEN_1 = io_request_bits_bankIndex ? refillBufferValidArray_1 : refillBufferValidArray_0; // @[Cat.scala 29:58]
  wire [3:0] _T_36 = {_GEN_1,_GEN_1,_GEN_1,_GEN_1}; // @[Cat.scala 29:58]
  wire  _GEN_6 = io_request_bits_bankIndex ? writeHoldBufferMaskArray_1_0 : writeHoldBufferMaskArray_0_0; // @[MaskedRefillBuffer.scala 85:146]
  wire  _GEN_7 = io_request_bits_bankIndex ? writeHoldBufferMaskArray_1_1 : writeHoldBufferMaskArray_0_1; // @[MaskedRefillBuffer.scala 85:146]
  wire  _GEN_8 = io_request_bits_bankIndex ? writeHoldBufferMaskArray_1_2 : writeHoldBufferMaskArray_0_2; // @[MaskedRefillBuffer.scala 85:146]
  wire  _GEN_9 = io_request_bits_bankIndex ? writeHoldBufferMaskArray_1_3 : writeHoldBufferMaskArray_0_3; // @[MaskedRefillBuffer.scala 85:146]
  wire [3:0] _T_39 = {_GEN_9,_GEN_8,_GEN_7,_GEN_6}; // @[MaskedRefillBuffer.scala 85:146]
  wire [3:0] tmpValidResult = _T_36 | _T_39; // @[MaskedRefillBuffer.scala 85:92]
  wire  _T_40 = tmpValidResult == 4'hf; // @[MaskedRefillBuffer.scala 88:44]
  wire  _T_41 = io_request_bits_writeMask == 4'h0; // @[MaskedRefillBuffer.scala 88:93]
  wire  _T_42 = _T_40 & _T_41; // @[MaskedRefillBuffer.scala 88:63]
  wire  _T_43 = io_request_bits_writeMask != 4'h0; // @[MaskedRefillBuffer.scala 88:133]
  wire  _T_44 = _T_42 | _T_43; // @[MaskedRefillBuffer.scala 88:103]
  wire  _T_47 = ~state; // @[Conditional.scala 37:30]
  wire  _GEN_16 = io_request_valid | state; // @[MaskedRefillBuffer.scala 98:30]
  wire  _T_54 = _GEN_6 | io_request_bits_writeMask[0]; // @[MaskedRefillBuffer.scala 115:13]
  wire  _T_56 = _GEN_7 | io_request_bits_writeMask[1]; // @[MaskedRefillBuffer.scala 115:13]
  wire  _T_58 = _GEN_8 | io_request_bits_writeMask[2]; // @[MaskedRefillBuffer.scala 115:13]
  wire  _T_60 = _GEN_9 | io_request_bits_writeMask[3]; // @[MaskedRefillBuffer.scala 115:13]
  wire [31:0] _GEN_36 = io_request_bits_bankIndex ? writeHoldBuffer_1 : writeHoldBuffer_0; // @[MaskedRefillBuffer.scala 122:39]
  wire [7:0] _T_64 = io_request_bits_writeMask[3] ? io_request_bits_writeData[31:24] : _GEN_36[31:24]; // @[MaskedRefillBuffer.scala 119:16]
  wire [7:0] _T_68 = io_request_bits_writeMask[2] ? io_request_bits_writeData[23:16] : _GEN_36[23:16]; // @[MaskedRefillBuffer.scala 119:16]
  wire [7:0] _T_72 = io_request_bits_writeMask[1] ? io_request_bits_writeData[15:8] : _GEN_36[15:8]; // @[MaskedRefillBuffer.scala 119:16]
  wire [7:0] _T_76 = io_request_bits_writeMask[0] ? io_request_bits_writeData[7:0] : _GEN_36[7:0]; // @[MaskedRefillBuffer.scala 119:16]
  wire [31:0] _T_79 = {_T_64,_T_68,_T_72,_T_76}; // @[Cat.scala 29:58]
  wire  _GEN_39 = _T_43 | bufferDirty; // @[MaskedRefillBuffer.scala 109:47]
  wire  _T_81 = writePtr + 1'h1; // @[MaskedRefillBuffer.scala 129:54]
  wire  _GEN_96 = ~writePtr; // @[MaskedRefillBuffer.scala 131:42]
  wire  _GEN_52 = _GEN_96 | refillBufferValidArray_0; // @[MaskedRefillBuffer.scala 131:42]
  wire  _GEN_53 = writePtr | refillBufferValidArray_1; // @[MaskedRefillBuffer.scala 131:42]
  assign io_queryResult_valid = _T_44 & state; // @[MaskedRefillBuffer.scala 88:24]
  assign io_queryResult_bits = io_request_bits_bankIndex ? readData_1 : readData_0; // @[MaskedRefillBuffer.scala 90:23]
  assign io_allData_0 = {_T_17,_T_16}; // @[MaskedRefillBuffer.scala 92:14]
  assign io_allData_1 = {_T_32,_T_31}; // @[MaskedRefillBuffer.scala 92:14]
  assign io_dataDirty = bufferDirty; // @[MaskedRefillBuffer.scala 94:16]
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
  refillBuffer_0 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  refillBuffer_1 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  refillBufferValidArray_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  refillBufferValidArray_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  writePtr = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  writeHoldBuffer_0 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  writeHoldBuffer_1 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  writeHoldBufferMaskArray_0_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  writeHoldBufferMaskArray_0_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  writeHoldBufferMaskArray_0_2 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  writeHoldBufferMaskArray_0_3 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  writeHoldBufferMaskArray_1_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  writeHoldBufferMaskArray_1_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  writeHoldBufferMaskArray_1_2 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  writeHoldBufferMaskArray_1_3 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  bufferDirty = _RAND_16[0:0];
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
    end else if (_T_47) begin
      state <= _GEN_16;
    end else if (state) begin
      if (io_finish) begin
        state <= 1'h0;
      end
    end
    if (_T_47) begin
      if (io_request_valid) begin
        refillBuffer_0 <= 32'h0;
      end
    end else if (state) begin
      if (io_inputData_valid) begin
        if (~writePtr) begin
          refillBuffer_0 <= io_inputData_bits;
        end
      end
    end
    if (_T_47) begin
      if (io_request_valid) begin
        refillBuffer_1 <= 32'h0;
      end
    end else if (state) begin
      if (io_inputData_valid) begin
        if (writePtr) begin
          refillBuffer_1 <= io_inputData_bits;
        end
      end
    end
    if (reset) begin
      refillBufferValidArray_0 <= 1'h0;
    end else if (_T_47) begin
      if (io_request_valid) begin
        refillBufferValidArray_0 <= 1'h0;
      end
    end else if (state) begin
      if (io_finish) begin
        refillBufferValidArray_0 <= 1'h0;
      end else if (io_inputData_valid) begin
        refillBufferValidArray_0 <= _GEN_52;
      end
    end
    if (reset) begin
      refillBufferValidArray_1 <= 1'h0;
    end else if (_T_47) begin
      if (io_request_valid) begin
        refillBufferValidArray_1 <= 1'h0;
      end
    end else if (state) begin
      if (io_finish) begin
        refillBufferValidArray_1 <= 1'h0;
      end else if (io_inputData_valid) begin
        refillBufferValidArray_1 <= _GEN_53;
      end
    end
    if (_T_47) begin
      if (io_request_valid) begin
        writePtr <= io_request_bits_bankIndex;
      end
    end else if (state) begin
      if (io_inputData_valid) begin
        writePtr <= _T_81;
      end
    end
    if (!(_T_47)) begin
      if (state) begin
        if (_T_43) begin
          if (~io_request_bits_bankIndex) begin
            writeHoldBuffer_0 <= _T_79;
          end
        end
      end
    end
    if (!(_T_47)) begin
      if (state) begin
        if (_T_43) begin
          if (io_request_bits_bankIndex) begin
            writeHoldBuffer_1 <= _T_79;
          end
        end
      end
    end
    if (reset) begin
      writeHoldBufferMaskArray_0_0 <= 1'h0;
    end else if (_T_47) begin
      if (io_request_valid) begin
        writeHoldBufferMaskArray_0_0 <= 1'h0;
      end
    end else if (state) begin
      if (_T_43) begin
        if (~io_request_bits_bankIndex) begin
          writeHoldBufferMaskArray_0_0 <= _T_54;
        end
      end
    end
    if (reset) begin
      writeHoldBufferMaskArray_0_1 <= 1'h0;
    end else if (_T_47) begin
      if (io_request_valid) begin
        writeHoldBufferMaskArray_0_1 <= 1'h0;
      end
    end else if (state) begin
      if (_T_43) begin
        if (~io_request_bits_bankIndex) begin
          writeHoldBufferMaskArray_0_1 <= _T_56;
        end
      end
    end
    if (reset) begin
      writeHoldBufferMaskArray_0_2 <= 1'h0;
    end else if (_T_47) begin
      if (io_request_valid) begin
        writeHoldBufferMaskArray_0_2 <= 1'h0;
      end
    end else if (state) begin
      if (_T_43) begin
        if (~io_request_bits_bankIndex) begin
          writeHoldBufferMaskArray_0_2 <= _T_58;
        end
      end
    end
    if (reset) begin
      writeHoldBufferMaskArray_0_3 <= 1'h0;
    end else if (_T_47) begin
      if (io_request_valid) begin
        writeHoldBufferMaskArray_0_3 <= 1'h0;
      end
    end else if (state) begin
      if (_T_43) begin
        if (~io_request_bits_bankIndex) begin
          writeHoldBufferMaskArray_0_3 <= _T_60;
        end
      end
    end
    if (reset) begin
      writeHoldBufferMaskArray_1_0 <= 1'h0;
    end else if (_T_47) begin
      if (io_request_valid) begin
        writeHoldBufferMaskArray_1_0 <= 1'h0;
      end
    end else if (state) begin
      if (_T_43) begin
        if (io_request_bits_bankIndex) begin
          writeHoldBufferMaskArray_1_0 <= _T_54;
        end
      end
    end
    if (reset) begin
      writeHoldBufferMaskArray_1_1 <= 1'h0;
    end else if (_T_47) begin
      if (io_request_valid) begin
        writeHoldBufferMaskArray_1_1 <= 1'h0;
      end
    end else if (state) begin
      if (_T_43) begin
        if (io_request_bits_bankIndex) begin
          writeHoldBufferMaskArray_1_1 <= _T_56;
        end
      end
    end
    if (reset) begin
      writeHoldBufferMaskArray_1_2 <= 1'h0;
    end else if (_T_47) begin
      if (io_request_valid) begin
        writeHoldBufferMaskArray_1_2 <= 1'h0;
      end
    end else if (state) begin
      if (_T_43) begin
        if (io_request_bits_bankIndex) begin
          writeHoldBufferMaskArray_1_2 <= _T_58;
        end
      end
    end
    if (reset) begin
      writeHoldBufferMaskArray_1_3 <= 1'h0;
    end else if (_T_47) begin
      if (io_request_valid) begin
        writeHoldBufferMaskArray_1_3 <= 1'h0;
      end
    end else if (state) begin
      if (_T_43) begin
        if (io_request_bits_bankIndex) begin
          writeHoldBufferMaskArray_1_3 <= _T_60;
        end
      end
    end
    if (reset) begin
      bufferDirty <= 1'h0;
    end else if (_T_47) begin
      if (io_request_valid) begin
        bufferDirty <= 1'h0;
      end
    end else if (state) begin
      bufferDirty <= _GEN_39;
    end
  end
endmodule
module AXIReadPort(
  input         clock,
  input         reset,
  input         io_axi_ar_ready,
  output        io_axi_ar_valid,
  output [31:0] io_axi_ar_bits_addr,
  output        io_axi_r_ready,
  input         io_axi_r_valid,
  input  [31:0] io_axi_r_bits_data,
  input         io_axi_r_bits_last,
  input         io_addrReq_valid,
  input  [31:0] io_addrReq_bits,
  output        io_transferData_valid,
  output [31:0] io_transferData_bits,
  output        io_finishTransfer
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] readState; // @[AXIReadPort.scala 39:65]
  wire  _T_1 = readState == 2'h2; // @[AXIReadPort.scala 57:32]
  wire  _T_3 = io_axi_r_ready & io_axi_r_valid; // @[Decoupled.scala 40:37]
  wire  _T_4 = _T_1 & _T_3; // @[AXIReadPort.scala 59:55]
  wire  _T_9 = 2'h0 == readState; // @[Conditional.scala 37:30]
  wire  _T_10 = io_axi_ar_ready & io_axi_ar_valid; // @[Decoupled.scala 40:37]
  wire  _T_12 = 2'h1 == readState; // @[Conditional.scala 37:30]
  wire  _T_14 = 2'h2 == readState; // @[Conditional.scala 37:30]
  wire  _T_16 = _T_3 & io_axi_r_bits_last; // @[AXIReadPort.scala 76:26]
  assign io_axi_ar_valid = readState == 2'h1; // @[AXIReadPort.scala 56:19]
  assign io_axi_ar_bits_addr = io_addrReq_bits; // @[AXIReadPort.scala 46:24]
  assign io_axi_r_ready = readState == 2'h2; // @[AXIReadPort.scala 57:19]
  assign io_transferData_valid = _T_1 & _T_3; // @[AXIReadPort.scala 59:25]
  assign io_transferData_bits = io_axi_r_bits_data; // @[AXIReadPort.scala 60:25]
  assign io_finishTransfer = _T_4 & io_axi_r_bits_last; // @[AXIReadPort.scala 62:21]
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
  readState = _RAND_0[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      readState <= 2'h0;
    end else if (_T_9) begin
      if (io_addrReq_valid) begin
        if (_T_10) begin
          readState <= 2'h2;
        end else begin
          readState <= 2'h1;
        end
      end
    end else if (_T_12) begin
      if (_T_10) begin
        readState <= 2'h2;
      end
    end else if (_T_14) begin
      if (_T_16) begin
        readState <= 2'h0;
      end
    end
  end
endmodule
module AXIWritePort(
  input         clock,
  input         reset,
  output        io_addrRequest_ready,
  input         io_addrRequest_valid,
  input  [27:0] io_addrRequest_bits_tag,
  input         io_addrRequest_bits_index,
  output        io_data_ready,
  input         io_data_valid,
  input  [31:0] io_data_bits,
  input         io_dataLast,
  input         io_axi_aw_ready,
  output        io_axi_aw_valid,
  output [31:0] io_axi_aw_bits_addr,
  input         io_axi_w_ready,
  output        io_axi_w_valid,
  output [31:0] io_axi_w_bits_data,
  output        io_axi_w_bits_last,
  output        io_axi_b_ready,
  input         io_axi_b_valid,
  output        io_writeCommit
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] writeState; // @[AXIWritePort.scala 33:50]
  reg  awValidReg; // @[AXIWritePort.scala 36:27]
  wire [28:0] _T = {io_addrRequest_bits_tag,io_addrRequest_bits_index}; // @[Cat.scala 29:58]
  wire  _T_5 = writeState == 2'h2; // @[AXIWritePort.scala 71:32]
  wire  _T_6 = io_axi_b_ready & io_axi_b_valid; // @[Decoupled.scala 40:37]
  wire  _T_9 = 2'h0 == writeState; // @[Conditional.scala 37:30]
  wire  _T_10 = io_addrRequest_ready & io_addrRequest_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_1 = _T_10 | awValidReg; // @[AXIWritePort.scala 77:33]
  wire  _T_11 = 2'h1 == writeState; // @[Conditional.scala 37:30]
  wire  _T_12 = io_axi_aw_ready & io_axi_aw_valid; // @[Decoupled.scala 40:37]
  wire  _T_13 = 2'h2 == writeState; // @[Conditional.scala 37:30]
  assign io_addrRequest_ready = writeState == 2'h0; // @[AXIWritePort.scala 45:24]
  assign io_data_ready = io_axi_w_ready & io_axi_w_valid; // @[AXIWritePort.scala 46:24]
  assign io_axi_aw_valid = awValidReg; // @[AXIWritePort.scala 51:19]
  assign io_axi_aw_bits_addr = {_T,3'h0}; // @[AXIWritePort.scala 52:23]
  assign io_axi_w_valid = io_data_valid; // @[AXIWritePort.scala 66:22]
  assign io_axi_w_bits_data = io_data_bits; // @[AXIWritePort.scala 65:22]
  assign io_axi_w_bits_last = io_dataLast; // @[AXIWritePort.scala 67:22]
  assign io_axi_b_ready = writeState == 2'h2; // @[AXIWritePort.scala 71:18]
  assign io_writeCommit = _T_6 & _T_5; // @[AXIWritePort.scala 73:18]
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
  writeState = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  awValidReg = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      writeState <= 2'h0;
    end else if (_T_9) begin
      if (_T_10) begin
        writeState <= 2'h1;
      end
    end else if (_T_11) begin
      if (io_dataLast) begin
        writeState <= 2'h2;
      end
    end else if (_T_13) begin
      if (_T_6) begin
        writeState <= 2'h0;
      end
    end
    if (reset) begin
      awValidReg <= 1'h0;
    end else if (_T_9) begin
      awValidReg <= _GEN_1;
    end else if (_T_11) begin
      if (_T_12) begin
        awValidReg <= 1'h0;
      end
    end
  end
endmodule
module WriteQueue(
  input         clock,
  input         reset,
  output        io_enqueue_ready,
  input         io_enqueue_valid,
  input  [27:0] io_enqueue_bits_addr_tag,
  input         io_enqueue_bits_addr_index,
  input  [31:0] io_enqueue_bits_data_0,
  input  [31:0] io_enqueue_bits_data_1,
  input  [27:0] io_query_addr_phyTag,
  input         io_query_addr_index,
  input         io_query_addr_bankIndex,
  input  [31:0] io_query_data,
  input  [3:0]  io_query_writeMask,
  output        io_resp_valid,
  output [31:0] io_resp_bits,
  input         io_dequeueAddr_ready,
  output        io_dequeueAddr_valid,
  output [27:0] io_dequeueAddr_bits_tag,
  output        io_dequeueAddr_bits_index,
  input         io_dequeueData_ready,
  output        io_dequeueData_valid,
  output [31:0] io_dequeueData_bits,
  output        io_dequeueLast,
  output        io_holdOffNewMiss,
  input         io_writeCommit,
  output [1:0]  io_size
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
`endif // RANDOMIZE_REG_INIT
  reg [1:0] size; // @[WriteQueue.scala 55:21]
  reg  headPTR; // @[WriteQueue.scala 58:24]
  reg  tailPTR; // @[WriteQueue.scala 62:24]
  reg  lineWritePTR; // @[WriteQueue.scala 65:29]
  reg [1:0] dispatchState; // @[WriteQueue.scala 69:42]
  reg [27:0] addrBank_0_tag; // @[WriteQueue.scala 74:25]
  reg  addrBank_0_index; // @[WriteQueue.scala 74:25]
  reg [27:0] addrBank_1_tag; // @[WriteQueue.scala 74:25]
  reg  addrBank_1_index; // @[WriteQueue.scala 74:25]
  reg  validBank_0; // @[WriteQueue.scala 78:26]
  reg  validBank_1; // @[WriteQueue.scala 78:26]
  reg [31:0] dataBanks_0_0; // @[WriteQueue.scala 81:26]
  reg [31:0] dataBanks_0_1; // @[WriteQueue.scala 81:26]
  reg [31:0] dataBanks_1_0; // @[WriteQueue.scala 81:26]
  reg [31:0] dataBanks_1_1; // @[WriteQueue.scala 81:26]
  wire  _GEN_72 = ~headPTR;
  wire [31:0] _GEN_1 = _GEN_72 & lineWritePTR ? dataBanks_0_1 : dataBanks_0_0;
  wire  _GEN_73 = ~lineWritePTR;
  wire [31:0] _GEN_2 = headPTR & _GEN_73 ? dataBanks_1_0 : _GEN_1;
  wire  _T_5 = addrBank_0_index == io_query_addr_index; // @[WriteQueue.scala 91:80]
  wire  _T_6 = addrBank_0_tag == io_query_addr_phyTag; // @[WriteQueue.scala 91:127]
  wire  _T_7 = _T_5 & _T_6; // @[WriteQueue.scala 91:104]
  wire  queryHitVec_0 = _T_7 & validBank_0; // @[WriteQueue.scala 91:152]
  wire  _T_9 = addrBank_1_index == io_query_addr_index; // @[WriteQueue.scala 91:80]
  wire  _T_10 = addrBank_1_tag == io_query_addr_phyTag; // @[WriteQueue.scala 91:127]
  wire  _T_11 = _T_9 & _T_10; // @[WriteQueue.scala 91:104]
  wire  queryHitVec_1 = _T_11 & validBank_1; // @[WriteQueue.scala 91:152]
  wire  queryHitPos = queryHitVec_0 ? 1'h0 : 1'h1; // @[WriteQueue.scala 96:40]
  wire [1:0] _T_14 = {queryHitVec_1,queryHitVec_0}; // @[WriteQueue.scala 104:17]
  wire  _T_15 = _T_14 != 2'h0; // @[WriteQueue.scala 104:24]
  wire  _T_16 = queryHitPos != headPTR; // @[WriteQueue.scala 104:47]
  wire  isQueryHit = _T_15 & _T_16; // @[WriteQueue.scala 104:32]
  wire  _T_19 = queryHitPos == headPTR; // @[WriteQueue.scala 106:66]
  reg  hasAWHandshake; // @[WriteQueue.scala 108:31]
  wire  _GEN_74 = ~queryHitPos; // @[WriteQueue.scala 114:17]
  wire [31:0] _GEN_5 = _GEN_74 & io_query_addr_bankIndex ? dataBanks_0_1 : dataBanks_0_0; // @[WriteQueue.scala 114:17]
  wire  _GEN_75 = ~io_query_addr_bankIndex; // @[WriteQueue.scala 114:17]
  wire [31:0] _GEN_6 = queryHitPos & _GEN_75 ? dataBanks_1_0 : _GEN_5; // @[WriteQueue.scala 114:17]
  wire [31:0] _GEN_7 = queryHitPos & io_query_addr_bankIndex ? dataBanks_1_1 : _GEN_6; // @[WriteQueue.scala 114:17]
  wire  _T_22 = dispatchState == 2'h1; // @[WriteQueue.scala 118:41]
  wire  _T_23 = ~hasAWHandshake; // @[WriteQueue.scala 118:58]
  wire  _T_29 = io_enqueue_ready & io_enqueue_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_13 = tailPTR ? io_enqueue_bits_addr_index : addrBank_1_index; // @[WriteQueue.scala 127:24]
  wire  _GEN_76 = ~tailPTR; // @[WriteQueue.scala 128:24]
  wire  _GEN_16 = _GEN_76 | validBank_0; // @[WriteQueue.scala 128:24]
  wire  _GEN_17 = tailPTR | validBank_1; // @[WriteQueue.scala 128:24]
  wire  _T_31 = tailPTR - 1'h1; // @[WriteQueue.scala 130:35]
  wire  _GEN_23 = _T_29 ? _GEN_13 : addrBank_1_index; // @[WriteQueue.scala 126:25]
  wire  _GEN_26 = _T_29 ? _GEN_16 : validBank_0; // @[WriteQueue.scala 126:25]
  wire  _GEN_27 = _T_29 ? _GEN_17 : validBank_1; // @[WriteQueue.scala 126:25]
  wire  _T_32 = dispatchState == 2'h2; // @[WriteQueue.scala 136:34]
  wire  _T_33 = _T_32 & io_writeCommit; // @[WriteQueue.scala 136:54]
  wire [1:0] _GEN_77 = {{1'd0}, _T_33}; // @[WriteQueue.scala 136:16]
  wire [1:0] _T_35 = size - _GEN_77; // @[WriteQueue.scala 136:16]
  wire [1:0] _GEN_78 = {{1'd0}, _T_29}; // @[WriteQueue.scala 136:80]
  wire [1:0] _T_38 = _T_35 + _GEN_78; // @[WriteQueue.scala 136:80]
  wire  _T_39 = io_query_writeMask != 4'h0; // @[WriteQueue.scala 139:34]
  wire  _T_40 = _T_39 & isQueryHit; // @[WriteQueue.scala 139:42]
  wire [7:0] _T_44 = io_query_writeMask[3] ? io_query_data[31:24] : _GEN_7[31:24]; // @[WriteQueue.scala 142:12]
  wire [7:0] _T_48 = io_query_writeMask[2] ? io_query_data[23:16] : _GEN_7[23:16]; // @[WriteQueue.scala 142:12]
  wire [7:0] _T_52 = io_query_writeMask[1] ? io_query_data[15:8] : _GEN_7[15:8]; // @[WriteQueue.scala 142:12]
  wire [7:0] _T_56 = io_query_writeMask[0] ? io_query_data[7:0] : _GEN_7[7:0]; // @[WriteQueue.scala 142:12]
  wire [31:0] _T_59 = {_T_44,_T_48,_T_52,_T_56}; // @[Cat.scala 29:58]
  wire  _T_60 = 2'h0 == dispatchState; // @[Conditional.scala 37:30]
  wire  _T_61 = size != 2'h0; // @[WriteQueue.scala 153:17]
  wire  _T_62 = 2'h1 == dispatchState; // @[Conditional.scala 37:30]
  wire  _T_63 = io_dequeueAddr_ready & io_dequeueAddr_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_44 = _T_63 | hasAWHandshake; // @[WriteQueue.scala 160:33]
  wire  _T_64 = io_dequeueData_ready & io_dequeueData_valid; // @[Decoupled.scala 40:37]
  wire  _T_66 = lineWritePTR + 1'h1; // @[WriteQueue.scala 164:38]
  wire  _T_68 = 2'h2 == dispatchState; // @[Conditional.scala 37:30]
  wire  _T_70 = headPTR - 1'h1; // @[WriteQueue.scala 172:39]
  wire  _GEN_48 = ~headPTR ? 1'h0 : _GEN_26; // @[WriteQueue.scala 173:28]
  wire  _GEN_49 = headPTR ? 1'h0 : _GEN_27; // @[WriteQueue.scala 173:28]
  wire  _GEN_51 = io_writeCommit ? _GEN_48 : _GEN_26; // @[WriteQueue.scala 171:28]
  wire  _GEN_52 = io_writeCommit ? _GEN_49 : _GEN_27; // @[WriteQueue.scala 171:28]
  wire  _GEN_55 = _T_68 ? _GEN_51 : _GEN_26; // @[Conditional.scala 39:67]
  wire  _GEN_56 = _T_68 ? _GEN_52 : _GEN_27; // @[Conditional.scala 39:67]
  wire  _GEN_62 = _T_62 ? _GEN_26 : _GEN_55; // @[Conditional.scala 39:67]
  wire  _GEN_63 = _T_62 ? _GEN_27 : _GEN_56; // @[Conditional.scala 39:67]
  wire  _GEN_68 = _T_60 ? _GEN_26 : _GEN_62; // @[Conditional.scala 40:58]
  wire  _GEN_69 = _T_60 ? _GEN_27 : _GEN_63; // @[Conditional.scala 40:58]
  wire  _T_71 = ~io_writeCommit; // @[WriteQueue.scala 179:10]
  wire  _T_73 = _T_71 | _T_32; // @[WriteQueue.scala 179:26]
  wire  _T_75 = _T_73 | reset; // @[WriteQueue.scala 179:9]
  wire  _T_76 = ~_T_75; // @[WriteQueue.scala 179:9]
  wire  _T_77 = size == 2'h0; // @[WriteQueue.scala 181:15]
  wire  _GEN_71 = headPTR ? validBank_1 : validBank_0; // @[WriteQueue.scala 181:40]
  wire  _T_79 = _T_61 & _GEN_71; // @[WriteQueue.scala 181:40]
  wire  _T_80 = _T_77 | _T_79; // @[WriteQueue.scala 181:23]
  wire  _T_82 = _T_80 | reset; // @[WriteQueue.scala 181:9]
  wire  _T_83 = ~_T_82; // @[WriteQueue.scala 181:9]
  wire  _T_84 = headPTR != tailPTR; // @[WriteQueue.scala 182:18]
  wire  _T_85 = headPTR == tailPTR; // @[WriteQueue.scala 182:42]
  wire  _T_87 = size == 2'h2; // @[WriteQueue.scala 182:79]
  wire  _T_88 = _T_77 | _T_87; // @[WriteQueue.scala 182:71]
  wire  _T_89 = _T_85 & _T_88; // @[WriteQueue.scala 182:54]
  wire  _T_90 = _T_84 | _T_89; // @[WriteQueue.scala 182:30]
  wire  _T_92 = _T_90 | reset; // @[WriteQueue.scala 182:9]
  wire  _T_93 = ~_T_92; // @[WriteQueue.scala 182:9]
  assign io_enqueue_ready = size != 2'h2; // @[WriteQueue.scala 111:20]
  assign io_resp_valid = _T_15 & _T_16; // @[WriteQueue.scala 113:17]
  assign io_resp_bits = queryHitPos & io_query_addr_bankIndex ? dataBanks_1_1 : _GEN_6; // @[WriteQueue.scala 114:17]
  assign io_dequeueAddr_valid = _T_22 & _T_23; // @[WriteQueue.scala 118:24]
  assign io_dequeueAddr_bits_tag = headPTR ? addrBank_1_tag : addrBank_0_tag; // @[WriteQueue.scala 117:24]
  assign io_dequeueAddr_bits_index = headPTR ? addrBank_1_index : addrBank_0_index; // @[WriteQueue.scala 117:24]
  assign io_dequeueData_valid = dispatchState == 2'h1; // @[WriteQueue.scala 120:24]
  assign io_dequeueData_bits = headPTR & lineWritePTR ? dataBanks_1_1 : _GEN_2; // @[WriteQueue.scala 119:24]
  assign io_dequeueLast = lineWritePTR & _T_22; // @[WriteQueue.scala 122:18]
  assign io_holdOffNewMiss = _T_15 & _T_19; // @[WriteQueue.scala 106:21]
  assign io_size = size; // @[WriteQueue.scala 124:11]
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
  size = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  headPTR = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  tailPTR = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  lineWritePTR = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  dispatchState = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  addrBank_0_tag = _RAND_5[27:0];
  _RAND_6 = {1{`RANDOM}};
  addrBank_0_index = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  addrBank_1_tag = _RAND_7[27:0];
  _RAND_8 = {1{`RANDOM}};
  addrBank_1_index = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  validBank_0 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  validBank_1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  dataBanks_0_0 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  dataBanks_0_1 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  dataBanks_1_0 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  dataBanks_1_1 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  hasAWHandshake = _RAND_15[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      size <= 2'h2;
    end else begin
      size <= _T_38;
    end
    if (reset) begin
      headPTR <= 1'h0;
    end else if (!(_T_60)) begin
      if (!(_T_62)) begin
        if (_T_68) begin
          if (io_writeCommit) begin
            headPTR <= _T_70;
          end
        end
      end
    end
    if (reset) begin
      tailPTR <= 1'h0;
    end else if (_T_29) begin
      tailPTR <= _T_31;
    end
    if (reset) begin
      lineWritePTR <= 1'h0;
    end else if (_T_60) begin
      if (_T_61) begin
        lineWritePTR <= 1'h0;
      end
    end else if (_T_62) begin
      if (_T_64) begin
        lineWritePTR <= _T_66;
      end
    end
    if (reset) begin
      dispatchState <= 2'h0;
    end else if (_T_60) begin
      if (_T_61) begin
        dispatchState <= 2'h1;
      end
    end else if (_T_62) begin
      if (_T_64) begin
        if (lineWritePTR) begin
          dispatchState <= 2'h2;
        end
      end
    end else if (_T_68) begin
      if (io_writeCommit) begin
        dispatchState <= 2'h0;
      end
    end
    if (reset) begin
      addrBank_0_tag <= 28'h7;
    end else if (_T_29) begin
      if (~tailPTR) begin
        addrBank_0_tag <= io_enqueue_bits_addr_tag;
      end
    end
    if (reset) begin
      addrBank_0_index <= 1'h0;
    end else if (_T_29) begin
      if (~tailPTR) begin
        addrBank_0_index <= io_enqueue_bits_addr_index;
      end
    end
    if (reset) begin
      addrBank_1_tag <= 28'h7;
    end else if (_T_29) begin
      if (tailPTR) begin
        addrBank_1_tag <= io_enqueue_bits_addr_tag;
      end
    end
    addrBank_1_index <= reset | _GEN_23;
    validBank_0 <= reset | _GEN_68;
    validBank_1 <= reset | _GEN_69;
    if (reset) begin
      dataBanks_0_0 <= 32'h1c;
    end else if (_T_40) begin
      if (_GEN_74 & _GEN_75) begin
        dataBanks_0_0 <= _T_59;
      end else if (_T_29) begin
        if (~tailPTR) begin
          dataBanks_0_0 <= io_enqueue_bits_data_0;
        end
      end
    end else if (_T_29) begin
      if (~tailPTR) begin
        dataBanks_0_0 <= io_enqueue_bits_data_0;
      end
    end
    if (reset) begin
      dataBanks_0_1 <= 32'h1d;
    end else if (_T_40) begin
      if (_GEN_74 & io_query_addr_bankIndex) begin
        dataBanks_0_1 <= _T_59;
      end else if (_T_29) begin
        if (~tailPTR) begin
          dataBanks_0_1 <= io_enqueue_bits_data_1;
        end
      end
    end else if (_T_29) begin
      if (~tailPTR) begin
        dataBanks_0_1 <= io_enqueue_bits_data_1;
      end
    end
    if (reset) begin
      dataBanks_1_0 <= 32'h1e;
    end else if (_T_40) begin
      if (queryHitPos & _GEN_75) begin
        dataBanks_1_0 <= _T_59;
      end else if (_T_29) begin
        if (tailPTR) begin
          dataBanks_1_0 <= io_enqueue_bits_data_0;
        end
      end
    end else if (_T_29) begin
      if (tailPTR) begin
        dataBanks_1_0 <= io_enqueue_bits_data_0;
      end
    end
    if (reset) begin
      dataBanks_1_1 <= 32'h1f;
    end else if (_T_40) begin
      if (queryHitPos & io_query_addr_bankIndex) begin
        dataBanks_1_1 <= _T_59;
      end else if (_T_29) begin
        if (tailPTR) begin
          dataBanks_1_1 <= io_enqueue_bits_data_1;
        end
      end
    end else if (_T_29) begin
      if (tailPTR) begin
        dataBanks_1_1 <= io_enqueue_bits_data_1;
      end
    end
    if (reset) begin
      hasAWHandshake <= 1'h0;
    end else if (_T_60) begin
      if (_T_61) begin
        hasAWHandshake <= 1'h0;
      end
    end else if (_T_62) begin
      hasAWHandshake <= _GEN_44;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_76) begin
          $fwrite(32'h80000002,"Assertion failed: when dispatch state is not wait for commit, write commit should not be high\n    at WriteQueue.scala:179 assert(!io.writeCommit || dispatchState === dWaitForCommit, \"when dispatch state is not wait for commit, write commit should not be high\")\n"); // @[WriteQueue.scala 179:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_76) begin
          $fatal; // @[WriteQueue.scala 179:9]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_83) begin
          $fwrite(32'h80000002,"Assertion failed\n    at WriteQueue.scala:181 assert(size === 0.U || (size =/= 0.U && validBank(headPTR)))\n"); // @[WriteQueue.scala 181:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_83) begin
          $fatal; // @[WriteQueue.scala 181:9]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_93) begin
          $fwrite(32'h80000002,"Assertion failed\n    at WriteQueue.scala:182 assert(headPTR =/= tailPTR || (headPTR === tailPTR && (size === 0.U || size === capacity.U)))\n"); // @[WriteQueue.scala 182:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_93) begin
          $fatal; // @[WriteQueue.scala 182:9]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module QueryTop(
  input         clock,
  input         reset,
  input  [27:0] io_fetchQuery_tagValid_0_tag,
  input         io_fetchQuery_tagValid_0_valid,
  input  [27:0] io_fetchQuery_tagValid_1_tag,
  input         io_fetchQuery_tagValid_1_valid,
  input  [27:0] io_fetchQuery_phyTag,
  input         io_fetchQuery_index,
  input         io_fetchQuery_bankIndex,
  input         io_fetchQuery_valid,
  input  [31:0] io_fetchQuery_writeData,
  input  [3:0]  io_fetchQuery_writeMask,
  input         io_fetchQuery_invalidate,
  output        io_writeBack_valid,
  output        io_writeBack_bits_addr_index,
  output        io_writeBack_bits_addr_waySel,
  output [27:0] io_writeBack_bits_tagValid_tag,
  output [31:0] io_writeBack_bits_data_0,
  output [31:0] io_writeBack_bits_data_1,
  input         io_axi_ar_ready,
  output        io_axi_ar_valid,
  output [31:0] io_axi_ar_bits_addr,
  output        io_axi_r_ready,
  input         io_axi_r_valid,
  input  [31:0] io_axi_r_bits_data,
  input         io_axi_r_bits_last,
  input         io_axi_aw_ready,
  output        io_axi_aw_valid,
  output [31:0] io_axi_aw_bits_addr,
  input         io_axi_w_ready,
  output        io_axi_w_valid,
  output [31:0] io_axi_w_bits_data,
  output        io_axi_w_bits_last,
  output        io_axi_b_ready,
  input         io_axi_b_valid,
  input  [31:0] io_dirtyData_0,
  input  [31:0] io_dirtyData_1,
  output        io_queryCommit_indexSel,
  output        io_queryCommit_waySel,
  output        io_queryCommit_bankIndexSel,
  output [31:0] io_queryCommit_writeData,
  output        io_queryCommit_writeEnable,
  output [3:0]  io_queryCommit_writeMask,
  output [31:0] io_queryCommit_readData,
  output        io_queryCommit_readDataValid,
  output        io_hit,
  output        io_ready,
  output        io_readyForInvalidate,
  output        io_invalidateAllValid,
  output        io_dirtyWay
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
`endif // RANDOMIZE_REG_INIT
  wire [27:0] comparator_io_tagValid_0_tag; // @[QueryTop.scala 55:28]
  wire  comparator_io_tagValid_0_valid; // @[QueryTop.scala 55:28]
  wire [27:0] comparator_io_tagValid_1_tag; // @[QueryTop.scala 55:28]
  wire  comparator_io_tagValid_1_valid; // @[QueryTop.scala 55:28]
  wire [27:0] comparator_io_phyTag; // @[QueryTop.scala 55:28]
  wire  comparator_io_index; // @[QueryTop.scala 55:28]
  wire [27:0] comparator_io_mshr_tag; // @[QueryTop.scala 55:28]
  wire  comparator_io_mshr_index; // @[QueryTop.scala 55:28]
  wire  comparator_io_bankHitWay_valid; // @[QueryTop.scala 55:28]
  wire  comparator_io_bankHitWay_bits; // @[QueryTop.scala 55:28]
  wire  comparator_io_addrHitInRefillBuffer; // @[QueryTop.scala 55:28]
  wire  mshr_clock; // @[QueryTop.scala 56:28]
  wire  mshr_io_recordMiss_valid; // @[QueryTop.scala 56:28]
  wire [27:0] mshr_io_recordMiss_bits_addr_tag; // @[QueryTop.scala 56:28]
  wire  mshr_io_recordMiss_bits_addr_index; // @[QueryTop.scala 56:28]
  wire  mshr_io_recordMiss_bits_addr_bankIndex; // @[QueryTop.scala 56:28]
  wire [27:0] mshr_io_recordMiss_bits_tagValidAtIndex_0_tag; // @[QueryTop.scala 56:28]
  wire  mshr_io_recordMiss_bits_tagValidAtIndex_0_valid; // @[QueryTop.scala 56:28]
  wire [27:0] mshr_io_recordMiss_bits_tagValidAtIndex_1_tag; // @[QueryTop.scala 56:28]
  wire  mshr_io_recordMiss_bits_tagValidAtIndex_1_valid; // @[QueryTop.scala 56:28]
  wire [27:0] mshr_io_extractMiss_addr_tag; // @[QueryTop.scala 56:28]
  wire  mshr_io_extractMiss_addr_index; // @[QueryTop.scala 56:28]
  wire  mshr_io_extractMiss_addr_bankIndex; // @[QueryTop.scala 56:28]
  wire [27:0] mshr_io_extractMiss_tagValidAtIndex_0_tag; // @[QueryTop.scala 56:28]
  wire  mshr_io_extractMiss_tagValidAtIndex_0_valid; // @[QueryTop.scala 56:28]
  wire [27:0] mshr_io_extractMiss_tagValidAtIndex_1_tag; // @[QueryTop.scala 56:28]
  wire  mshr_io_extractMiss_tagValidAtIndex_1_valid; // @[QueryTop.scala 56:28]
  wire  refillBuffer_clock; // @[QueryTop.scala 57:28]
  wire  refillBuffer_reset; // @[QueryTop.scala 57:28]
  wire  refillBuffer_io_request_valid; // @[QueryTop.scala 57:28]
  wire  refillBuffer_io_request_bits_bankIndex; // @[QueryTop.scala 57:28]
  wire [3:0] refillBuffer_io_request_bits_writeMask; // @[QueryTop.scala 57:28]
  wire [31:0] refillBuffer_io_request_bits_writeData; // @[QueryTop.scala 57:28]
  wire  refillBuffer_io_inputData_valid; // @[QueryTop.scala 57:28]
  wire [31:0] refillBuffer_io_inputData_bits; // @[QueryTop.scala 57:28]
  wire  refillBuffer_io_finish; // @[QueryTop.scala 57:28]
  wire  refillBuffer_io_queryResult_valid; // @[QueryTop.scala 57:28]
  wire [31:0] refillBuffer_io_queryResult_bits; // @[QueryTop.scala 57:28]
  wire [31:0] refillBuffer_io_allData_0; // @[QueryTop.scala 57:28]
  wire [31:0] refillBuffer_io_allData_1; // @[QueryTop.scala 57:28]
  wire  refillBuffer_io_dataDirty; // @[QueryTop.scala 57:28]
  wire  axiRead_clock; // @[QueryTop.scala 58:28]
  wire  axiRead_reset; // @[QueryTop.scala 58:28]
  wire  axiRead_io_axi_ar_ready; // @[QueryTop.scala 58:28]
  wire  axiRead_io_axi_ar_valid; // @[QueryTop.scala 58:28]
  wire [31:0] axiRead_io_axi_ar_bits_addr; // @[QueryTop.scala 58:28]
  wire  axiRead_io_axi_r_ready; // @[QueryTop.scala 58:28]
  wire  axiRead_io_axi_r_valid; // @[QueryTop.scala 58:28]
  wire [31:0] axiRead_io_axi_r_bits_data; // @[QueryTop.scala 58:28]
  wire  axiRead_io_axi_r_bits_last; // @[QueryTop.scala 58:28]
  wire  axiRead_io_addrReq_valid; // @[QueryTop.scala 58:28]
  wire [31:0] axiRead_io_addrReq_bits; // @[QueryTop.scala 58:28]
  wire  axiRead_io_transferData_valid; // @[QueryTop.scala 58:28]
  wire [31:0] axiRead_io_transferData_bits; // @[QueryTop.scala 58:28]
  wire  axiRead_io_finishTransfer; // @[QueryTop.scala 58:28]
  wire  axiWrite_clock; // @[QueryTop.scala 59:28]
  wire  axiWrite_reset; // @[QueryTop.scala 59:28]
  wire  axiWrite_io_addrRequest_ready; // @[QueryTop.scala 59:28]
  wire  axiWrite_io_addrRequest_valid; // @[QueryTop.scala 59:28]
  wire [27:0] axiWrite_io_addrRequest_bits_tag; // @[QueryTop.scala 59:28]
  wire  axiWrite_io_addrRequest_bits_index; // @[QueryTop.scala 59:28]
  wire  axiWrite_io_data_ready; // @[QueryTop.scala 59:28]
  wire  axiWrite_io_data_valid; // @[QueryTop.scala 59:28]
  wire [31:0] axiWrite_io_data_bits; // @[QueryTop.scala 59:28]
  wire  axiWrite_io_dataLast; // @[QueryTop.scala 59:28]
  wire  axiWrite_io_axi_aw_ready; // @[QueryTop.scala 59:28]
  wire  axiWrite_io_axi_aw_valid; // @[QueryTop.scala 59:28]
  wire [31:0] axiWrite_io_axi_aw_bits_addr; // @[QueryTop.scala 59:28]
  wire  axiWrite_io_axi_w_ready; // @[QueryTop.scala 59:28]
  wire  axiWrite_io_axi_w_valid; // @[QueryTop.scala 59:28]
  wire [31:0] axiWrite_io_axi_w_bits_data; // @[QueryTop.scala 59:28]
  wire  axiWrite_io_axi_w_bits_last; // @[QueryTop.scala 59:28]
  wire  axiWrite_io_axi_b_ready; // @[QueryTop.scala 59:28]
  wire  axiWrite_io_axi_b_valid; // @[QueryTop.scala 59:28]
  wire  axiWrite_io_writeCommit; // @[QueryTop.scala 59:28]
  wire  writeQueue_clock; // @[QueryTop.scala 63:26]
  wire  writeQueue_reset; // @[QueryTop.scala 63:26]
  wire  writeQueue_io_enqueue_ready; // @[QueryTop.scala 63:26]
  wire  writeQueue_io_enqueue_valid; // @[QueryTop.scala 63:26]
  wire [27:0] writeQueue_io_enqueue_bits_addr_tag; // @[QueryTop.scala 63:26]
  wire  writeQueue_io_enqueue_bits_addr_index; // @[QueryTop.scala 63:26]
  wire [31:0] writeQueue_io_enqueue_bits_data_0; // @[QueryTop.scala 63:26]
  wire [31:0] writeQueue_io_enqueue_bits_data_1; // @[QueryTop.scala 63:26]
  wire [27:0] writeQueue_io_query_addr_phyTag; // @[QueryTop.scala 63:26]
  wire  writeQueue_io_query_addr_index; // @[QueryTop.scala 63:26]
  wire  writeQueue_io_query_addr_bankIndex; // @[QueryTop.scala 63:26]
  wire [31:0] writeQueue_io_query_data; // @[QueryTop.scala 63:26]
  wire [3:0] writeQueue_io_query_writeMask; // @[QueryTop.scala 63:26]
  wire  writeQueue_io_resp_valid; // @[QueryTop.scala 63:26]
  wire [31:0] writeQueue_io_resp_bits; // @[QueryTop.scala 63:26]
  wire  writeQueue_io_dequeueAddr_ready; // @[QueryTop.scala 63:26]
  wire  writeQueue_io_dequeueAddr_valid; // @[QueryTop.scala 63:26]
  wire [27:0] writeQueue_io_dequeueAddr_bits_tag; // @[QueryTop.scala 63:26]
  wire  writeQueue_io_dequeueAddr_bits_index; // @[QueryTop.scala 63:26]
  wire  writeQueue_io_dequeueData_ready; // @[QueryTop.scala 63:26]
  wire  writeQueue_io_dequeueData_valid; // @[QueryTop.scala 63:26]
  wire [31:0] writeQueue_io_dequeueData_bits; // @[QueryTop.scala 63:26]
  wire  writeQueue_io_dequeueLast; // @[QueryTop.scala 63:26]
  wire  writeQueue_io_holdOffNewMiss; // @[QueryTop.scala 63:26]
  wire  writeQueue_io_writeCommit; // @[QueryTop.scala 63:26]
  wire [1:0] writeQueue_io_size; // @[QueryTop.scala 63:26]
  reg  lruLine_0; // @[TrueLRUNM.scala 10:24]
  reg  lruLine_1; // @[TrueLRUNM.scala 10:24]
  reg  dirtyBanks_0_0; // @[QueryTop.scala 66:27]
  reg  dirtyBanks_0_1; // @[QueryTop.scala 66:27]
  reg  dirtyBanks_1_0; // @[QueryTop.scala 66:27]
  reg  dirtyBanks_1_1; // @[QueryTop.scala 66:27]
  reg [1:0] invalidateCounter; // @[QueryTop.scala 70:34]
  wire  passThrough = ~io_fetchQuery_valid; // @[QueryTop.scala 76:33]
  wire  dispatchToWriteQSucessful = writeQueue_io_enqueue_ready & writeQueue_io_enqueue_valid; // @[Decoupled.scala 40:37]
  reg [2:0] qState; // @[QueryTop.scala 107:79]
  wire  _T_30 = qState != 3'h3; // @[QueryTop.scala 179:57]
  wire  hitInBank = comparator_io_bankHitWay_valid & _T_30; // @[QueryTop.scala 179:47]
  wire  _T_27 = comparator_io_addrHitInRefillBuffer & refillBuffer_io_queryResult_valid; // @[QueryTop.scala 176:41]
  wire  _T_28 = qState == 3'h1; // @[QueryTop.scala 176:88]
  wire  hitInRefillBuffer = _T_27 & _T_28; // @[QueryTop.scala 176:78]
  wire  _T_5 = hitInBank | hitInRefillBuffer; // @[QueryTop.scala 96:28]
  wire  queryHit = _T_5 | writeQueue_io_resp_valid; // @[QueryTop.scala 96:49]
  reg  lruWayReg; // @[QueryTop.scala 100:22]
  wire  _GEN_82 = ~lruWayReg; // @[QueryTop.scala 103:77]
  wire  _GEN_1 = _GEN_82 & mshr_io_extractMiss_addr_index ? dirtyBanks_0_1 : dirtyBanks_0_0; // @[QueryTop.scala 103:77]
  wire  _GEN_83 = ~mshr_io_extractMiss_addr_index; // @[QueryTop.scala 103:77]
  wire  _GEN_2 = lruWayReg & _GEN_83 ? dirtyBanks_1_0 : _GEN_1; // @[QueryTop.scala 103:77]
  wire  _GEN_3 = lruWayReg & mshr_io_extractMiss_addr_index ? dirtyBanks_1_1 : _GEN_2; // @[QueryTop.scala 103:77]
  wire [27:0] _GEN_4 = mshr_io_extractMiss_tagValidAtIndex_0_tag; // @[QueryTop.scala 103:77]
  wire  _GEN_5 = mshr_io_extractMiss_tagValidAtIndex_0_valid; // @[QueryTop.scala 103:77]
  wire [27:0] _GEN_6 = lruWayReg ? mshr_io_extractMiss_tagValidAtIndex_1_tag : _GEN_4; // @[QueryTop.scala 103:77]
  wire  _GEN_7 = lruWayReg ? mshr_io_extractMiss_tagValidAtIndex_1_valid : _GEN_5; // @[QueryTop.scala 103:77]
  wire  evictWayDirty = _GEN_3 & _GEN_7; // @[QueryTop.scala 103:77]
  reg [2:0] qStateNext; // @[QueryTop.scala 109:27]
  wire  _T_6 = 3'h0 == qState; // @[Conditional.scala 37:30]
  wire  _T_7 = io_readyForInvalidate & io_fetchQuery_invalidate; // @[QueryTop.scala 115:40]
  wire  _T_21 = ~queryHit; // @[QueryTop.scala 172:14]
  wire  _T_22 = ~passThrough; // @[QueryTop.scala 172:27]
  wire  _T_23 = _T_21 & _T_22; // @[QueryTop.scala 172:24]
  wire  isIdle = qState == 3'h0; // @[QueryTop.scala 150:23]
  wire  _T_24 = _T_23 & isIdle; // @[QueryTop.scala 172:40]
  wire  _T_25 = ~writeQueue_io_holdOffNewMiss; // @[QueryTop.scala 172:53]
  wire  newMiss = _T_24 & _T_25; // @[QueryTop.scala 172:50]
  wire  _T_8 = 3'h1 == qState; // @[Conditional.scala 37:30]
  wire  _T_10 = 3'h2 == qState; // @[Conditional.scala 37:30]
  wire  _T_11 = 3'h3 == qState; // @[Conditional.scala 37:30]
  wire  _T_12 = 3'h4 == qState; // @[Conditional.scala 37:30]
  wire  _T_13 = invalidateCounter == 2'h0; // @[QueryTop.scala 137:30]
  wire  _T_14 = 3'h5 == qState; // @[Conditional.scala 37:30]
  wire  _T_15 = writeQueue_io_size == 2'h0; // @[QueryTop.scala 143:31]
  wire  isEvict = qState == 3'h2; // @[QueryTop.scala 156:24]
  wire  isWriteBack = qState == 3'h3; // @[QueryTop.scala 159:28]
  wire  _T_16 = ~axiRead_io_finishTransfer; // @[QueryTop.scala 162:45]
  wire  _T_17 = _T_28 & _T_16; // @[QueryTop.scala 162:42]
  wire  resourceFree = isIdle | _T_17; // @[QueryTop.scala 162:29]
  wire  _T_18 = qState == 3'h4; // @[QueryTop.scala 164:15]
  wire [1:0] _T_20 = invalidateCounter - 2'h1; // @[QueryTop.scala 165:44]
  wire  _T_32 = _T_28 & axiRead_io_finishTransfer; // @[QueryTop.scala 192:15]
  wire  _T_33 = _T_32 | isEvict; // @[QueryTop.scala 192:45]
  wire  _T_35 = io_fetchQuery_writeMask != 4'h0; // @[QueryTop.scala 200:72]
  wire  _T_36 = hitInBank & _T_35; // @[QueryTop.scala 200:45]
  wire  _T_37 = _T_36 & resourceFree; // @[QueryTop.scala 200:80]
  wire  _T_42 = hitInBank & resourceFree; // @[QueryTop.scala 218:28]
  wire  _T_43 = _T_42 | hitInRefillBuffer; // @[QueryTop.scala 218:45]
  wire  _T_44 = _T_43 | writeQueue_io_resp_valid; // @[QueryTop.scala 218:66]
  wire  _T_48 = passThrough | _T_42; // @[QueryTop.scala 219:28]
  wire  _T_49 = _T_48 | hitInRefillBuffer; // @[QueryTop.scala 219:59]
  wire  _T_50 = _T_49 | writeQueue_io_resp_valid; // @[QueryTop.scala 219:80]
  wire  _T_51 = qState != 3'h4; // @[QueryTop.scala 219:110]
  wire  _T_52 = _T_50 & _T_51; // @[QueryTop.scala 219:100]
  wire  _T_53 = qState != 3'h5; // @[QueryTop.scala 219:138]
  wire  _T_55 = qStateNext == 3'h4; // @[QueryTop.scala 221:33]
  reg [1:0] _T_56; // @[QueryTop.scala 221:59]
  wire [1:0] _T_57 = _T_55 ? _T_56 : {{1'd0}, lruWayReg}; // @[QueryTop.scala 221:21]
  wire  _T_60 = _T_15 & isIdle; // @[QueryTop.scala 224:63]
  reg  _T_63; // @[QueryTop.scala 224:35]
  wire  _T_68 = comparator_io_addrHitInRefillBuffer & _T_28; // @[QueryTop.scala 239:85]
  wire  _T_69 = _T_68 & io_fetchQuery_valid; // @[QueryTop.scala 239:107]
  wire [31:0] _T_73 = {io_fetchQuery_phyTag,io_fetchQuery_index,io_fetchQuery_bankIndex,2'h0}; // @[Cat.scala 29:58]
  wire [31:0] _T_76 = {mshr_io_extractMiss_addr_tag,mshr_io_extractMiss_addr_index,mshr_io_extractMiss_addr_bankIndex,2'h0}; // @[Cat.scala 29:58]
  wire  _T_79 = isEvict & _GEN_3; // @[QueryTop.scala 255:65]
  wire  _T_80 = _T_79 & _GEN_7; // @[QueryTop.scala 255:123]
  wire  _GEN_84 = ~invalidateCounter[0]; // @[QueryTop.scala 263:95]
  wire  _GEN_30 = _GEN_84 & io_fetchQuery_index ? dirtyBanks_0_1 : dirtyBanks_0_0; // @[QueryTop.scala 263:95]
  wire  _GEN_85 = ~io_fetchQuery_index; // @[QueryTop.scala 263:95]
  wire  _GEN_31 = invalidateCounter[0] & _GEN_85 ? dirtyBanks_1_0 : _GEN_30; // @[QueryTop.scala 263:95]
  wire  _GEN_32 = invalidateCounter[0] & io_fetchQuery_index ? dirtyBanks_1_1 : _GEN_31; // @[QueryTop.scala 263:95]
  wire  _GEN_36 = invalidateCounter[0] ? io_fetchQuery_tagValid_1_valid : io_fetchQuery_tagValid_0_valid; // @[QueryTop.scala 263:95]
  wire  _T_84 = _GEN_32 & _GEN_36; // @[QueryTop.scala 263:95]
  reg  _T_85; // @[QueryTop.scala 263:43]
  reg [27:0] _T_87; // @[QueryTop.scala 264:51]
  wire [29:0] _T_89 = {io_fetchQuery_phyTag,io_fetchQuery_index,io_fetchQuery_bankIndex}; // @[Cat.scala 29:58]
  wire  _T_99 = dispatchToWriteQSucessful & isEvict; // @[QueryTop.scala 287:35]
  wire  _GEN_46 = _GEN_82 & _GEN_83 ? 1'h0 : dirtyBanks_0_0; // @[QueryTop.scala 288:59]
  wire  _GEN_47 = _GEN_82 & mshr_io_extractMiss_addr_index ? 1'h0 : dirtyBanks_0_1; // @[QueryTop.scala 288:59]
  wire  _GEN_48 = lruWayReg & _GEN_83 ? 1'h0 : dirtyBanks_1_0; // @[QueryTop.scala 288:59]
  wire  _GEN_49 = lruWayReg & mshr_io_extractMiss_addr_index ? 1'h0 : dirtyBanks_1_1; // @[QueryTop.scala 288:59]
  wire  _GEN_50 = _T_99 ? _GEN_46 : dirtyBanks_0_0; // @[QueryTop.scala 287:57]
  wire  _GEN_51 = _T_99 ? _GEN_47 : dirtyBanks_0_1; // @[QueryTop.scala 287:57]
  wire  _GEN_52 = _T_99 ? _GEN_48 : dirtyBanks_1_0; // @[QueryTop.scala 287:57]
  wire  _GEN_53 = _T_99 ? _GEN_49 : dirtyBanks_1_1; // @[QueryTop.scala 287:57]
  wire  _dirtyBanks_lruWayReg_mshr_io_extractMiss_addr_index_2 = refillBuffer_io_dataDirty; // @[QueryTop.scala 291:59 QueryTop.scala 291:59]
  wire  _GEN_54 = _GEN_82 & _GEN_83 ? _dirtyBanks_lruWayReg_mshr_io_extractMiss_addr_index_2 : _GEN_50; // @[QueryTop.scala 291:59]
  wire  _GEN_55 = _GEN_82 & mshr_io_extractMiss_addr_index ? _dirtyBanks_lruWayReg_mshr_io_extractMiss_addr_index_2 : _GEN_51; // @[QueryTop.scala 291:59]
  wire  _GEN_56 = lruWayReg & _GEN_83 ? _dirtyBanks_lruWayReg_mshr_io_extractMiss_addr_index_2 : _GEN_52; // @[QueryTop.scala 291:59]
  wire  _GEN_57 = lruWayReg & mshr_io_extractMiss_addr_index ? _dirtyBanks_lruWayReg_mshr_io_extractMiss_addr_index_2 : _GEN_53; // @[QueryTop.scala 291:59]
  wire  _GEN_58 = isWriteBack ? _GEN_54 : _GEN_50; // @[QueryTop.scala 290:31]
  wire  _GEN_59 = isWriteBack ? _GEN_55 : _GEN_51; // @[QueryTop.scala 290:31]
  wire  _GEN_60 = isWriteBack ? _GEN_56 : _GEN_52; // @[QueryTop.scala 290:31]
  wire  _GEN_61 = isWriteBack ? _GEN_57 : _GEN_53; // @[QueryTop.scala 290:31]
  wire  _T_103 = dispatchToWriteQSucessful & _T_55; // @[QueryTop.scala 293:35]
  reg [1:0] _T_104; // @[QueryTop.scala 294:23]
  wire  _GEN_94 = ~_T_104[0]; // @[QueryTop.scala 294:65]
  wire  _GEN_62 = _GEN_94 & _GEN_85 ? 1'h0 : _GEN_58; // @[QueryTop.scala 294:65]
  wire  _GEN_63 = _GEN_94 & io_fetchQuery_index ? 1'h0 : _GEN_59; // @[QueryTop.scala 294:65]
  wire  _GEN_64 = _T_104[0] & _GEN_85 ? 1'h0 : _GEN_60; // @[QueryTop.scala 294:65]
  wire  _GEN_65 = _T_104[0] & io_fetchQuery_index ? 1'h0 : _GEN_61; // @[QueryTop.scala 294:65]
  wire  _GEN_66 = _T_103 ? _GEN_62 : _GEN_58; // @[QueryTop.scala 293:68]
  wire  _GEN_67 = _T_103 ? _GEN_63 : _GEN_59; // @[QueryTop.scala 293:68]
  wire  _GEN_68 = _T_103 ? _GEN_64 : _GEN_60; // @[QueryTop.scala 293:68]
  wire  _GEN_69 = _T_103 ? _GEN_65 : _GEN_61; // @[QueryTop.scala 293:68]
  wire  _GEN_98 = ~io_queryCommit_waySel; // @[QueryTop.scala 297:64]
  wire  _GEN_99 = ~io_queryCommit_indexSel; // @[QueryTop.scala 297:64]
  wire  _GEN_100 = _GEN_98 & _GEN_99; // @[QueryTop.scala 297:64]
  wire  _GEN_70 = _GEN_100 | _GEN_66; // @[QueryTop.scala 297:64]
  wire  _GEN_102 = _GEN_98 & io_queryCommit_indexSel; // @[QueryTop.scala 297:64]
  wire  _GEN_71 = _GEN_102 | _GEN_67; // @[QueryTop.scala 297:64]
  wire  _GEN_104 = io_queryCommit_waySel & _GEN_99; // @[QueryTop.scala 297:64]
  wire  _GEN_72 = _GEN_104 | _GEN_68; // @[QueryTop.scala 297:64]
  wire  _GEN_105 = io_queryCommit_waySel & io_queryCommit_indexSel; // @[QueryTop.scala 297:64]
  wire  _GEN_73 = _GEN_105 | _GEN_69; // @[QueryTop.scala 297:64]
  wire  _GEN_74 = io_queryCommit_writeEnable ? _GEN_70 : _GEN_66; // @[QueryTop.scala 296:36]
  wire  _GEN_75 = io_queryCommit_writeEnable ? _GEN_71 : _GEN_67; // @[QueryTop.scala 296:36]
  wire  _GEN_76 = io_queryCommit_writeEnable ? _GEN_72 : _GEN_68; // @[QueryTop.scala 296:36]
  wire  _GEN_77 = io_queryCommit_writeEnable ? _GEN_73 : _GEN_69; // @[QueryTop.scala 296:36]
  wire  _T_107 = hitInBank & io_fetchQuery_valid; // @[QueryTop.scala 300:18]
  wire  _lruLine_io_fetchQuery_index = comparator_io_bankHitWay_bits; // @[TrueLRUNM.scala 14:20 TrueLRUNM.scala 14:20]
  wire  _T_108 = io_fetchQuery_valid & io_fetchQuery_invalidate; // @[QueryTop.scala 304:32]
  wire  _T_109 = ~_T_108; // @[QueryTop.scala 304:10]
  wire  _T_111 = _T_109 | reset; // @[QueryTop.scala 304:9]
  wire  _T_112 = ~_T_111; // @[QueryTop.scala 304:9]
  MissComparator comparator ( // @[QueryTop.scala 55:28]
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
  MSHR mshr ( // @[QueryTop.scala 56:28]
    .clock(mshr_clock),
    .io_recordMiss_valid(mshr_io_recordMiss_valid),
    .io_recordMiss_bits_addr_tag(mshr_io_recordMiss_bits_addr_tag),
    .io_recordMiss_bits_addr_index(mshr_io_recordMiss_bits_addr_index),
    .io_recordMiss_bits_addr_bankIndex(mshr_io_recordMiss_bits_addr_bankIndex),
    .io_recordMiss_bits_tagValidAtIndex_0_tag(mshr_io_recordMiss_bits_tagValidAtIndex_0_tag),
    .io_recordMiss_bits_tagValidAtIndex_0_valid(mshr_io_recordMiss_bits_tagValidAtIndex_0_valid),
    .io_recordMiss_bits_tagValidAtIndex_1_tag(mshr_io_recordMiss_bits_tagValidAtIndex_1_tag),
    .io_recordMiss_bits_tagValidAtIndex_1_valid(mshr_io_recordMiss_bits_tagValidAtIndex_1_valid),
    .io_extractMiss_addr_tag(mshr_io_extractMiss_addr_tag),
    .io_extractMiss_addr_index(mshr_io_extractMiss_addr_index),
    .io_extractMiss_addr_bankIndex(mshr_io_extractMiss_addr_bankIndex),
    .io_extractMiss_tagValidAtIndex_0_tag(mshr_io_extractMiss_tagValidAtIndex_0_tag),
    .io_extractMiss_tagValidAtIndex_0_valid(mshr_io_extractMiss_tagValidAtIndex_0_valid),
    .io_extractMiss_tagValidAtIndex_1_tag(mshr_io_extractMiss_tagValidAtIndex_1_tag),
    .io_extractMiss_tagValidAtIndex_1_valid(mshr_io_extractMiss_tagValidAtIndex_1_valid)
  );
  MaskedRefillBuffer refillBuffer ( // @[QueryTop.scala 57:28]
    .clock(refillBuffer_clock),
    .reset(refillBuffer_reset),
    .io_request_valid(refillBuffer_io_request_valid),
    .io_request_bits_bankIndex(refillBuffer_io_request_bits_bankIndex),
    .io_request_bits_writeMask(refillBuffer_io_request_bits_writeMask),
    .io_request_bits_writeData(refillBuffer_io_request_bits_writeData),
    .io_inputData_valid(refillBuffer_io_inputData_valid),
    .io_inputData_bits(refillBuffer_io_inputData_bits),
    .io_finish(refillBuffer_io_finish),
    .io_queryResult_valid(refillBuffer_io_queryResult_valid),
    .io_queryResult_bits(refillBuffer_io_queryResult_bits),
    .io_allData_0(refillBuffer_io_allData_0),
    .io_allData_1(refillBuffer_io_allData_1),
    .io_dataDirty(refillBuffer_io_dataDirty)
  );
  AXIReadPort axiRead ( // @[QueryTop.scala 58:28]
    .clock(axiRead_clock),
    .reset(axiRead_reset),
    .io_axi_ar_ready(axiRead_io_axi_ar_ready),
    .io_axi_ar_valid(axiRead_io_axi_ar_valid),
    .io_axi_ar_bits_addr(axiRead_io_axi_ar_bits_addr),
    .io_axi_r_ready(axiRead_io_axi_r_ready),
    .io_axi_r_valid(axiRead_io_axi_r_valid),
    .io_axi_r_bits_data(axiRead_io_axi_r_bits_data),
    .io_axi_r_bits_last(axiRead_io_axi_r_bits_last),
    .io_addrReq_valid(axiRead_io_addrReq_valid),
    .io_addrReq_bits(axiRead_io_addrReq_bits),
    .io_transferData_valid(axiRead_io_transferData_valid),
    .io_transferData_bits(axiRead_io_transferData_bits),
    .io_finishTransfer(axiRead_io_finishTransfer)
  );
  AXIWritePort axiWrite ( // @[QueryTop.scala 59:28]
    .clock(axiWrite_clock),
    .reset(axiWrite_reset),
    .io_addrRequest_ready(axiWrite_io_addrRequest_ready),
    .io_addrRequest_valid(axiWrite_io_addrRequest_valid),
    .io_addrRequest_bits_tag(axiWrite_io_addrRequest_bits_tag),
    .io_addrRequest_bits_index(axiWrite_io_addrRequest_bits_index),
    .io_data_ready(axiWrite_io_data_ready),
    .io_data_valid(axiWrite_io_data_valid),
    .io_data_bits(axiWrite_io_data_bits),
    .io_dataLast(axiWrite_io_dataLast),
    .io_axi_aw_ready(axiWrite_io_axi_aw_ready),
    .io_axi_aw_valid(axiWrite_io_axi_aw_valid),
    .io_axi_aw_bits_addr(axiWrite_io_axi_aw_bits_addr),
    .io_axi_w_ready(axiWrite_io_axi_w_ready),
    .io_axi_w_valid(axiWrite_io_axi_w_valid),
    .io_axi_w_bits_data(axiWrite_io_axi_w_bits_data),
    .io_axi_w_bits_last(axiWrite_io_axi_w_bits_last),
    .io_axi_b_ready(axiWrite_io_axi_b_ready),
    .io_axi_b_valid(axiWrite_io_axi_b_valid),
    .io_writeCommit(axiWrite_io_writeCommit)
  );
  WriteQueue writeQueue ( // @[QueryTop.scala 63:26]
    .clock(writeQueue_clock),
    .reset(writeQueue_reset),
    .io_enqueue_ready(writeQueue_io_enqueue_ready),
    .io_enqueue_valid(writeQueue_io_enqueue_valid),
    .io_enqueue_bits_addr_tag(writeQueue_io_enqueue_bits_addr_tag),
    .io_enqueue_bits_addr_index(writeQueue_io_enqueue_bits_addr_index),
    .io_enqueue_bits_data_0(writeQueue_io_enqueue_bits_data_0),
    .io_enqueue_bits_data_1(writeQueue_io_enqueue_bits_data_1),
    .io_query_addr_phyTag(writeQueue_io_query_addr_phyTag),
    .io_query_addr_index(writeQueue_io_query_addr_index),
    .io_query_addr_bankIndex(writeQueue_io_query_addr_bankIndex),
    .io_query_data(writeQueue_io_query_data),
    .io_query_writeMask(writeQueue_io_query_writeMask),
    .io_resp_valid(writeQueue_io_resp_valid),
    .io_resp_bits(writeQueue_io_resp_bits),
    .io_dequeueAddr_ready(writeQueue_io_dequeueAddr_ready),
    .io_dequeueAddr_valid(writeQueue_io_dequeueAddr_valid),
    .io_dequeueAddr_bits_tag(writeQueue_io_dequeueAddr_bits_tag),
    .io_dequeueAddr_bits_index(writeQueue_io_dequeueAddr_bits_index),
    .io_dequeueData_ready(writeQueue_io_dequeueData_ready),
    .io_dequeueData_valid(writeQueue_io_dequeueData_valid),
    .io_dequeueData_bits(writeQueue_io_dequeueData_bits),
    .io_dequeueLast(writeQueue_io_dequeueLast),
    .io_holdOffNewMiss(writeQueue_io_holdOffNewMiss),
    .io_writeCommit(writeQueue_io_writeCommit),
    .io_size(writeQueue_io_size)
  );
  assign io_writeBack_valid = qState == 3'h3; // @[QueryTop.scala 205:36]
  assign io_writeBack_bits_addr_index = mshr_io_extractMiss_addr_index; // @[QueryTop.scala 206:36]
  assign io_writeBack_bits_addr_waySel = lruWayReg; // @[QueryTop.scala 207:36]
  assign io_writeBack_bits_tagValid_tag = mshr_io_extractMiss_addr_tag; // @[QueryTop.scala 208:36]
  assign io_writeBack_bits_data_0 = refillBuffer_io_allData_0; // @[QueryTop.scala 210:36]
  assign io_writeBack_bits_data_1 = refillBuffer_io_allData_1; // @[QueryTop.scala 210:36]
  assign io_axi_ar_valid = axiRead_io_axi_ar_valid; // @[QueryTop.scala 183:19]
  assign io_axi_ar_bits_addr = axiRead_io_axi_ar_bits_addr; // @[QueryTop.scala 183:19]
  assign io_axi_r_ready = axiRead_io_axi_r_ready; // @[QueryTop.scala 184:19]
  assign io_axi_aw_valid = axiWrite_io_axi_aw_valid; // @[QueryTop.scala 186:13]
  assign io_axi_aw_bits_addr = axiWrite_io_axi_aw_bits_addr; // @[QueryTop.scala 186:13]
  assign io_axi_w_valid = axiWrite_io_axi_w_valid; // @[QueryTop.scala 187:13]
  assign io_axi_w_bits_data = axiWrite_io_axi_w_bits_data; // @[QueryTop.scala 187:13]
  assign io_axi_w_bits_last = axiWrite_io_axi_w_bits_last; // @[QueryTop.scala 187:13]
  assign io_axi_b_ready = axiWrite_io_axi_b_ready; // @[QueryTop.scala 188:13]
  assign io_queryCommit_indexSel = _T_33 ? mshr_io_extractMiss_addr_index : io_fetchQuery_index; // @[QueryTop.scala 191:27]
  assign io_queryCommit_waySel = comparator_io_bankHitWay_bits; // @[QueryTop.scala 196:32]
  assign io_queryCommit_bankIndexSel = io_fetchQuery_bankIndex; // @[QueryTop.scala 197:32]
  assign io_queryCommit_writeData = io_fetchQuery_writeData; // @[QueryTop.scala 198:32]
  assign io_queryCommit_writeEnable = _T_37 & _T_22; // @[QueryTop.scala 200:32]
  assign io_queryCommit_writeMask = io_fetchQuery_writeMask; // @[QueryTop.scala 199:32]
  assign io_queryCommit_readData = writeQueue_io_resp_valid ? writeQueue_io_resp_bits : refillBuffer_io_queryResult_bits; // @[QueryTop.scala 202:32]
  assign io_queryCommit_readDataValid = hitInRefillBuffer | writeQueue_io_resp_valid; // @[QueryTop.scala 203:32]
  assign io_hit = _T_44 & _T_22; // @[QueryTop.scala 218:12]
  assign io_ready = _T_52 & _T_53; // @[QueryTop.scala 219:12]
  assign io_readyForInvalidate = _T_63; // @[QueryTop.scala 224:25]
  assign io_invalidateAllValid = _T_18 & _T_13; // @[QueryTop.scala 227:25]
  assign io_dirtyWay = _T_57[0]; // @[QueryTop.scala 221:15]
  assign comparator_io_tagValid_0_tag = io_fetchQuery_tagValid_0_tag; // @[QueryTop.scala 229:26]
  assign comparator_io_tagValid_0_valid = io_fetchQuery_tagValid_0_valid; // @[QueryTop.scala 229:26]
  assign comparator_io_tagValid_1_tag = io_fetchQuery_tagValid_1_tag; // @[QueryTop.scala 229:26]
  assign comparator_io_tagValid_1_valid = io_fetchQuery_tagValid_1_valid; // @[QueryTop.scala 229:26]
  assign comparator_io_phyTag = io_fetchQuery_phyTag; // @[QueryTop.scala 230:26]
  assign comparator_io_index = io_fetchQuery_index; // @[QueryTop.scala 231:26]
  assign comparator_io_mshr_tag = mshr_io_extractMiss_addr_tag; // @[QueryTop.scala 232:26]
  assign comparator_io_mshr_index = mshr_io_extractMiss_addr_index; // @[QueryTop.scala 232:26]
  assign mshr_clock = clock;
  assign mshr_io_recordMiss_valid = _T_24 & _T_25; // @[QueryTop.scala 281:43]
  assign mshr_io_recordMiss_bits_addr_tag = io_fetchQuery_phyTag; // @[QueryTop.scala 282:43]
  assign mshr_io_recordMiss_bits_addr_index = io_fetchQuery_index; // @[QueryTop.scala 283:43]
  assign mshr_io_recordMiss_bits_addr_bankIndex = io_fetchQuery_bankIndex; // @[QueryTop.scala 284:43]
  assign mshr_io_recordMiss_bits_tagValidAtIndex_0_tag = io_fetchQuery_tagValid_0_tag; // @[QueryTop.scala 285:43]
  assign mshr_io_recordMiss_bits_tagValidAtIndex_0_valid = io_fetchQuery_tagValid_0_valid; // @[QueryTop.scala 285:43]
  assign mshr_io_recordMiss_bits_tagValidAtIndex_1_tag = io_fetchQuery_tagValid_1_tag; // @[QueryTop.scala 285:43]
  assign mshr_io_recordMiss_bits_tagValidAtIndex_1_valid = io_fetchQuery_tagValid_1_valid; // @[QueryTop.scala 285:43]
  assign refillBuffer_clock = clock;
  assign refillBuffer_reset = reset;
  assign refillBuffer_io_request_valid = _T_24 & _T_25; // @[QueryTop.scala 236:42]
  assign refillBuffer_io_request_bits_bankIndex = io_fetchQuery_bankIndex; // @[QueryTop.scala 237:42]
  assign refillBuffer_io_request_bits_writeMask = _T_69 ? io_fetchQuery_writeMask : 4'h0; // @[QueryTop.scala 239:42]
  assign refillBuffer_io_request_bits_writeData = io_fetchQuery_writeData; // @[QueryTop.scala 238:42]
  assign refillBuffer_io_inputData_valid = axiRead_io_transferData_valid; // @[QueryTop.scala 240:42]
  assign refillBuffer_io_inputData_bits = axiRead_io_transferData_bits; // @[QueryTop.scala 240:42]
  assign refillBuffer_io_finish = axiRead_io_finishTransfer; // @[QueryTop.scala 241:42]
  assign axiRead_clock = clock;
  assign axiRead_reset = reset;
  assign axiRead_io_axi_ar_ready = io_axi_ar_ready; // @[QueryTop.scala 183:19]
  assign axiRead_io_axi_r_valid = io_axi_r_valid; // @[QueryTop.scala 184:19]
  assign axiRead_io_axi_r_bits_data = io_axi_r_bits_data; // @[QueryTop.scala 184:19]
  assign axiRead_io_axi_r_bits_last = io_axi_r_bits_last; // @[QueryTop.scala 184:19]
  assign axiRead_io_addrReq_valid = _T_24 & _T_25; // @[QueryTop.scala 253:28]
  assign axiRead_io_addrReq_bits = newMiss ? _T_73 : _T_76; // @[QueryTop.scala 243:27]
  assign axiWrite_clock = clock;
  assign axiWrite_reset = reset;
  assign axiWrite_io_addrRequest_valid = writeQueue_io_dequeueAddr_valid; // @[QueryTop.scala 275:27]
  assign axiWrite_io_addrRequest_bits_tag = writeQueue_io_dequeueAddr_bits_tag; // @[QueryTop.scala 275:27]
  assign axiWrite_io_addrRequest_bits_index = writeQueue_io_dequeueAddr_bits_index; // @[QueryTop.scala 275:27]
  assign axiWrite_io_data_valid = writeQueue_io_dequeueData_valid; // @[QueryTop.scala 276:27]
  assign axiWrite_io_data_bits = writeQueue_io_dequeueData_bits; // @[QueryTop.scala 276:27]
  assign axiWrite_io_dataLast = writeQueue_io_dequeueLast; // @[QueryTop.scala 277:27]
  assign axiWrite_io_axi_aw_ready = io_axi_aw_ready; // @[QueryTop.scala 186:13]
  assign axiWrite_io_axi_w_ready = io_axi_w_ready; // @[QueryTop.scala 187:13]
  assign axiWrite_io_axi_b_valid = io_axi_b_valid; // @[QueryTop.scala 188:13]
  assign writeQueue_clock = clock;
  assign writeQueue_reset = reset;
  assign writeQueue_io_enqueue_valid = _T_55 ? _T_85 : _T_80; // @[QueryTop.scala 255:41 QueryTop.scala 263:33]
  assign writeQueue_io_enqueue_bits_addr_tag = _T_55 ? _T_87 : _GEN_6; // @[QueryTop.scala 256:41 QueryTop.scala 264:41]
  assign writeQueue_io_enqueue_bits_addr_index = _T_55 ? io_fetchQuery_index : mshr_io_extractMiss_addr_index; // @[QueryTop.scala 257:41 QueryTop.scala 265:43]
  assign writeQueue_io_enqueue_bits_data_0 = io_dirtyData_0; // @[QueryTop.scala 258:41 QueryTop.scala 266:37]
  assign writeQueue_io_enqueue_bits_data_1 = io_dirtyData_1; // @[QueryTop.scala 258:41 QueryTop.scala 266:37]
  assign writeQueue_io_query_addr_phyTag = _T_89[29:2]; // @[QueryTop.scala 268:28]
  assign writeQueue_io_query_addr_index = _T_89[1]; // @[QueryTop.scala 268:28]
  assign writeQueue_io_query_addr_bankIndex = _T_89[0]; // @[QueryTop.scala 268:28]
  assign writeQueue_io_query_data = io_fetchQuery_writeData; // @[QueryTop.scala 272:33]
  assign writeQueue_io_query_writeMask = passThrough ? 4'h0 : io_fetchQuery_writeMask; // @[QueryTop.scala 271:33]
  assign writeQueue_io_dequeueAddr_ready = axiWrite_io_addrRequest_ready; // @[QueryTop.scala 275:27]
  assign writeQueue_io_dequeueData_ready = axiWrite_io_data_ready; // @[QueryTop.scala 276:27]
  assign writeQueue_io_writeCommit = axiWrite_io_writeCommit; // @[QueryTop.scala 273:29]
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
  lruLine_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  lruLine_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  dirtyBanks_0_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  dirtyBanks_0_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  dirtyBanks_1_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  dirtyBanks_1_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  invalidateCounter = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  qState = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  lruWayReg = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  qStateNext = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  _T_56 = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  _T_63 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  _T_85 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  _T_87 = _RAND_13[27:0];
  _RAND_14 = {1{`RANDOM}};
  _T_104 = _RAND_14[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      lruLine_0 <= 1'h0;
    end else if (_T_107) begin
      if (~io_fetchQuery_index) begin
        lruLine_0 <= _lruLine_io_fetchQuery_index;
      end
    end
    if (reset) begin
      lruLine_1 <= 1'h0;
    end else if (_T_107) begin
      if (io_fetchQuery_index) begin
        lruLine_1 <= _lruLine_io_fetchQuery_index;
      end
    end
    dirtyBanks_0_0 <= reset | _GEN_74;
    dirtyBanks_0_1 <= reset | _GEN_75;
    dirtyBanks_1_0 <= reset | _GEN_76;
    dirtyBanks_1_1 <= reset | _GEN_77;
    if (reset) begin
      invalidateCounter <= 2'h0;
    end else if (_T_18) begin
      invalidateCounter <= _T_20;
    end else if (_T_6) begin
      if (!(newMiss)) begin
        if (_T_7) begin
          invalidateCounter <= 2'h1;
        end
      end
    end
    if (reset) begin
      qState <= 3'h0;
    end else if (_T_6) begin
      if (newMiss) begin
        qState <= 3'h1;
      end else if (_T_7) begin
        qState <= 3'h4;
      end
    end else if (_T_8) begin
      if (axiRead_io_finishTransfer) begin
        if (evictWayDirty) begin
          qState <= 3'h2;
        end else begin
          qState <= 3'h3;
        end
      end
    end else if (_T_10) begin
      if (dispatchToWriteQSucessful) begin
        qState <= 3'h3;
      end
    end else if (_T_11) begin
      qState <= 3'h0;
    end else if (_T_12) begin
      if (_T_13) begin
        qState <= 3'h5;
      end
    end else if (_T_14) begin
      if (_T_15) begin
        qState <= 3'h0;
      end
    end
    if (!(_T_6)) begin
      if (_T_8) begin
        if (!(axiRead_io_finishTransfer)) begin
          if (mshr_io_extractMiss_addr_index) begin
            lruWayReg <= lruLine_1;
          end else begin
            lruWayReg <= lruLine_0;
          end
        end
      end
    end
    if (reset) begin
      qStateNext <= 3'h0;
    end else begin
      qStateNext <= qState;
    end
    _T_56 <= invalidateCounter;
    _T_63 <= _T_60 & passThrough;
    if (reset) begin
      _T_85 <= 1'h0;
    end else begin
      _T_85 <= _T_84;
    end
    if (invalidateCounter[0]) begin
      _T_87 <= io_fetchQuery_tagValid_1_tag;
    end else begin
      _T_87 <= io_fetchQuery_tagValid_0_tag;
    end
    _T_104 <= invalidateCounter;
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_112) begin
          $fwrite(32'h80000002,"Assertion failed\n    at QueryTop.scala:304 assert(!(io.fetchQuery.valid && io.fetchQuery.invalidate))\n"); // @[QueryTop.scala 304:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_112) begin
          $fatal; // @[QueryTop.scala 304:9]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module VerificationBRam(
  input         clock,
  input         reset,
  input         io_addr,
  input  [31:0] io_writeVector,
  input  [31:0] io_inData,
  output [31:0] io_outData
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] bank_0; // @[VerificationBRam.scala 16:33]
  reg [31:0] bank_1; // @[VerificationBRam.scala 16:33]
  reg [31:0] readHoldRegister; // @[VerificationBRam.scala 18:29]
  wire [31:0] _GEN_1 = io_addr ? bank_1 : bank_0; // @[VerificationBRam.scala 20:20]
  wire  _T_1 = io_writeVector != 32'h0; // @[VerificationBRam.scala 21:23]
  wire [7:0] _T_5 = io_writeVector[3] ? io_inData[31:24] : _GEN_1[31:24]; // @[VerificationBRam.scala 23:34]
  wire [7:0] _T_9 = io_writeVector[2] ? io_inData[23:16] : _GEN_1[23:16]; // @[VerificationBRam.scala 23:34]
  wire [7:0] _T_13 = io_writeVector[1] ? io_inData[15:8] : _GEN_1[15:8]; // @[VerificationBRam.scala 23:34]
  wire [7:0] _T_17 = io_writeVector[0] ? io_inData[7:0] : _GEN_1[7:0]; // @[VerificationBRam.scala 23:34]
  wire [31:0] _T_20 = {_T_5,_T_9,_T_13,_T_17}; // @[Cat.scala 29:58]
  assign io_outData = readHoldRegister; // @[VerificationBRam.scala 19:20]
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
  bank_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  bank_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  readHoldRegister = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      bank_0 <= 32'h0;
    end else if (_T_1) begin
      if (~io_addr) begin
        bank_0 <= _T_20;
      end
    end
    if (reset) begin
      bank_1 <= 32'h6;
    end else if (_T_1) begin
      if (io_addr) begin
        bank_1 <= _T_20;
      end
    end
    if (io_addr) begin
      readHoldRegister <= bank_1;
    end else begin
      readHoldRegister <= bank_0;
    end
  end
endmodule
module VerificationBRam_1(
  input         clock,
  input         reset,
  input         io_addr,
  input  [31:0] io_writeVector,
  input  [31:0] io_inData,
  output [31:0] io_outData
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] bank_0; // @[VerificationBRam.scala 16:33]
  reg [31:0] bank_1; // @[VerificationBRam.scala 16:33]
  reg [31:0] readHoldRegister; // @[VerificationBRam.scala 18:29]
  wire [31:0] _GEN_1 = io_addr ? bank_1 : bank_0; // @[VerificationBRam.scala 20:20]
  wire  _T_1 = io_writeVector != 32'h0; // @[VerificationBRam.scala 21:23]
  wire [7:0] _T_5 = io_writeVector[3] ? io_inData[31:24] : _GEN_1[31:24]; // @[VerificationBRam.scala 23:34]
  wire [7:0] _T_9 = io_writeVector[2] ? io_inData[23:16] : _GEN_1[23:16]; // @[VerificationBRam.scala 23:34]
  wire [7:0] _T_13 = io_writeVector[1] ? io_inData[15:8] : _GEN_1[15:8]; // @[VerificationBRam.scala 23:34]
  wire [7:0] _T_17 = io_writeVector[0] ? io_inData[7:0] : _GEN_1[7:0]; // @[VerificationBRam.scala 23:34]
  wire [31:0] _T_20 = {_T_5,_T_9,_T_13,_T_17}; // @[Cat.scala 29:58]
  assign io_outData = readHoldRegister; // @[VerificationBRam.scala 19:20]
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
  bank_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  bank_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  readHoldRegister = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      bank_0 <= 32'h1;
    end else if (_T_1) begin
      if (~io_addr) begin
        bank_0 <= _T_20;
      end
    end
    if (reset) begin
      bank_1 <= 32'h7;
    end else if (_T_1) begin
      if (io_addr) begin
        bank_1 <= _T_20;
      end
    end
    if (io_addr) begin
      readHoldRegister <= bank_1;
    end else begin
      readHoldRegister <= bank_0;
    end
  end
endmodule
module VerificationBRam_2(
  input         clock,
  input         reset,
  input         io_addr,
  input  [31:0] io_writeVector,
  input  [31:0] io_inData,
  output [31:0] io_outData
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] bank_0; // @[VerificationBRam.scala 16:33]
  reg [31:0] bank_1; // @[VerificationBRam.scala 16:33]
  reg [31:0] readHoldRegister; // @[VerificationBRam.scala 18:29]
  wire [31:0] _GEN_1 = io_addr ? bank_1 : bank_0; // @[VerificationBRam.scala 20:20]
  wire  _T_1 = io_writeVector != 32'h0; // @[VerificationBRam.scala 21:23]
  wire [7:0] _T_5 = io_writeVector[3] ? io_inData[31:24] : _GEN_1[31:24]; // @[VerificationBRam.scala 23:34]
  wire [7:0] _T_9 = io_writeVector[2] ? io_inData[23:16] : _GEN_1[23:16]; // @[VerificationBRam.scala 23:34]
  wire [7:0] _T_13 = io_writeVector[1] ? io_inData[15:8] : _GEN_1[15:8]; // @[VerificationBRam.scala 23:34]
  wire [7:0] _T_17 = io_writeVector[0] ? io_inData[7:0] : _GEN_1[7:0]; // @[VerificationBRam.scala 23:34]
  wire [31:0] _T_20 = {_T_5,_T_9,_T_13,_T_17}; // @[Cat.scala 29:58]
  assign io_outData = readHoldRegister; // @[VerificationBRam.scala 19:20]
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
  bank_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  bank_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  readHoldRegister = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      bank_0 <= 32'h8;
    end else if (_T_1) begin
      if (~io_addr) begin
        bank_0 <= _T_20;
      end
    end
    if (reset) begin
      bank_1 <= 32'he;
    end else if (_T_1) begin
      if (io_addr) begin
        bank_1 <= _T_20;
      end
    end
    if (io_addr) begin
      readHoldRegister <= bank_1;
    end else begin
      readHoldRegister <= bank_0;
    end
  end
endmodule
module VerificationBRam_3(
  input         clock,
  input         reset,
  input         io_addr,
  input  [31:0] io_writeVector,
  input  [31:0] io_inData,
  output [31:0] io_outData
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] bank_0; // @[VerificationBRam.scala 16:33]
  reg [31:0] bank_1; // @[VerificationBRam.scala 16:33]
  reg [31:0] readHoldRegister; // @[VerificationBRam.scala 18:29]
  wire [31:0] _GEN_1 = io_addr ? bank_1 : bank_0; // @[VerificationBRam.scala 20:20]
  wire  _T_1 = io_writeVector != 32'h0; // @[VerificationBRam.scala 21:23]
  wire [7:0] _T_5 = io_writeVector[3] ? io_inData[31:24] : _GEN_1[31:24]; // @[VerificationBRam.scala 23:34]
  wire [7:0] _T_9 = io_writeVector[2] ? io_inData[23:16] : _GEN_1[23:16]; // @[VerificationBRam.scala 23:34]
  wire [7:0] _T_13 = io_writeVector[1] ? io_inData[15:8] : _GEN_1[15:8]; // @[VerificationBRam.scala 23:34]
  wire [7:0] _T_17 = io_writeVector[0] ? io_inData[7:0] : _GEN_1[7:0]; // @[VerificationBRam.scala 23:34]
  wire [31:0] _T_20 = {_T_5,_T_9,_T_13,_T_17}; // @[Cat.scala 29:58]
  assign io_outData = readHoldRegister; // @[VerificationBRam.scala 19:20]
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
  bank_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  bank_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  readHoldRegister = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      bank_0 <= 32'h9;
    end else if (_T_1) begin
      if (~io_addr) begin
        bank_0 <= _T_20;
      end
    end
    if (reset) begin
      bank_1 <= 32'hf;
    end else if (_T_1) begin
      if (io_addr) begin
        bank_1 <= _T_20;
      end
    end
    if (io_addr) begin
      readHoldRegister <= bank_1;
    end else begin
      readHoldRegister <= bank_0;
    end
  end
endmodule
module DataBanks(
  input         clock,
  input         reset,
  input         io_way_bank_0_0_addr,
  input  [3:0]  io_way_bank_0_0_writeMask,
  input  [31:0] io_way_bank_0_0_writeData,
  output [31:0] io_way_bank_0_0_readData,
  input         io_way_bank_0_1_addr,
  input  [3:0]  io_way_bank_0_1_writeMask,
  input  [31:0] io_way_bank_0_1_writeData,
  output [31:0] io_way_bank_0_1_readData,
  input         io_way_bank_1_0_addr,
  input  [3:0]  io_way_bank_1_0_writeMask,
  input  [31:0] io_way_bank_1_0_writeData,
  output [31:0] io_way_bank_1_0_readData,
  input         io_way_bank_1_1_addr,
  input  [3:0]  io_way_bank_1_1_writeMask,
  input  [31:0] io_way_bank_1_1_writeData,
  output [31:0] io_way_bank_1_1_readData
);
  wire  data_cache_bank_way_0_bankOffset_0_clock; // @[DataBanks.scala 19:24]
  wire  data_cache_bank_way_0_bankOffset_0_reset; // @[DataBanks.scala 19:24]
  wire  data_cache_bank_way_0_bankOffset_0_io_addr; // @[DataBanks.scala 19:24]
  wire [31:0] data_cache_bank_way_0_bankOffset_0_io_writeVector; // @[DataBanks.scala 19:24]
  wire [31:0] data_cache_bank_way_0_bankOffset_0_io_inData; // @[DataBanks.scala 19:24]
  wire [31:0] data_cache_bank_way_0_bankOffset_0_io_outData; // @[DataBanks.scala 19:24]
  wire  data_cache_bank_way_0_bankOffset_1_clock; // @[DataBanks.scala 19:24]
  wire  data_cache_bank_way_0_bankOffset_1_reset; // @[DataBanks.scala 19:24]
  wire  data_cache_bank_way_0_bankOffset_1_io_addr; // @[DataBanks.scala 19:24]
  wire [31:0] data_cache_bank_way_0_bankOffset_1_io_writeVector; // @[DataBanks.scala 19:24]
  wire [31:0] data_cache_bank_way_0_bankOffset_1_io_inData; // @[DataBanks.scala 19:24]
  wire [31:0] data_cache_bank_way_0_bankOffset_1_io_outData; // @[DataBanks.scala 19:24]
  wire  data_cache_bank_way_1_bankOffset_0_clock; // @[DataBanks.scala 19:24]
  wire  data_cache_bank_way_1_bankOffset_0_reset; // @[DataBanks.scala 19:24]
  wire  data_cache_bank_way_1_bankOffset_0_io_addr; // @[DataBanks.scala 19:24]
  wire [31:0] data_cache_bank_way_1_bankOffset_0_io_writeVector; // @[DataBanks.scala 19:24]
  wire [31:0] data_cache_bank_way_1_bankOffset_0_io_inData; // @[DataBanks.scala 19:24]
  wire [31:0] data_cache_bank_way_1_bankOffset_0_io_outData; // @[DataBanks.scala 19:24]
  wire  data_cache_bank_way_1_bankOffset_1_clock; // @[DataBanks.scala 19:24]
  wire  data_cache_bank_way_1_bankOffset_1_reset; // @[DataBanks.scala 19:24]
  wire  data_cache_bank_way_1_bankOffset_1_io_addr; // @[DataBanks.scala 19:24]
  wire [31:0] data_cache_bank_way_1_bankOffset_1_io_writeVector; // @[DataBanks.scala 19:24]
  wire [31:0] data_cache_bank_way_1_bankOffset_1_io_inData; // @[DataBanks.scala 19:24]
  wire [31:0] data_cache_bank_way_1_bankOffset_1_io_outData; // @[DataBanks.scala 19:24]
  VerificationBRam data_cache_bank_way_0_bankOffset_0 ( // @[DataBanks.scala 19:24]
    .clock(data_cache_bank_way_0_bankOffset_0_clock),
    .reset(data_cache_bank_way_0_bankOffset_0_reset),
    .io_addr(data_cache_bank_way_0_bankOffset_0_io_addr),
    .io_writeVector(data_cache_bank_way_0_bankOffset_0_io_writeVector),
    .io_inData(data_cache_bank_way_0_bankOffset_0_io_inData),
    .io_outData(data_cache_bank_way_0_bankOffset_0_io_outData)
  );
  VerificationBRam_1 data_cache_bank_way_0_bankOffset_1 ( // @[DataBanks.scala 19:24]
    .clock(data_cache_bank_way_0_bankOffset_1_clock),
    .reset(data_cache_bank_way_0_bankOffset_1_reset),
    .io_addr(data_cache_bank_way_0_bankOffset_1_io_addr),
    .io_writeVector(data_cache_bank_way_0_bankOffset_1_io_writeVector),
    .io_inData(data_cache_bank_way_0_bankOffset_1_io_inData),
    .io_outData(data_cache_bank_way_0_bankOffset_1_io_outData)
  );
  VerificationBRam_2 data_cache_bank_way_1_bankOffset_0 ( // @[DataBanks.scala 19:24]
    .clock(data_cache_bank_way_1_bankOffset_0_clock),
    .reset(data_cache_bank_way_1_bankOffset_0_reset),
    .io_addr(data_cache_bank_way_1_bankOffset_0_io_addr),
    .io_writeVector(data_cache_bank_way_1_bankOffset_0_io_writeVector),
    .io_inData(data_cache_bank_way_1_bankOffset_0_io_inData),
    .io_outData(data_cache_bank_way_1_bankOffset_0_io_outData)
  );
  VerificationBRam_3 data_cache_bank_way_1_bankOffset_1 ( // @[DataBanks.scala 19:24]
    .clock(data_cache_bank_way_1_bankOffset_1_clock),
    .reset(data_cache_bank_way_1_bankOffset_1_reset),
    .io_addr(data_cache_bank_way_1_bankOffset_1_io_addr),
    .io_writeVector(data_cache_bank_way_1_bankOffset_1_io_writeVector),
    .io_inData(data_cache_bank_way_1_bankOffset_1_io_inData),
    .io_outData(data_cache_bank_way_1_bankOffset_1_io_outData)
  );
  assign io_way_bank_0_0_readData = data_cache_bank_way_0_bankOffset_0_io_outData; // @[DataBanks.scala 25:34]
  assign io_way_bank_0_1_readData = data_cache_bank_way_0_bankOffset_1_io_outData; // @[DataBanks.scala 25:34]
  assign io_way_bank_1_0_readData = data_cache_bank_way_1_bankOffset_0_io_outData; // @[DataBanks.scala 25:34]
  assign io_way_bank_1_1_readData = data_cache_bank_way_1_bankOffset_1_io_outData; // @[DataBanks.scala 25:34]
  assign data_cache_bank_way_0_bankOffset_0_clock = clock;
  assign data_cache_bank_way_0_bankOffset_0_reset = reset;
  assign data_cache_bank_way_0_bankOffset_0_io_addr = io_way_bank_0_0_addr; // @[DataBanks.scala 22:34]
  assign data_cache_bank_way_0_bankOffset_0_io_writeVector = {{28'd0}, io_way_bank_0_0_writeMask}; // @[DataBanks.scala 23:34]
  assign data_cache_bank_way_0_bankOffset_0_io_inData = io_way_bank_0_0_writeData; // @[DataBanks.scala 24:34]
  assign data_cache_bank_way_0_bankOffset_1_clock = clock;
  assign data_cache_bank_way_0_bankOffset_1_reset = reset;
  assign data_cache_bank_way_0_bankOffset_1_io_addr = io_way_bank_0_1_addr; // @[DataBanks.scala 22:34]
  assign data_cache_bank_way_0_bankOffset_1_io_writeVector = {{28'd0}, io_way_bank_0_1_writeMask}; // @[DataBanks.scala 23:34]
  assign data_cache_bank_way_0_bankOffset_1_io_inData = io_way_bank_0_1_writeData; // @[DataBanks.scala 24:34]
  assign data_cache_bank_way_1_bankOffset_0_clock = clock;
  assign data_cache_bank_way_1_bankOffset_0_reset = reset;
  assign data_cache_bank_way_1_bankOffset_0_io_addr = io_way_bank_1_0_addr; // @[DataBanks.scala 22:34]
  assign data_cache_bank_way_1_bankOffset_0_io_writeVector = {{28'd0}, io_way_bank_1_0_writeMask}; // @[DataBanks.scala 23:34]
  assign data_cache_bank_way_1_bankOffset_0_io_inData = io_way_bank_1_0_writeData; // @[DataBanks.scala 24:34]
  assign data_cache_bank_way_1_bankOffset_1_clock = clock;
  assign data_cache_bank_way_1_bankOffset_1_reset = reset;
  assign data_cache_bank_way_1_bankOffset_1_io_addr = io_way_bank_1_1_addr; // @[DataBanks.scala 22:34]
  assign data_cache_bank_way_1_bankOffset_1_io_writeVector = {{28'd0}, io_way_bank_1_1_writeMask}; // @[DataBanks.scala 23:34]
  assign data_cache_bank_way_1_bankOffset_1_io_inData = io_way_bank_1_1_writeData; // @[DataBanks.scala 24:34]
endmodule
module CachePipelineStage_1(
  input         clock,
  input         reset,
  input         io_in_waySel,
  input         io_in_bankIndexSel,
  input  [31:0] io_in_readData,
  input         io_in_readDataValid,
  output        io_out_waySel,
  output        io_out_bankIndexSel,
  output [31:0] io_out_readData,
  output        io_out_readDataValid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg  pipelineReg_waySel; // @[CachePipelineStage.scala 24:28]
  reg  pipelineReg_bankIndexSel; // @[CachePipelineStage.scala 24:28]
  reg [31:0] pipelineReg_readData; // @[CachePipelineStage.scala 24:28]
  reg  pipelineReg_readDataValid; // @[CachePipelineStage.scala 24:28]
  assign io_out_waySel = pipelineReg_waySel; // @[CachePipelineStage.scala 30:10]
  assign io_out_bankIndexSel = pipelineReg_bankIndexSel; // @[CachePipelineStage.scala 30:10]
  assign io_out_readData = pipelineReg_readData; // @[CachePipelineStage.scala 30:10]
  assign io_out_readDataValid = pipelineReg_readDataValid; // @[CachePipelineStage.scala 30:10]
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
  pipelineReg_waySel = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  pipelineReg_bankIndexSel = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  pipelineReg_readData = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  pipelineReg_readDataValid = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      pipelineReg_waySel <= 1'h0;
    end else begin
      pipelineReg_waySel <= io_in_waySel;
    end
    if (reset) begin
      pipelineReg_bankIndexSel <= 1'h0;
    end else begin
      pipelineReg_bankIndexSel <= io_in_bankIndexSel;
    end
    if (reset) begin
      pipelineReg_readData <= 32'h0;
    end else begin
      pipelineReg_readData <= io_in_readData;
    end
    if (reset) begin
      pipelineReg_readDataValid <= 1'h0;
    end else begin
      pipelineReg_readDataValid <= io_in_readDataValid;
    end
  end
endmodule
module DCacheController(
  input   io_stage2Ready,
  output  io_inputReady
);
  assign io_inputReady = io_stage2Ready; // @[DCacheController.scala 16:22]
endmodule
module DataCache(
  input         clock,
  input         reset,
  output        io_cacheInstruction_ready,
  input         io_cacheInstruction_valid,
  output        io_request_ready,
  input         io_request_valid,
  input  [19:0] io_request_bits_tag,
  input  [11:0] io_request_bits_physicalIndex,
  input  [3:0]  io_request_bits_writeMask,
  input  [31:0] io_request_bits_writeData,
  output        io_commit,
  output [31:0] io_readData,
  input         io_axi_ar_ready,
  output        io_axi_ar_valid,
  output [31:0] io_axi_ar_bits_addr,
  output        io_axi_r_ready,
  input         io_axi_r_valid,
  input  [31:0] io_axi_r_bits_data,
  input         io_axi_r_bits_last,
  input         io_axi_aw_ready,
  output        io_axi_aw_valid,
  output [31:0] io_axi_aw_bits_addr,
  input         io_axi_w_ready,
  output        io_axi_w_valid,
  output [31:0] io_axi_w_bits_data,
  output        io_axi_w_bits_last,
  output        io_axi_b_ready,
  input         io_axi_b_valid
);
  wire  fetch_clock; // @[DataCache.scala 40:28]
  wire  fetch_reset; // @[DataCache.scala 40:28]
  wire [19:0] fetch_io_addr_translatedTag; // @[DataCache.scala 40:28]
  wire [11:0] fetch_io_addr_physicalIndex; // @[DataCache.scala 40:28]
  wire  fetch_io_write_valid; // @[DataCache.scala 40:28]
  wire  fetch_io_write_bits_addr_index; // @[DataCache.scala 40:28]
  wire  fetch_io_write_bits_addr_waySel; // @[DataCache.scala 40:28]
  wire [27:0] fetch_io_write_bits_tagValid_tag; // @[DataCache.scala 40:28]
  wire  fetch_io_invalidateAll; // @[DataCache.scala 40:28]
  wire [27:0] fetch_io_addrResult_phyTag; // @[DataCache.scala 40:28]
  wire  fetch_io_addrResult_index; // @[DataCache.scala 40:28]
  wire  fetch_io_addrResult_bankIndex; // @[DataCache.scala 40:28]
  wire [27:0] fetch_io_tagValid_0_tag; // @[DataCache.scala 40:28]
  wire  fetch_io_tagValid_0_valid; // @[DataCache.scala 40:28]
  wire [27:0] fetch_io_tagValid_1_tag; // @[DataCache.scala 40:28]
  wire  fetch_io_tagValid_1_valid; // @[DataCache.scala 40:28]
  wire  fetch_query_clock; // @[DataCache.scala 41:28]
  wire  fetch_query_reset; // @[DataCache.scala 41:28]
  wire  fetch_query_io_stall; // @[DataCache.scala 41:28]
  wire [27:0] fetch_query_io_in_tagValid_0_tag; // @[DataCache.scala 41:28]
  wire  fetch_query_io_in_tagValid_0_valid; // @[DataCache.scala 41:28]
  wire [27:0] fetch_query_io_in_tagValid_1_tag; // @[DataCache.scala 41:28]
  wire  fetch_query_io_in_tagValid_1_valid; // @[DataCache.scala 41:28]
  wire [27:0] fetch_query_io_in_phyTag; // @[DataCache.scala 41:28]
  wire  fetch_query_io_in_index; // @[DataCache.scala 41:28]
  wire  fetch_query_io_in_bankIndex; // @[DataCache.scala 41:28]
  wire  fetch_query_io_in_valid; // @[DataCache.scala 41:28]
  wire [31:0] fetch_query_io_in_writeData; // @[DataCache.scala 41:28]
  wire [3:0] fetch_query_io_in_writeMask; // @[DataCache.scala 41:28]
  wire  fetch_query_io_in_invalidate; // @[DataCache.scala 41:28]
  wire [27:0] fetch_query_io_out_tagValid_0_tag; // @[DataCache.scala 41:28]
  wire  fetch_query_io_out_tagValid_0_valid; // @[DataCache.scala 41:28]
  wire [27:0] fetch_query_io_out_tagValid_1_tag; // @[DataCache.scala 41:28]
  wire  fetch_query_io_out_tagValid_1_valid; // @[DataCache.scala 41:28]
  wire [27:0] fetch_query_io_out_phyTag; // @[DataCache.scala 41:28]
  wire  fetch_query_io_out_index; // @[DataCache.scala 41:28]
  wire  fetch_query_io_out_bankIndex; // @[DataCache.scala 41:28]
  wire  fetch_query_io_out_valid; // @[DataCache.scala 41:28]
  wire [31:0] fetch_query_io_out_writeData; // @[DataCache.scala 41:28]
  wire [3:0] fetch_query_io_out_writeMask; // @[DataCache.scala 41:28]
  wire  fetch_query_io_out_invalidate; // @[DataCache.scala 41:28]
  wire  query_clock; // @[DataCache.scala 42:28]
  wire  query_reset; // @[DataCache.scala 42:28]
  wire [27:0] query_io_fetchQuery_tagValid_0_tag; // @[DataCache.scala 42:28]
  wire  query_io_fetchQuery_tagValid_0_valid; // @[DataCache.scala 42:28]
  wire [27:0] query_io_fetchQuery_tagValid_1_tag; // @[DataCache.scala 42:28]
  wire  query_io_fetchQuery_tagValid_1_valid; // @[DataCache.scala 42:28]
  wire [27:0] query_io_fetchQuery_phyTag; // @[DataCache.scala 42:28]
  wire  query_io_fetchQuery_index; // @[DataCache.scala 42:28]
  wire  query_io_fetchQuery_bankIndex; // @[DataCache.scala 42:28]
  wire  query_io_fetchQuery_valid; // @[DataCache.scala 42:28]
  wire [31:0] query_io_fetchQuery_writeData; // @[DataCache.scala 42:28]
  wire [3:0] query_io_fetchQuery_writeMask; // @[DataCache.scala 42:28]
  wire  query_io_fetchQuery_invalidate; // @[DataCache.scala 42:28]
  wire  query_io_writeBack_valid; // @[DataCache.scala 42:28]
  wire  query_io_writeBack_bits_addr_index; // @[DataCache.scala 42:28]
  wire  query_io_writeBack_bits_addr_waySel; // @[DataCache.scala 42:28]
  wire [27:0] query_io_writeBack_bits_tagValid_tag; // @[DataCache.scala 42:28]
  wire [31:0] query_io_writeBack_bits_data_0; // @[DataCache.scala 42:28]
  wire [31:0] query_io_writeBack_bits_data_1; // @[DataCache.scala 42:28]
  wire  query_io_axi_ar_ready; // @[DataCache.scala 42:28]
  wire  query_io_axi_ar_valid; // @[DataCache.scala 42:28]
  wire [31:0] query_io_axi_ar_bits_addr; // @[DataCache.scala 42:28]
  wire  query_io_axi_r_ready; // @[DataCache.scala 42:28]
  wire  query_io_axi_r_valid; // @[DataCache.scala 42:28]
  wire [31:0] query_io_axi_r_bits_data; // @[DataCache.scala 42:28]
  wire  query_io_axi_r_bits_last; // @[DataCache.scala 42:28]
  wire  query_io_axi_aw_ready; // @[DataCache.scala 42:28]
  wire  query_io_axi_aw_valid; // @[DataCache.scala 42:28]
  wire [31:0] query_io_axi_aw_bits_addr; // @[DataCache.scala 42:28]
  wire  query_io_axi_w_ready; // @[DataCache.scala 42:28]
  wire  query_io_axi_w_valid; // @[DataCache.scala 42:28]
  wire [31:0] query_io_axi_w_bits_data; // @[DataCache.scala 42:28]
  wire  query_io_axi_w_bits_last; // @[DataCache.scala 42:28]
  wire  query_io_axi_b_ready; // @[DataCache.scala 42:28]
  wire  query_io_axi_b_valid; // @[DataCache.scala 42:28]
  wire [31:0] query_io_dirtyData_0; // @[DataCache.scala 42:28]
  wire [31:0] query_io_dirtyData_1; // @[DataCache.scala 42:28]
  wire  query_io_queryCommit_indexSel; // @[DataCache.scala 42:28]
  wire  query_io_queryCommit_waySel; // @[DataCache.scala 42:28]
  wire  query_io_queryCommit_bankIndexSel; // @[DataCache.scala 42:28]
  wire [31:0] query_io_queryCommit_writeData; // @[DataCache.scala 42:28]
  wire  query_io_queryCommit_writeEnable; // @[DataCache.scala 42:28]
  wire [3:0] query_io_queryCommit_writeMask; // @[DataCache.scala 42:28]
  wire [31:0] query_io_queryCommit_readData; // @[DataCache.scala 42:28]
  wire  query_io_queryCommit_readDataValid; // @[DataCache.scala 42:28]
  wire  query_io_hit; // @[DataCache.scala 42:28]
  wire  query_io_ready; // @[DataCache.scala 42:28]
  wire  query_io_readyForInvalidate; // @[DataCache.scala 42:28]
  wire  query_io_invalidateAllValid; // @[DataCache.scala 42:28]
  wire  query_io_dirtyWay; // @[DataCache.scala 42:28]
  wire  dataBanks_clock; // @[DataCache.scala 43:28]
  wire  dataBanks_reset; // @[DataCache.scala 43:28]
  wire  dataBanks_io_way_bank_0_0_addr; // @[DataCache.scala 43:28]
  wire [3:0] dataBanks_io_way_bank_0_0_writeMask; // @[DataCache.scala 43:28]
  wire [31:0] dataBanks_io_way_bank_0_0_writeData; // @[DataCache.scala 43:28]
  wire [31:0] dataBanks_io_way_bank_0_0_readData; // @[DataCache.scala 43:28]
  wire  dataBanks_io_way_bank_0_1_addr; // @[DataCache.scala 43:28]
  wire [3:0] dataBanks_io_way_bank_0_1_writeMask; // @[DataCache.scala 43:28]
  wire [31:0] dataBanks_io_way_bank_0_1_writeData; // @[DataCache.scala 43:28]
  wire [31:0] dataBanks_io_way_bank_0_1_readData; // @[DataCache.scala 43:28]
  wire  dataBanks_io_way_bank_1_0_addr; // @[DataCache.scala 43:28]
  wire [3:0] dataBanks_io_way_bank_1_0_writeMask; // @[DataCache.scala 43:28]
  wire [31:0] dataBanks_io_way_bank_1_0_writeData; // @[DataCache.scala 43:28]
  wire [31:0] dataBanks_io_way_bank_1_0_readData; // @[DataCache.scala 43:28]
  wire  dataBanks_io_way_bank_1_1_addr; // @[DataCache.scala 43:28]
  wire [3:0] dataBanks_io_way_bank_1_1_writeMask; // @[DataCache.scala 43:28]
  wire [31:0] dataBanks_io_way_bank_1_1_writeData; // @[DataCache.scala 43:28]
  wire [31:0] dataBanks_io_way_bank_1_1_readData; // @[DataCache.scala 43:28]
  wire  query_commit_clock; // @[DataCache.scala 44:28]
  wire  query_commit_reset; // @[DataCache.scala 44:28]
  wire  query_commit_io_in_waySel; // @[DataCache.scala 44:28]
  wire  query_commit_io_in_bankIndexSel; // @[DataCache.scala 44:28]
  wire [31:0] query_commit_io_in_readData; // @[DataCache.scala 44:28]
  wire  query_commit_io_in_readDataValid; // @[DataCache.scala 44:28]
  wire  query_commit_io_out_waySel; // @[DataCache.scala 44:28]
  wire  query_commit_io_out_bankIndexSel; // @[DataCache.scala 44:28]
  wire [31:0] query_commit_io_out_readData; // @[DataCache.scala 44:28]
  wire  query_commit_io_out_readDataValid; // @[DataCache.scala 44:28]
  wire  controller_io_stage2Ready; // @[DataCache.scala 45:28]
  wire  controller_io_inputReady; // @[DataCache.scala 45:28]
  wire  _T = io_cacheInstruction_ready & io_cacheInstruction_valid; // @[Decoupled.scala 40:37]
  wire  _T_1 = ~_T; // @[DataCache.scala 50:51]
  wire  _T_2 = controller_io_inputReady & _T_1; // @[DataCache.scala 50:48]
  wire  _T_3 = ~fetch_query_io_out_invalidate; // @[DataCache.scala 50:80]
  wire [31:0] _GEN_36 = dataBanks_io_way_bank_0_0_readData; // @[DataCache.scala 132:21]
  wire [31:0] readDataWire_0 = query_commit_io_out_bankIndexSel ? dataBanks_io_way_bank_0_1_readData : _GEN_36; // @[DataCache.scala 132:21]
  wire [31:0] _GEN_44 = dataBanks_io_way_bank_1_0_readData; // @[DataCache.scala 132:21]
  wire [31:0] readDataWire_1 = query_commit_io_out_bankIndexSel ? dataBanks_io_way_bank_1_1_readData : _GEN_44; // @[DataCache.scala 132:21]
  wire [31:0] _GEN_1 = query_commit_io_out_waySel ? readDataWire_1 : readDataWire_0; // @[DataCache.scala 53:21]
  wire  _T_6 = ~controller_io_inputReady; // @[DataCache.scala 69:34]
  wire  _T_7 = io_request_ready & io_request_valid; // @[Decoupled.scala 40:37]
  wire  _T_9 = query_io_writeBack_bits_addr_index == fetch_query_io_out_index; // @[DataCache.scala 82:69]
  wire  _T_10 = query_io_writeBack_valid & _T_9; // @[DataCache.scala 82:30]
  wire  _T_11 = _T_10 & fetch_query_io_out_valid; // @[DataCache.scala 83:7]
  wire  _GEN_49 = ~query_io_writeBack_bits_addr_waySel; // @[DataCache.scala 88:69]
  wire  _GEN_2 = _GEN_49 | fetch_query_io_out_tagValid_0_valid; // @[DataCache.scala 88:69]
  wire  _GEN_3 = query_io_writeBack_bits_addr_waySel | fetch_query_io_out_tagValid_1_valid; // @[DataCache.scala 88:69]
  wire [27:0] _fetch_query_io_in_tagValid_query_io_writeBack_bits_addr_waySel_tag = query_io_writeBack_bits_tagValid_tag; // @[DataCache.scala 88:69 DataCache.scala 88:69]
  wire [27:0] _GEN_4 = ~query_io_writeBack_bits_addr_waySel ? _fetch_query_io_in_tagValid_query_io_writeBack_bits_addr_waySel_tag : fetch_query_io_out_tagValid_0_tag; // @[DataCache.scala 88:69]
  wire [27:0] _GEN_5 = query_io_writeBack_bits_addr_waySel ? _fetch_query_io_in_tagValid_query_io_writeBack_bits_addr_waySel_tag : fetch_query_io_out_tagValid_1_tag; // @[DataCache.scala 88:69]
  wire  _T_12 = ~query_io_writeBack_valid; // @[DataCache.scala 107:50]
  wire  _T_16 = query_io_writeBack_valid & _GEN_49; // @[DataCache.scala 121:37]
  wire  _T_17 = ~query_io_queryCommit_waySel; // @[DataCache.scala 122:76]
  wire  _T_18 = query_io_queryCommit_writeEnable & _T_17; // @[DataCache.scala 122:45]
  wire  _T_19 = ~query_io_queryCommit_bankIndexSel; // @[DataCache.scala 122:121]
  wire  _T_20 = _T_18 & _T_19; // @[DataCache.scala 122:84]
  wire [3:0] _T_21 = _T_20 ? query_io_queryCommit_writeMask : 4'h0; // @[Mux.scala 98:16]
  wire [31:0] _GEN_24 = dataBanks_io_way_bank_0_1_readData; // @[DataCache.scala 130:20]
  wire  _T_29 = query_io_queryCommit_bankIndexSel; // @[DataCache.scala 122:121]
  wire  _T_30 = _T_18 & _T_29; // @[DataCache.scala 122:84]
  wire [3:0] _T_31 = _T_30 ? query_io_queryCommit_writeMask : 4'h0; // @[Mux.scala 98:16]
  wire  _T_35 = query_io_writeBack_bits_addr_waySel; // @[DataCache.scala 121:76]
  wire  _T_36 = query_io_writeBack_valid & _T_35; // @[DataCache.scala 121:37]
  wire  _T_37 = query_io_queryCommit_waySel; // @[DataCache.scala 122:76]
  wire  _T_38 = query_io_queryCommit_writeEnable & _T_37; // @[DataCache.scala 122:45]
  wire  _T_40 = _T_38 & _T_19; // @[DataCache.scala 122:84]
  wire [3:0] _T_41 = _T_40 ? query_io_queryCommit_writeMask : 4'h0; // @[Mux.scala 98:16]
  wire  _T_50 = _T_38 & _T_29; // @[DataCache.scala 122:84]
  wire [3:0] _T_51 = _T_50 ? query_io_queryCommit_writeMask : 4'h0; // @[Mux.scala 98:16]
  FetchTop fetch ( // @[DataCache.scala 40:28]
    .clock(fetch_clock),
    .reset(fetch_reset),
    .io_addr_translatedTag(fetch_io_addr_translatedTag),
    .io_addr_physicalIndex(fetch_io_addr_physicalIndex),
    .io_write_valid(fetch_io_write_valid),
    .io_write_bits_addr_index(fetch_io_write_bits_addr_index),
    .io_write_bits_addr_waySel(fetch_io_write_bits_addr_waySel),
    .io_write_bits_tagValid_tag(fetch_io_write_bits_tagValid_tag),
    .io_invalidateAll(fetch_io_invalidateAll),
    .io_addrResult_phyTag(fetch_io_addrResult_phyTag),
    .io_addrResult_index(fetch_io_addrResult_index),
    .io_addrResult_bankIndex(fetch_io_addrResult_bankIndex),
    .io_tagValid_0_tag(fetch_io_tagValid_0_tag),
    .io_tagValid_0_valid(fetch_io_tagValid_0_valid),
    .io_tagValid_1_tag(fetch_io_tagValid_1_tag),
    .io_tagValid_1_valid(fetch_io_tagValid_1_valid)
  );
  CachePipelineStage fetch_query ( // @[DataCache.scala 41:28]
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
    .io_in_writeData(fetch_query_io_in_writeData),
    .io_in_writeMask(fetch_query_io_in_writeMask),
    .io_in_invalidate(fetch_query_io_in_invalidate),
    .io_out_tagValid_0_tag(fetch_query_io_out_tagValid_0_tag),
    .io_out_tagValid_0_valid(fetch_query_io_out_tagValid_0_valid),
    .io_out_tagValid_1_tag(fetch_query_io_out_tagValid_1_tag),
    .io_out_tagValid_1_valid(fetch_query_io_out_tagValid_1_valid),
    .io_out_phyTag(fetch_query_io_out_phyTag),
    .io_out_index(fetch_query_io_out_index),
    .io_out_bankIndex(fetch_query_io_out_bankIndex),
    .io_out_valid(fetch_query_io_out_valid),
    .io_out_writeData(fetch_query_io_out_writeData),
    .io_out_writeMask(fetch_query_io_out_writeMask),
    .io_out_invalidate(fetch_query_io_out_invalidate)
  );
  QueryTop query ( // @[DataCache.scala 42:28]
    .clock(query_clock),
    .reset(query_reset),
    .io_fetchQuery_tagValid_0_tag(query_io_fetchQuery_tagValid_0_tag),
    .io_fetchQuery_tagValid_0_valid(query_io_fetchQuery_tagValid_0_valid),
    .io_fetchQuery_tagValid_1_tag(query_io_fetchQuery_tagValid_1_tag),
    .io_fetchQuery_tagValid_1_valid(query_io_fetchQuery_tagValid_1_valid),
    .io_fetchQuery_phyTag(query_io_fetchQuery_phyTag),
    .io_fetchQuery_index(query_io_fetchQuery_index),
    .io_fetchQuery_bankIndex(query_io_fetchQuery_bankIndex),
    .io_fetchQuery_valid(query_io_fetchQuery_valid),
    .io_fetchQuery_writeData(query_io_fetchQuery_writeData),
    .io_fetchQuery_writeMask(query_io_fetchQuery_writeMask),
    .io_fetchQuery_invalidate(query_io_fetchQuery_invalidate),
    .io_writeBack_valid(query_io_writeBack_valid),
    .io_writeBack_bits_addr_index(query_io_writeBack_bits_addr_index),
    .io_writeBack_bits_addr_waySel(query_io_writeBack_bits_addr_waySel),
    .io_writeBack_bits_tagValid_tag(query_io_writeBack_bits_tagValid_tag),
    .io_writeBack_bits_data_0(query_io_writeBack_bits_data_0),
    .io_writeBack_bits_data_1(query_io_writeBack_bits_data_1),
    .io_axi_ar_ready(query_io_axi_ar_ready),
    .io_axi_ar_valid(query_io_axi_ar_valid),
    .io_axi_ar_bits_addr(query_io_axi_ar_bits_addr),
    .io_axi_r_ready(query_io_axi_r_ready),
    .io_axi_r_valid(query_io_axi_r_valid),
    .io_axi_r_bits_data(query_io_axi_r_bits_data),
    .io_axi_r_bits_last(query_io_axi_r_bits_last),
    .io_axi_aw_ready(query_io_axi_aw_ready),
    .io_axi_aw_valid(query_io_axi_aw_valid),
    .io_axi_aw_bits_addr(query_io_axi_aw_bits_addr),
    .io_axi_w_ready(query_io_axi_w_ready),
    .io_axi_w_valid(query_io_axi_w_valid),
    .io_axi_w_bits_data(query_io_axi_w_bits_data),
    .io_axi_w_bits_last(query_io_axi_w_bits_last),
    .io_axi_b_ready(query_io_axi_b_ready),
    .io_axi_b_valid(query_io_axi_b_valid),
    .io_dirtyData_0(query_io_dirtyData_0),
    .io_dirtyData_1(query_io_dirtyData_1),
    .io_queryCommit_indexSel(query_io_queryCommit_indexSel),
    .io_queryCommit_waySel(query_io_queryCommit_waySel),
    .io_queryCommit_bankIndexSel(query_io_queryCommit_bankIndexSel),
    .io_queryCommit_writeData(query_io_queryCommit_writeData),
    .io_queryCommit_writeEnable(query_io_queryCommit_writeEnable),
    .io_queryCommit_writeMask(query_io_queryCommit_writeMask),
    .io_queryCommit_readData(query_io_queryCommit_readData),
    .io_queryCommit_readDataValid(query_io_queryCommit_readDataValid),
    .io_hit(query_io_hit),
    .io_ready(query_io_ready),
    .io_readyForInvalidate(query_io_readyForInvalidate),
    .io_invalidateAllValid(query_io_invalidateAllValid),
    .io_dirtyWay(query_io_dirtyWay)
  );
  DataBanks dataBanks ( // @[DataCache.scala 43:28]
    .clock(dataBanks_clock),
    .reset(dataBanks_reset),
    .io_way_bank_0_0_addr(dataBanks_io_way_bank_0_0_addr),
    .io_way_bank_0_0_writeMask(dataBanks_io_way_bank_0_0_writeMask),
    .io_way_bank_0_0_writeData(dataBanks_io_way_bank_0_0_writeData),
    .io_way_bank_0_0_readData(dataBanks_io_way_bank_0_0_readData),
    .io_way_bank_0_1_addr(dataBanks_io_way_bank_0_1_addr),
    .io_way_bank_0_1_writeMask(dataBanks_io_way_bank_0_1_writeMask),
    .io_way_bank_0_1_writeData(dataBanks_io_way_bank_0_1_writeData),
    .io_way_bank_0_1_readData(dataBanks_io_way_bank_0_1_readData),
    .io_way_bank_1_0_addr(dataBanks_io_way_bank_1_0_addr),
    .io_way_bank_1_0_writeMask(dataBanks_io_way_bank_1_0_writeMask),
    .io_way_bank_1_0_writeData(dataBanks_io_way_bank_1_0_writeData),
    .io_way_bank_1_0_readData(dataBanks_io_way_bank_1_0_readData),
    .io_way_bank_1_1_addr(dataBanks_io_way_bank_1_1_addr),
    .io_way_bank_1_1_writeMask(dataBanks_io_way_bank_1_1_writeMask),
    .io_way_bank_1_1_writeData(dataBanks_io_way_bank_1_1_writeData),
    .io_way_bank_1_1_readData(dataBanks_io_way_bank_1_1_readData)
  );
  CachePipelineStage_1 query_commit ( // @[DataCache.scala 44:28]
    .clock(query_commit_clock),
    .reset(query_commit_reset),
    .io_in_waySel(query_commit_io_in_waySel),
    .io_in_bankIndexSel(query_commit_io_in_bankIndexSel),
    .io_in_readData(query_commit_io_in_readData),
    .io_in_readDataValid(query_commit_io_in_readDataValid),
    .io_out_waySel(query_commit_io_out_waySel),
    .io_out_bankIndexSel(query_commit_io_out_bankIndexSel),
    .io_out_readData(query_commit_io_out_readData),
    .io_out_readDataValid(query_commit_io_out_readDataValid)
  );
  DCacheController controller ( // @[DataCache.scala 45:28]
    .io_stage2Ready(controller_io_stage2Ready),
    .io_inputReady(controller_io_inputReady)
  );
  assign io_cacheInstruction_ready = query_io_readyForInvalidate; // @[DataCache.scala 58:29]
  assign io_request_ready = _T_2 & _T_3; // @[DataCache.scala 50:20]
  assign io_commit = query_io_hit; // @[DataCache.scala 52:20]
  assign io_readData = query_commit_io_out_readDataValid ? query_commit_io_out_readData : _GEN_1; // @[DataCache.scala 53:15]
  assign io_axi_ar_valid = query_io_axi_ar_valid; // @[DataCache.scala 51:20]
  assign io_axi_ar_bits_addr = query_io_axi_ar_bits_addr; // @[DataCache.scala 51:20]
  assign io_axi_r_ready = query_io_axi_r_ready; // @[DataCache.scala 51:20]
  assign io_axi_aw_valid = query_io_axi_aw_valid; // @[DataCache.scala 51:20]
  assign io_axi_aw_bits_addr = query_io_axi_aw_bits_addr; // @[DataCache.scala 51:20]
  assign io_axi_w_valid = query_io_axi_w_valid; // @[DataCache.scala 51:20]
  assign io_axi_w_bits_data = query_io_axi_w_bits_data; // @[DataCache.scala 51:20]
  assign io_axi_w_bits_last = query_io_axi_w_bits_last; // @[DataCache.scala 51:20]
  assign io_axi_b_ready = query_io_axi_b_ready; // @[DataCache.scala 51:20]
  assign fetch_clock = clock;
  assign fetch_reset = reset;
  assign fetch_io_addr_translatedTag = io_request_bits_tag; // @[DataCache.scala 60:32]
  assign fetch_io_addr_physicalIndex = io_request_bits_physicalIndex; // @[DataCache.scala 61:31]
  assign fetch_io_write_valid = query_io_writeBack_valid; // @[DataCache.scala 62:18]
  assign fetch_io_write_bits_addr_index = query_io_writeBack_bits_addr_index; // @[DataCache.scala 62:18]
  assign fetch_io_write_bits_addr_waySel = query_io_writeBack_bits_addr_waySel; // @[DataCache.scala 62:18]
  assign fetch_io_write_bits_tagValid_tag = query_io_writeBack_bits_tagValid_tag; // @[DataCache.scala 62:18]
  assign fetch_io_invalidateAll = query_io_invalidateAllValid; // @[DataCache.scala 63:26]
  assign fetch_query_clock = clock;
  assign fetch_query_reset = reset;
  assign fetch_query_io_stall = _T_11 ? 1'h0 : _T_6; // @[DataCache.scala 69:31 DataCache.scala 85:69]
  assign fetch_query_io_in_tagValid_0_tag = _T_11 ? _GEN_4 : fetch_io_tagValid_0_tag; // @[DataCache.scala 71:31 DataCache.scala 87:69 DataCache.scala 88:69]
  assign fetch_query_io_in_tagValid_0_valid = _T_11 ? _GEN_2 : fetch_io_tagValid_0_valid; // @[DataCache.scala 71:31 DataCache.scala 87:69 DataCache.scala 88:69]
  assign fetch_query_io_in_tagValid_1_tag = _T_11 ? _GEN_5 : fetch_io_tagValid_1_tag; // @[DataCache.scala 71:31 DataCache.scala 87:69 DataCache.scala 88:69]
  assign fetch_query_io_in_tagValid_1_valid = _T_11 ? _GEN_3 : fetch_io_tagValid_1_valid; // @[DataCache.scala 71:31 DataCache.scala 87:69 DataCache.scala 88:69]
  assign fetch_query_io_in_phyTag = _T_11 ? fetch_query_io_out_phyTag : fetch_io_addrResult_phyTag; // @[DataCache.scala 73:31 DataCache.scala 90:69]
  assign fetch_query_io_in_index = _T_11 ? fetch_query_io_out_index : fetch_io_addrResult_index; // @[DataCache.scala 72:31 DataCache.scala 89:69]
  assign fetch_query_io_in_bankIndex = _T_11 ? fetch_query_io_out_bankIndex : fetch_io_addrResult_bankIndex; // @[DataCache.scala 74:31 DataCache.scala 91:69]
  assign fetch_query_io_in_valid = _T_11 ? fetch_query_io_out_valid : _T_7; // @[DataCache.scala 70:31 DataCache.scala 86:69]
  assign fetch_query_io_in_writeData = _T_11 ? fetch_query_io_out_writeData : io_request_bits_writeData; // @[DataCache.scala 75:31 DataCache.scala 92:69]
  assign fetch_query_io_in_writeMask = _T_11 ? fetch_query_io_out_writeMask : io_request_bits_writeMask; // @[DataCache.scala 76:31 DataCache.scala 93:69]
  assign fetch_query_io_in_invalidate = io_cacheInstruction_ready & io_cacheInstruction_valid; // @[DataCache.scala 77:32]
  assign query_clock = clock;
  assign query_reset = reset;
  assign query_io_fetchQuery_tagValid_0_tag = fetch_query_io_out_tagValid_0_tag; // @[DataCache.scala 100:23]
  assign query_io_fetchQuery_tagValid_0_valid = fetch_query_io_out_tagValid_0_valid; // @[DataCache.scala 100:23]
  assign query_io_fetchQuery_tagValid_1_tag = fetch_query_io_out_tagValid_1_tag; // @[DataCache.scala 100:23]
  assign query_io_fetchQuery_tagValid_1_valid = fetch_query_io_out_tagValid_1_valid; // @[DataCache.scala 100:23]
  assign query_io_fetchQuery_phyTag = fetch_query_io_out_phyTag; // @[DataCache.scala 100:23]
  assign query_io_fetchQuery_index = fetch_query_io_out_index; // @[DataCache.scala 100:23]
  assign query_io_fetchQuery_bankIndex = fetch_query_io_out_bankIndex; // @[DataCache.scala 100:23]
  assign query_io_fetchQuery_valid = fetch_query_io_out_valid; // @[DataCache.scala 100:23]
  assign query_io_fetchQuery_writeData = fetch_query_io_out_writeData; // @[DataCache.scala 100:23]
  assign query_io_fetchQuery_writeMask = fetch_query_io_out_writeMask; // @[DataCache.scala 100:23]
  assign query_io_fetchQuery_invalidate = fetch_query_io_out_invalidate; // @[DataCache.scala 100:23]
  assign query_io_axi_ar_ready = io_axi_ar_ready; // @[DataCache.scala 51:20]
  assign query_io_axi_r_valid = io_axi_r_valid; // @[DataCache.scala 51:20]
  assign query_io_axi_r_bits_data = io_axi_r_bits_data; // @[DataCache.scala 51:20]
  assign query_io_axi_r_bits_last = io_axi_r_bits_last; // @[DataCache.scala 51:20]
  assign query_io_axi_aw_ready = io_axi_aw_ready; // @[DataCache.scala 51:20]
  assign query_io_axi_w_ready = io_axi_w_ready; // @[DataCache.scala 51:20]
  assign query_io_axi_b_valid = io_axi_b_valid; // @[DataCache.scala 51:20]
  assign query_io_dirtyData_0 = query_io_dirtyWay ? dataBanks_io_way_bank_1_0_readData : _GEN_36; // @[DataCache.scala 101:23]
  assign query_io_dirtyData_1 = query_io_dirtyWay ? dataBanks_io_way_bank_1_1_readData : _GEN_24; // @[DataCache.scala 101:23]
  assign dataBanks_clock = clock;
  assign dataBanks_reset = reset;
  assign dataBanks_io_way_bank_0_0_addr = query_io_writeBack_valid ? query_io_writeBack_bits_addr_index : query_io_queryCommit_indexSel; // @[DataCache.scala 113:40]
  assign dataBanks_io_way_bank_0_0_writeMask = _T_16 ? 4'hf : _T_21; // @[DataCache.scala 118:45]
  assign dataBanks_io_way_bank_0_0_writeData = query_io_writeBack_valid ? query_io_writeBack_bits_data_0 : query_io_queryCommit_writeData; // @[DataCache.scala 125:45]
  assign dataBanks_io_way_bank_0_1_addr = query_io_writeBack_valid ? query_io_writeBack_bits_addr_index : query_io_queryCommit_indexSel; // @[DataCache.scala 113:40]
  assign dataBanks_io_way_bank_0_1_writeMask = _T_16 ? 4'hf : _T_31; // @[DataCache.scala 118:45]
  assign dataBanks_io_way_bank_0_1_writeData = query_io_writeBack_valid ? query_io_writeBack_bits_data_1 : query_io_queryCommit_writeData; // @[DataCache.scala 125:45]
  assign dataBanks_io_way_bank_1_0_addr = query_io_writeBack_valid ? query_io_writeBack_bits_addr_index : query_io_queryCommit_indexSel; // @[DataCache.scala 113:40]
  assign dataBanks_io_way_bank_1_0_writeMask = _T_36 ? 4'hf : _T_41; // @[DataCache.scala 118:45]
  assign dataBanks_io_way_bank_1_0_writeData = query_io_writeBack_valid ? query_io_writeBack_bits_data_0 : query_io_queryCommit_writeData; // @[DataCache.scala 125:45]
  assign dataBanks_io_way_bank_1_1_addr = query_io_writeBack_valid ? query_io_writeBack_bits_addr_index : query_io_queryCommit_indexSel; // @[DataCache.scala 113:40]
  assign dataBanks_io_way_bank_1_1_writeMask = _T_36 ? 4'hf : _T_51; // @[DataCache.scala 118:45]
  assign dataBanks_io_way_bank_1_1_writeData = query_io_writeBack_valid ? query_io_writeBack_bits_data_1 : query_io_queryCommit_writeData; // @[DataCache.scala 125:45]
  assign query_commit_clock = clock;
  assign query_commit_reset = reset;
  assign query_commit_io_in_waySel = query_io_queryCommit_waySel; // @[DataCache.scala 104:25]
  assign query_commit_io_in_bankIndexSel = query_io_queryCommit_bankIndexSel; // @[DataCache.scala 104:25]
  assign query_commit_io_in_readData = query_io_queryCommit_readData; // @[DataCache.scala 104:25]
  assign query_commit_io_in_readDataValid = query_io_queryCommit_readDataValid; // @[DataCache.scala 104:25]
  assign controller_io_stage2Ready = query_io_ready & _T_12; // @[DataCache.scala 107:29]
endmodule
module Queue(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [31:0] io_enq_bits_addr,
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
  assign ram_len__T_3_data = 4'h1;
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
  output        io_axi_r_bits_last,
  output        io_axi_aw_ready,
  input         io_axi_aw_valid,
  input  [31:0] io_axi_aw_bits_addr,
  output        io_axi_w_ready,
  input         io_axi_w_valid,
  input  [31:0] io_axi_w_bits_data,
  input         io_axi_w_bits_last,
  input         io_axi_b_ready,
  output        io_axi_b_valid
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
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
`endif // RANDOMIZE_REG_INIT
  wire  instRQ_clock; // @[SymbiyosysAXIRam.scala 33:40]
  wire  instRQ_reset; // @[SymbiyosysAXIRam.scala 33:40]
  wire  instRQ_io_enq_ready; // @[SymbiyosysAXIRam.scala 33:40]
  wire  instRQ_io_enq_valid; // @[SymbiyosysAXIRam.scala 33:40]
  wire [31:0] instRQ_io_enq_bits_addr; // @[SymbiyosysAXIRam.scala 33:40]
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
  reg [3:0] wLen; // @[SymbiyosysAXIRam.scala 86:25]
  reg [1:0] wBurst; // @[SymbiyosysAXIRam.scala 87:25]
  reg [2:0] wWrapSel; // @[SymbiyosysAXIRam.scala 88:25]
  reg [31:0] wRamAddr; // @[SymbiyosysAXIRam.scala 89:25]
  wire  _T_97 = 2'h0 == wState; // @[Conditional.scala 37:30]
  wire  _T_98 = 4'h1 == dataWQ_io_deq_bits_len; // @[Mux.scala 80:60]
  wire [1:0] _T_99 = _T_98 ? 2'h3 : 2'h0; // @[Mux.scala 80:57]
  wire  _T_100 = 4'h3 == dataWQ_io_deq_bits_len; // @[Mux.scala 80:60]
  wire  _T_102 = 4'h7 == dataWQ_io_deq_bits_len; // @[Mux.scala 80:60]
  wire  _T_104 = 4'hf == dataWQ_io_deq_bits_len; // @[Mux.scala 80:60]
  wire  _T_106 = 2'h1 == wState; // @[Conditional.scala 37:30]
  wire  _T_107 = wLen == 4'h0; // @[SymbiyosysAXIRam.scala 146:23]
  wire  _T_108 = _T_107 ^ io_axi_w_bits_last; // @[SymbiyosysAXIRam.scala 146:31]
  wire  _T_109 = ~_T_108; // @[SymbiyosysAXIRam.scala 146:16]
  wire  _T_111 = _T_109 | reset; // @[SymbiyosysAXIRam.scala 146:15]
  wire  _T_112 = ~_T_111; // @[SymbiyosysAXIRam.scala 146:15]
  wire [31:0] _T_115 = wRamAddr + 32'h4; // @[SymbiyosysAXIRam.scala 114:26]
  wire [31:0] _T_116 = wRamAddr >> wWrapSel; // @[SymbiyosysAXIRam.scala 116:57]
  wire [38:0] _GEN_308 = {{7'd0}, _T_116}; // @[SymbiyosysAXIRam.scala 116:70]
  wire [38:0] _T_117 = _GEN_308 << wWrapSel; // @[SymbiyosysAXIRam.scala 116:70]
  wire [5:0] _GEN_309 = {{3'd0}, wWrapSel}; // @[SymbiyosysAXIRam.scala 119:40]
  wire [5:0] _T_122 = 6'h20 - _GEN_309; // @[SymbiyosysAXIRam.scala 119:40]
  wire [94:0] _GEN_310 = {{63'd0}, _T_115}; // @[SymbiyosysAXIRam.scala 119:31]
  wire [94:0] _T_123 = _GEN_310 << _T_122; // @[SymbiyosysAXIRam.scala 119:31]
  wire [31:0] _T_127 = _T_123[31:0] >> _T_122; // @[SymbiyosysAXIRam.scala 119:69]
  wire [31:0] _T_129 = _T_117[31:0] | _T_127; // @[SymbiyosysAXIRam.scala 121:16]
  wire  _T_130 = 2'h1 == wBurst; // @[Mux.scala 80:60]
  wire  _T_132 = 2'h2 == wBurst; // @[Mux.scala 80:60]
  wire [3:0] _T_135 = wLen - 4'h1; // @[SymbiyosysAXIRam.scala 151:28]
  wire  _T_136 = 2'h2 == wState; // @[Conditional.scala 37:30]
  wire  _T_137 = wState == 2'h1; // @[SymbiyosysAXIRam.scala 162:26]
  wire  _T_138 = io_axi_w_valid & _T_137; // @[SymbiyosysAXIRam.scala 162:16]
  wire [31:0] _T_159 = {io_axi_w_bits_data[31:24],io_axi_w_bits_data[23:16],io_axi_w_bits_data[15:8],io_axi_w_bits_data[7:0]}; // @[Cat.scala 29:58]
  wire  _T_164 = wState == 2'h0; // @[SymbiyosysAXIRam.scala 172:33]
  wire  _GEN_312 = ~_T_97; // @[SymbiyosysAXIRam.scala 146:15]
  wire  _GEN_313 = _GEN_312 & _T_106; // @[SymbiyosysAXIRam.scala 146:15]
  wire  _GEN_314 = _GEN_313 & io_axi_w_valid; // @[SymbiyosysAXIRam.scala 146:15]
  Queue instRQ ( // @[SymbiyosysAXIRam.scala 33:40]
    .clock(instRQ_clock),
    .reset(instRQ_reset),
    .io_enq_ready(instRQ_io_enq_ready),
    .io_enq_valid(instRQ_io_enq_valid),
    .io_enq_bits_addr(instRQ_io_enq_bits_addr),
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
  assign io_axi_aw_ready = dataWQ_io_enq_ready; // @[SymbiyosysAXIRam.scala 174:15]
  assign io_axi_w_ready = wState == 2'h1; // @[SymbiyosysAXIRam.scala 175:15]
  assign io_axi_b_valid = wState == 2'h2; // @[SymbiyosysAXIRam.scala 178:15]
  assign instRQ_clock = clock;
  assign instRQ_reset = reset;
  assign instRQ_io_enq_valid = 1'h0; // @[SymbiyosysAXIRam.scala 72:23]
  assign instRQ_io_enq_bits_addr = io_axi_ar_bits_addr; // @[SymbiyosysAXIRam.scala 73:23]
  assign instRQ_io_enq_bits_burst = 2'h2; // @[SymbiyosysAXIRam.scala 73:23]
  assign instRQ_io_deq_ready = _T_82 & _T_83; // @[SymbiyosysAXIRam.scala 74:23]
  assign dataRQ_clock = clock;
  assign dataRQ_reset = reset;
  assign dataRQ_io_enq_valid = io_axi_ar_ready & io_axi_ar_valid; // @[SymbiyosysAXIRam.scala 76:23]
  assign dataRQ_io_enq_bits_addr = io_axi_ar_bits_addr; // @[SymbiyosysAXIRam.scala 77:23]
  assign dataRQ_io_enq_bits_burst = 2'h2; // @[SymbiyosysAXIRam.scala 77:23]
  assign dataRQ_io_deq_ready = _T_89 & currentID; // @[SymbiyosysAXIRam.scala 78:23]
  assign dataWQ_clock = clock;
  assign dataWQ_reset = reset;
  assign dataWQ_io_enq_valid = io_axi_aw_ready & io_axi_aw_valid; // @[SymbiyosysAXIRam.scala 170:23]
  assign dataWQ_io_enq_bits_addr = io_axi_aw_bits_addr; // @[SymbiyosysAXIRam.scala 171:23]
  assign dataWQ_io_enq_bits_burst = 2'h1; // @[SymbiyosysAXIRam.scala 171:23]
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
  _RAND_70 = {1{`RANDOM}};
  wLen = _RAND_70[3:0];
  _RAND_71 = {1{`RANDOM}};
  wBurst = _RAND_71[1:0];
  _RAND_72 = {1{`RANDOM}};
  wWrapSel = _RAND_72[2:0];
  _RAND_73 = {1{`RANDOM}};
  wRamAddr = _RAND_73[31:0];
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
    end else if (_T_138) begin
      if (6'h0 == wRamAddr[7:2]) begin
        mem_0 <= _T_159;
      end
    end
    if (reset) begin
      mem_1 <= 32'h1;
    end else if (_T_138) begin
      if (6'h1 == wRamAddr[7:2]) begin
        mem_1 <= _T_159;
      end
    end
    if (reset) begin
      mem_2 <= 32'h2;
    end else if (_T_138) begin
      if (6'h2 == wRamAddr[7:2]) begin
        mem_2 <= _T_159;
      end
    end
    if (reset) begin
      mem_3 <= 32'h3;
    end else if (_T_138) begin
      if (6'h3 == wRamAddr[7:2]) begin
        mem_3 <= _T_159;
      end
    end
    if (reset) begin
      mem_4 <= 32'h4;
    end else if (_T_138) begin
      if (6'h4 == wRamAddr[7:2]) begin
        mem_4 <= _T_159;
      end
    end
    if (reset) begin
      mem_5 <= 32'h5;
    end else if (_T_138) begin
      if (6'h5 == wRamAddr[7:2]) begin
        mem_5 <= _T_159;
      end
    end
    if (reset) begin
      mem_6 <= 32'h6;
    end else if (_T_138) begin
      if (6'h6 == wRamAddr[7:2]) begin
        mem_6 <= _T_159;
      end
    end
    if (reset) begin
      mem_7 <= 32'h7;
    end else if (_T_138) begin
      if (6'h7 == wRamAddr[7:2]) begin
        mem_7 <= _T_159;
      end
    end
    if (reset) begin
      mem_8 <= 32'h8;
    end else if (_T_138) begin
      if (6'h8 == wRamAddr[7:2]) begin
        mem_8 <= _T_159;
      end
    end
    if (reset) begin
      mem_9 <= 32'h9;
    end else if (_T_138) begin
      if (6'h9 == wRamAddr[7:2]) begin
        mem_9 <= _T_159;
      end
    end
    if (reset) begin
      mem_10 <= 32'ha;
    end else if (_T_138) begin
      if (6'ha == wRamAddr[7:2]) begin
        mem_10 <= _T_159;
      end
    end
    if (reset) begin
      mem_11 <= 32'hb;
    end else if (_T_138) begin
      if (6'hb == wRamAddr[7:2]) begin
        mem_11 <= _T_159;
      end
    end
    if (reset) begin
      mem_12 <= 32'hc;
    end else if (_T_138) begin
      if (6'hc == wRamAddr[7:2]) begin
        mem_12 <= _T_159;
      end
    end
    if (reset) begin
      mem_13 <= 32'hd;
    end else if (_T_138) begin
      if (6'hd == wRamAddr[7:2]) begin
        mem_13 <= _T_159;
      end
    end
    if (reset) begin
      mem_14 <= 32'he;
    end else if (_T_138) begin
      if (6'he == wRamAddr[7:2]) begin
        mem_14 <= _T_159;
      end
    end
    if (reset) begin
      mem_15 <= 32'hf;
    end else if (_T_138) begin
      if (6'hf == wRamAddr[7:2]) begin
        mem_15 <= _T_159;
      end
    end
    if (reset) begin
      mem_16 <= 32'h10;
    end else if (_T_138) begin
      if (6'h10 == wRamAddr[7:2]) begin
        mem_16 <= _T_159;
      end
    end
    if (reset) begin
      mem_17 <= 32'h11;
    end else if (_T_138) begin
      if (6'h11 == wRamAddr[7:2]) begin
        mem_17 <= _T_159;
      end
    end
    if (reset) begin
      mem_18 <= 32'h12;
    end else if (_T_138) begin
      if (6'h12 == wRamAddr[7:2]) begin
        mem_18 <= _T_159;
      end
    end
    if (reset) begin
      mem_19 <= 32'h13;
    end else if (_T_138) begin
      if (6'h13 == wRamAddr[7:2]) begin
        mem_19 <= _T_159;
      end
    end
    if (reset) begin
      mem_20 <= 32'h14;
    end else if (_T_138) begin
      if (6'h14 == wRamAddr[7:2]) begin
        mem_20 <= _T_159;
      end
    end
    if (reset) begin
      mem_21 <= 32'h15;
    end else if (_T_138) begin
      if (6'h15 == wRamAddr[7:2]) begin
        mem_21 <= _T_159;
      end
    end
    if (reset) begin
      mem_22 <= 32'h16;
    end else if (_T_138) begin
      if (6'h16 == wRamAddr[7:2]) begin
        mem_22 <= _T_159;
      end
    end
    if (reset) begin
      mem_23 <= 32'h17;
    end else if (_T_138) begin
      if (6'h17 == wRamAddr[7:2]) begin
        mem_23 <= _T_159;
      end
    end
    if (reset) begin
      mem_24 <= 32'h18;
    end else if (_T_138) begin
      if (6'h18 == wRamAddr[7:2]) begin
        mem_24 <= _T_159;
      end
    end
    if (reset) begin
      mem_25 <= 32'h19;
    end else if (_T_138) begin
      if (6'h19 == wRamAddr[7:2]) begin
        mem_25 <= _T_159;
      end
    end
    if (reset) begin
      mem_26 <= 32'h1a;
    end else if (_T_138) begin
      if (6'h1a == wRamAddr[7:2]) begin
        mem_26 <= _T_159;
      end
    end
    if (reset) begin
      mem_27 <= 32'h1b;
    end else if (_T_138) begin
      if (6'h1b == wRamAddr[7:2]) begin
        mem_27 <= _T_159;
      end
    end
    if (reset) begin
      mem_28 <= 32'h1c;
    end else if (_T_138) begin
      if (6'h1c == wRamAddr[7:2]) begin
        mem_28 <= _T_159;
      end
    end
    if (reset) begin
      mem_29 <= 32'h1d;
    end else if (_T_138) begin
      if (6'h1d == wRamAddr[7:2]) begin
        mem_29 <= _T_159;
      end
    end
    if (reset) begin
      mem_30 <= 32'h1e;
    end else if (_T_138) begin
      if (6'h1e == wRamAddr[7:2]) begin
        mem_30 <= _T_159;
      end
    end
    if (reset) begin
      mem_31 <= 32'h1f;
    end else if (_T_138) begin
      if (6'h1f == wRamAddr[7:2]) begin
        mem_31 <= _T_159;
      end
    end
    if (reset) begin
      mem_32 <= 32'h20;
    end else if (_T_138) begin
      if (6'h20 == wRamAddr[7:2]) begin
        mem_32 <= _T_159;
      end
    end
    if (reset) begin
      mem_33 <= 32'h21;
    end else if (_T_138) begin
      if (6'h21 == wRamAddr[7:2]) begin
        mem_33 <= _T_159;
      end
    end
    if (reset) begin
      mem_34 <= 32'h22;
    end else if (_T_138) begin
      if (6'h22 == wRamAddr[7:2]) begin
        mem_34 <= _T_159;
      end
    end
    if (reset) begin
      mem_35 <= 32'h23;
    end else if (_T_138) begin
      if (6'h23 == wRamAddr[7:2]) begin
        mem_35 <= _T_159;
      end
    end
    if (reset) begin
      mem_36 <= 32'h24;
    end else if (_T_138) begin
      if (6'h24 == wRamAddr[7:2]) begin
        mem_36 <= _T_159;
      end
    end
    if (reset) begin
      mem_37 <= 32'h25;
    end else if (_T_138) begin
      if (6'h25 == wRamAddr[7:2]) begin
        mem_37 <= _T_159;
      end
    end
    if (reset) begin
      mem_38 <= 32'h26;
    end else if (_T_138) begin
      if (6'h26 == wRamAddr[7:2]) begin
        mem_38 <= _T_159;
      end
    end
    if (reset) begin
      mem_39 <= 32'h27;
    end else if (_T_138) begin
      if (6'h27 == wRamAddr[7:2]) begin
        mem_39 <= _T_159;
      end
    end
    if (reset) begin
      mem_40 <= 32'h28;
    end else if (_T_138) begin
      if (6'h28 == wRamAddr[7:2]) begin
        mem_40 <= _T_159;
      end
    end
    if (reset) begin
      mem_41 <= 32'h29;
    end else if (_T_138) begin
      if (6'h29 == wRamAddr[7:2]) begin
        mem_41 <= _T_159;
      end
    end
    if (reset) begin
      mem_42 <= 32'h2a;
    end else if (_T_138) begin
      if (6'h2a == wRamAddr[7:2]) begin
        mem_42 <= _T_159;
      end
    end
    if (reset) begin
      mem_43 <= 32'h2b;
    end else if (_T_138) begin
      if (6'h2b == wRamAddr[7:2]) begin
        mem_43 <= _T_159;
      end
    end
    if (reset) begin
      mem_44 <= 32'h2c;
    end else if (_T_138) begin
      if (6'h2c == wRamAddr[7:2]) begin
        mem_44 <= _T_159;
      end
    end
    if (reset) begin
      mem_45 <= 32'h2d;
    end else if (_T_138) begin
      if (6'h2d == wRamAddr[7:2]) begin
        mem_45 <= _T_159;
      end
    end
    if (reset) begin
      mem_46 <= 32'h2e;
    end else if (_T_138) begin
      if (6'h2e == wRamAddr[7:2]) begin
        mem_46 <= _T_159;
      end
    end
    if (reset) begin
      mem_47 <= 32'h2f;
    end else if (_T_138) begin
      if (6'h2f == wRamAddr[7:2]) begin
        mem_47 <= _T_159;
      end
    end
    if (reset) begin
      mem_48 <= 32'h30;
    end else if (_T_138) begin
      if (6'h30 == wRamAddr[7:2]) begin
        mem_48 <= _T_159;
      end
    end
    if (reset) begin
      mem_49 <= 32'h31;
    end else if (_T_138) begin
      if (6'h31 == wRamAddr[7:2]) begin
        mem_49 <= _T_159;
      end
    end
    if (reset) begin
      mem_50 <= 32'h32;
    end else if (_T_138) begin
      if (6'h32 == wRamAddr[7:2]) begin
        mem_50 <= _T_159;
      end
    end
    if (reset) begin
      mem_51 <= 32'h33;
    end else if (_T_138) begin
      if (6'h33 == wRamAddr[7:2]) begin
        mem_51 <= _T_159;
      end
    end
    if (reset) begin
      mem_52 <= 32'h34;
    end else if (_T_138) begin
      if (6'h34 == wRamAddr[7:2]) begin
        mem_52 <= _T_159;
      end
    end
    if (reset) begin
      mem_53 <= 32'h35;
    end else if (_T_138) begin
      if (6'h35 == wRamAddr[7:2]) begin
        mem_53 <= _T_159;
      end
    end
    if (reset) begin
      mem_54 <= 32'h36;
    end else if (_T_138) begin
      if (6'h36 == wRamAddr[7:2]) begin
        mem_54 <= _T_159;
      end
    end
    if (reset) begin
      mem_55 <= 32'h37;
    end else if (_T_138) begin
      if (6'h37 == wRamAddr[7:2]) begin
        mem_55 <= _T_159;
      end
    end
    if (reset) begin
      mem_56 <= 32'h38;
    end else if (_T_138) begin
      if (6'h38 == wRamAddr[7:2]) begin
        mem_56 <= _T_159;
      end
    end
    if (reset) begin
      mem_57 <= 32'h39;
    end else if (_T_138) begin
      if (6'h39 == wRamAddr[7:2]) begin
        mem_57 <= _T_159;
      end
    end
    if (reset) begin
      mem_58 <= 32'h3a;
    end else if (_T_138) begin
      if (6'h3a == wRamAddr[7:2]) begin
        mem_58 <= _T_159;
      end
    end
    if (reset) begin
      mem_59 <= 32'h3b;
    end else if (_T_138) begin
      if (6'h3b == wRamAddr[7:2]) begin
        mem_59 <= _T_159;
      end
    end
    if (reset) begin
      mem_60 <= 32'h3c;
    end else if (_T_138) begin
      if (6'h3c == wRamAddr[7:2]) begin
        mem_60 <= _T_159;
      end
    end
    if (reset) begin
      mem_61 <= 32'h3d;
    end else if (_T_138) begin
      if (6'h3d == wRamAddr[7:2]) begin
        mem_61 <= _T_159;
      end
    end
    if (reset) begin
      mem_62 <= 32'h3e;
    end else if (_T_138) begin
      if (6'h3e == wRamAddr[7:2]) begin
        mem_62 <= _T_159;
      end
    end
    if (reset) begin
      mem_63 <= 32'h3f;
    end else if (_T_138) begin
      if (6'h3f == wRamAddr[7:2]) begin
        mem_63 <= _T_159;
      end
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
    end else if (_T_106) begin
      if (io_axi_w_valid) begin
        if (_T_107) begin
          wState <= 2'h2;
        end
      end
    end else if (_T_136) begin
      if (io_axi_b_ready) begin
        wState <= 2'h0;
      end
    end
    if (reset) begin
      wLen <= 4'h0;
    end else if (_T_97) begin
      if (dataWQ_io_deq_valid) begin
        wLen <= dataWQ_io_deq_bits_len;
      end
    end else if (_T_106) begin
      if (io_axi_w_valid) begin
        if (!(_T_107)) begin
          wLen <= _T_135;
        end
      end
    end
    if (reset) begin
      wBurst <= 2'h0;
    end else if (_T_97) begin
      if (dataWQ_io_deq_valid) begin
        wBurst <= dataWQ_io_deq_bits_burst;
      end
    end
    if (reset) begin
      wWrapSel <= 3'h0;
    end else if (_T_97) begin
      if (dataWQ_io_deq_valid) begin
        if (_T_104) begin
          wWrapSel <= 3'h6;
        end else if (_T_102) begin
          wWrapSel <= 3'h5;
        end else if (_T_100) begin
          wWrapSel <= 3'h4;
        end else begin
          wWrapSel <= {{1'd0}, _T_99};
        end
      end
    end
    if (reset) begin
      wRamAddr <= 32'h0;
    end else if (_T_97) begin
      if (dataWQ_io_deq_valid) begin
        wRamAddr <= dataWQ_io_deq_bits_addr;
      end
    end else if (_T_106) begin
      if (io_axi_w_valid) begin
        if (!(_T_107)) begin
          if (_T_132) begin
            wRamAddr <= _T_129;
          end else if (_T_130) begin
            wRamAddr <= _T_115;
          end else begin
            wRamAddr <= 32'h0;
          end
        end
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_314 & _T_112) begin
          $fwrite(32'h80000002,"Assertion failed: wLen conflict with w.last\n    at SymbiyosysAXIRam.scala:146 assert(!(wLen === 0.U ^ w.bits.last), \"wLen conflict with w.last\")\n"); // @[SymbiyosysAXIRam.scala 146:15]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_314 & _T_112) begin
          $fatal; // @[SymbiyosysAXIRam.scala 146:15]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module VeriDCache(
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
  output        io_cacheInstruction_ready,
  input         io_cacheInstruction_valid
);
  wire  dcache_clock; // @[VeriDCache.scala 19:23]
  wire  dcache_reset; // @[VeriDCache.scala 19:23]
  wire  dcache_io_cacheInstruction_ready; // @[VeriDCache.scala 19:23]
  wire  dcache_io_cacheInstruction_valid; // @[VeriDCache.scala 19:23]
  wire  dcache_io_request_ready; // @[VeriDCache.scala 19:23]
  wire  dcache_io_request_valid; // @[VeriDCache.scala 19:23]
  wire [19:0] dcache_io_request_bits_tag; // @[VeriDCache.scala 19:23]
  wire [11:0] dcache_io_request_bits_physicalIndex; // @[VeriDCache.scala 19:23]
  wire [3:0] dcache_io_request_bits_writeMask; // @[VeriDCache.scala 19:23]
  wire [31:0] dcache_io_request_bits_writeData; // @[VeriDCache.scala 19:23]
  wire  dcache_io_commit; // @[VeriDCache.scala 19:23]
  wire [31:0] dcache_io_readData; // @[VeriDCache.scala 19:23]
  wire  dcache_io_axi_ar_ready; // @[VeriDCache.scala 19:23]
  wire  dcache_io_axi_ar_valid; // @[VeriDCache.scala 19:23]
  wire [31:0] dcache_io_axi_ar_bits_addr; // @[VeriDCache.scala 19:23]
  wire  dcache_io_axi_r_ready; // @[VeriDCache.scala 19:23]
  wire  dcache_io_axi_r_valid; // @[VeriDCache.scala 19:23]
  wire [31:0] dcache_io_axi_r_bits_data; // @[VeriDCache.scala 19:23]
  wire  dcache_io_axi_r_bits_last; // @[VeriDCache.scala 19:23]
  wire  dcache_io_axi_aw_ready; // @[VeriDCache.scala 19:23]
  wire  dcache_io_axi_aw_valid; // @[VeriDCache.scala 19:23]
  wire [31:0] dcache_io_axi_aw_bits_addr; // @[VeriDCache.scala 19:23]
  wire  dcache_io_axi_w_ready; // @[VeriDCache.scala 19:23]
  wire  dcache_io_axi_w_valid; // @[VeriDCache.scala 19:23]
  wire [31:0] dcache_io_axi_w_bits_data; // @[VeriDCache.scala 19:23]
  wire  dcache_io_axi_w_bits_last; // @[VeriDCache.scala 19:23]
  wire  dcache_io_axi_b_ready; // @[VeriDCache.scala 19:23]
  wire  dcache_io_axi_b_valid; // @[VeriDCache.scala 19:23]
  wire  veriRam_clock; // @[VeriDCache.scala 20:23]
  wire  veriRam_reset; // @[VeriDCache.scala 20:23]
  wire  veriRam_io_axi_ar_ready; // @[VeriDCache.scala 20:23]
  wire  veriRam_io_axi_ar_valid; // @[VeriDCache.scala 20:23]
  wire [31:0] veriRam_io_axi_ar_bits_addr; // @[VeriDCache.scala 20:23]
  wire  veriRam_io_axi_r_ready; // @[VeriDCache.scala 20:23]
  wire  veriRam_io_axi_r_valid; // @[VeriDCache.scala 20:23]
  wire [31:0] veriRam_io_axi_r_bits_data; // @[VeriDCache.scala 20:23]
  wire  veriRam_io_axi_r_bits_last; // @[VeriDCache.scala 20:23]
  wire  veriRam_io_axi_aw_ready; // @[VeriDCache.scala 20:23]
  wire  veriRam_io_axi_aw_valid; // @[VeriDCache.scala 20:23]
  wire [31:0] veriRam_io_axi_aw_bits_addr; // @[VeriDCache.scala 20:23]
  wire  veriRam_io_axi_w_ready; // @[VeriDCache.scala 20:23]
  wire  veriRam_io_axi_w_valid; // @[VeriDCache.scala 20:23]
  wire [31:0] veriRam_io_axi_w_bits_data; // @[VeriDCache.scala 20:23]
  wire  veriRam_io_axi_w_bits_last; // @[VeriDCache.scala 20:23]
  wire  veriRam_io_axi_b_ready; // @[VeriDCache.scala 20:23]
  wire  veriRam_io_axi_b_valid; // @[VeriDCache.scala 20:23]
  DataCache dcache ( // @[VeriDCache.scala 19:23]
    .clock(dcache_clock),
    .reset(dcache_reset),
    .io_cacheInstruction_ready(dcache_io_cacheInstruction_ready),
    .io_cacheInstruction_valid(dcache_io_cacheInstruction_valid),
    .io_request_ready(dcache_io_request_ready),
    .io_request_valid(dcache_io_request_valid),
    .io_request_bits_tag(dcache_io_request_bits_tag),
    .io_request_bits_physicalIndex(dcache_io_request_bits_physicalIndex),
    .io_request_bits_writeMask(dcache_io_request_bits_writeMask),
    .io_request_bits_writeData(dcache_io_request_bits_writeData),
    .io_commit(dcache_io_commit),
    .io_readData(dcache_io_readData),
    .io_axi_ar_ready(dcache_io_axi_ar_ready),
    .io_axi_ar_valid(dcache_io_axi_ar_valid),
    .io_axi_ar_bits_addr(dcache_io_axi_ar_bits_addr),
    .io_axi_r_ready(dcache_io_axi_r_ready),
    .io_axi_r_valid(dcache_io_axi_r_valid),
    .io_axi_r_bits_data(dcache_io_axi_r_bits_data),
    .io_axi_r_bits_last(dcache_io_axi_r_bits_last),
    .io_axi_aw_ready(dcache_io_axi_aw_ready),
    .io_axi_aw_valid(dcache_io_axi_aw_valid),
    .io_axi_aw_bits_addr(dcache_io_axi_aw_bits_addr),
    .io_axi_w_ready(dcache_io_axi_w_ready),
    .io_axi_w_valid(dcache_io_axi_w_valid),
    .io_axi_w_bits_data(dcache_io_axi_w_bits_data),
    .io_axi_w_bits_last(dcache_io_axi_w_bits_last),
    .io_axi_b_ready(dcache_io_axi_b_ready),
    .io_axi_b_valid(dcache_io_axi_b_valid)
  );
  SymbiyosysAXIRam veriRam ( // @[VeriDCache.scala 20:23]
    .clock(veriRam_clock),
    .reset(veriRam_reset),
    .io_axi_ar_ready(veriRam_io_axi_ar_ready),
    .io_axi_ar_valid(veriRam_io_axi_ar_valid),
    .io_axi_ar_bits_addr(veriRam_io_axi_ar_bits_addr),
    .io_axi_r_ready(veriRam_io_axi_r_ready),
    .io_axi_r_valid(veriRam_io_axi_r_valid),
    .io_axi_r_bits_data(veriRam_io_axi_r_bits_data),
    .io_axi_r_bits_last(veriRam_io_axi_r_bits_last),
    .io_axi_aw_ready(veriRam_io_axi_aw_ready),
    .io_axi_aw_valid(veriRam_io_axi_aw_valid),
    .io_axi_aw_bits_addr(veriRam_io_axi_aw_bits_addr),
    .io_axi_w_ready(veriRam_io_axi_w_ready),
    .io_axi_w_valid(veriRam_io_axi_w_valid),
    .io_axi_w_bits_data(veriRam_io_axi_w_bits_data),
    .io_axi_w_bits_last(veriRam_io_axi_w_bits_last),
    .io_axi_b_ready(veriRam_io_axi_b_ready),
    .io_axi_b_valid(veriRam_io_axi_b_valid)
  );
  assign io_request_ready = dcache_io_request_ready; // @[VeriDCache.scala 23:21]
  assign io_data_valid = dcache_io_commit; // @[VeriDCache.scala 24:21]
  assign io_data_bits = dcache_io_readData; // @[VeriDCache.scala 25:21]
  assign io_cacheInstruction_ready = dcache_io_cacheInstruction_ready; // @[VeriDCache.scala 21:30]
  assign dcache_clock = clock;
  assign dcache_reset = reset;
  assign dcache_io_cacheInstruction_valid = io_cacheInstruction_valid; // @[VeriDCache.scala 21:30]
  assign dcache_io_request_valid = io_request_valid; // @[VeriDCache.scala 23:21]
  assign dcache_io_request_bits_tag = io_request_bits_tag; // @[VeriDCache.scala 23:21]
  assign dcache_io_request_bits_physicalIndex = io_request_bits_physicalIndex; // @[VeriDCache.scala 23:21]
  assign dcache_io_request_bits_writeMask = io_request_bits_writeMask; // @[VeriDCache.scala 23:21]
  assign dcache_io_request_bits_writeData = io_request_bits_writeData; // @[VeriDCache.scala 23:21]
  assign dcache_io_axi_ar_ready = veriRam_io_axi_ar_ready; // @[VeriDCache.scala 22:21]
  assign dcache_io_axi_r_valid = veriRam_io_axi_r_valid; // @[VeriDCache.scala 22:21]
  assign dcache_io_axi_r_bits_data = veriRam_io_axi_r_bits_data; // @[VeriDCache.scala 22:21]
  assign dcache_io_axi_r_bits_last = veriRam_io_axi_r_bits_last; // @[VeriDCache.scala 22:21]
  assign dcache_io_axi_aw_ready = veriRam_io_axi_aw_ready; // @[VeriDCache.scala 22:21]
  assign dcache_io_axi_w_ready = veriRam_io_axi_w_ready; // @[VeriDCache.scala 22:21]
  assign dcache_io_axi_b_valid = veriRam_io_axi_b_valid; // @[VeriDCache.scala 22:21]
  assign veriRam_clock = clock;
  assign veriRam_reset = reset;
  assign veriRam_io_axi_ar_valid = dcache_io_axi_ar_valid; // @[VeriDCache.scala 22:21]
  assign veriRam_io_axi_ar_bits_addr = dcache_io_axi_ar_bits_addr; // @[VeriDCache.scala 22:21]
  assign veriRam_io_axi_r_ready = dcache_io_axi_r_ready; // @[VeriDCache.scala 22:21]
  assign veriRam_io_axi_aw_valid = dcache_io_axi_aw_valid; // @[VeriDCache.scala 22:21]
  assign veriRam_io_axi_aw_bits_addr = dcache_io_axi_aw_bits_addr; // @[VeriDCache.scala 22:21]
  assign veriRam_io_axi_w_valid = dcache_io_axi_w_valid; // @[VeriDCache.scala 22:21]
  assign veriRam_io_axi_w_bits_data = dcache_io_axi_w_bits_data; // @[VeriDCache.scala 22:21]
  assign veriRam_io_axi_w_bits_last = dcache_io_axi_w_bits_last; // @[VeriDCache.scala 22:21]
  assign veriRam_io_axi_b_ready = dcache_io_axi_b_ready; // @[VeriDCache.scala 22:21]
endmodule
