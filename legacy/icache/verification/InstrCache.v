module LUTRam(
  input         clock,
  input         reset,
  input  [5:0]  io_readAddr,
  output [20:0] io_readData,
  input  [5:0]  io_writeAddr,
  input  [20:0] io_writeData,
  input         io_writeEnable
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg [20:0] _T_6 [0:63]; // @[LUTRam.scala 57:27]
  wire [20:0] _T_6__T_7_data; // @[LUTRam.scala 57:27]
  wire [5:0] _T_6__T_7_addr; // @[LUTRam.scala 57:27]
  wire [20:0] _T_6__T_9_data; // @[LUTRam.scala 57:27]
  wire [5:0] _T_6__T_9_addr; // @[LUTRam.scala 57:27]
  wire [20:0] _T_6__T_8_data; // @[LUTRam.scala 57:27]
  wire [5:0] _T_6__T_8_addr; // @[LUTRam.scala 57:27]
  wire  _T_6__T_8_mask; // @[LUTRam.scala 57:27]
  wire  _T_6__T_8_en; // @[LUTRam.scala 57:27]
  reg [5:0] _T_6__T_7_addr_pipe_0;
  reg  _T_6__T_9_en_pipe_0;
  reg [5:0] _T_6__T_9_addr_pipe_0;
  wire  _T = io_readAddr == io_writeAddr; // @[LUTRam.scala 54:39]
  wire  _T_1 = io_writeEnable & _T; // @[LUTRam.scala 54:24]
  wire  _T_2 = ~_T_1; // @[LUTRam.scala 54:7]
  wire  _T_4 = _T_2 | reset; // @[LUTRam.scala 53:11]
  wire  _T_5 = ~_T_4; // @[LUTRam.scala 53:11]
  assign _T_6__T_7_addr = _T_6__T_7_addr_pipe_0;
  assign _T_6__T_7_data = _T_6[_T_6__T_7_addr]; // @[LUTRam.scala 57:27]
  assign _T_6__T_9_addr = _T_6__T_9_addr_pipe_0;
  assign _T_6__T_9_data = _T_6[_T_6__T_9_addr]; // @[LUTRam.scala 57:27]
  assign _T_6__T_8_data = io_writeData;
  assign _T_6__T_8_addr = io_writeAddr;
  assign _T_6__T_8_mask = 1'h1;
  assign _T_6__T_8_en = io_writeEnable;
  assign io_readData = _T_6__T_7_data; // @[LUTRam.scala 58:20]
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
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    _T_6[initvar] = _RAND_0[20:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_6__T_7_addr_pipe_0 = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  _T_6__T_9_en_pipe_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  _T_6__T_9_addr_pipe_0 = _RAND_3[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(_T_6__T_8_en & _T_6__T_8_mask) begin
      _T_6[_T_6__T_8_addr] <= _T_6__T_8_data; // @[LUTRam.scala 57:27]
    end
    _T_6__T_7_addr_pipe_0 <= io_readAddr;
    if (io_writeEnable) begin
      _T_6__T_9_en_pipe_0 <= 1'h0;
    end else begin
      _T_6__T_9_en_pipe_0 <= 1'h1;
    end
    if (io_writeEnable ? 1'h0 : 1'h1) begin
      _T_6__T_9_addr_pipe_0 <= io_writeAddr;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_5) begin
          $fwrite(32'h80000002,"Assertion failed: there has been an address collision, the address is UInt<6>(IO in unelaborated LUTRam)\n    at LUTRam.scala:53 assert(\n"); // @[LUTRam.scala 53:11]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_5) begin
          $fatal; // @[LUTRam.scala 53:11]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module TagValidBanks(
  input         clock,
  input         reset,
  input  [5:0]  io_way_0_portA_addr,
  output [19:0] io_way_0_portA_data_tag,
  output        io_way_0_portA_data_valid,
  input  [5:0]  io_way_0_portB_addr,
  input         io_way_0_portB_writeEnable,
  input  [19:0] io_way_0_portB_writeData_tag,
  input  [5:0]  io_way_1_portA_addr,
  output [19:0] io_way_1_portA_data_tag,
  output        io_way_1_portA_data_valid,
  input  [5:0]  io_way_1_portB_addr,
  input         io_way_1_portB_writeEnable,
  input  [19:0] io_way_1_portB_writeData_tag,
  input  [5:0]  io_way_2_portA_addr,
  output [19:0] io_way_2_portA_data_tag,
  output        io_way_2_portA_data_valid,
  input  [5:0]  io_way_2_portB_addr,
  input         io_way_2_portB_writeEnable,
  input  [19:0] io_way_2_portB_writeData_tag,
  input  [5:0]  io_way_3_portA_addr,
  output [19:0] io_way_3_portA_data_tag,
  output        io_way_3_portA_data_valid,
  input  [5:0]  io_way_3_portB_addr,
  input         io_way_3_portB_writeEnable,
  input  [19:0] io_way_3_portB_writeData_tag
);
  wire  tag_valid_bank_way_0_clock; // @[TagValidBanks.scala 53:22]
  wire  tag_valid_bank_way_0_reset; // @[TagValidBanks.scala 53:22]
  wire [5:0] tag_valid_bank_way_0_io_readAddr; // @[TagValidBanks.scala 53:22]
  wire [20:0] tag_valid_bank_way_0_io_readData; // @[TagValidBanks.scala 53:22]
  wire [5:0] tag_valid_bank_way_0_io_writeAddr; // @[TagValidBanks.scala 53:22]
  wire [20:0] tag_valid_bank_way_0_io_writeData; // @[TagValidBanks.scala 53:22]
  wire  tag_valid_bank_way_0_io_writeEnable; // @[TagValidBanks.scala 53:22]
  wire  tag_valid_bank_way_1_clock; // @[TagValidBanks.scala 53:22]
  wire  tag_valid_bank_way_1_reset; // @[TagValidBanks.scala 53:22]
  wire [5:0] tag_valid_bank_way_1_io_readAddr; // @[TagValidBanks.scala 53:22]
  wire [20:0] tag_valid_bank_way_1_io_readData; // @[TagValidBanks.scala 53:22]
  wire [5:0] tag_valid_bank_way_1_io_writeAddr; // @[TagValidBanks.scala 53:22]
  wire [20:0] tag_valid_bank_way_1_io_writeData; // @[TagValidBanks.scala 53:22]
  wire  tag_valid_bank_way_1_io_writeEnable; // @[TagValidBanks.scala 53:22]
  wire  tag_valid_bank_way_2_clock; // @[TagValidBanks.scala 53:22]
  wire  tag_valid_bank_way_2_reset; // @[TagValidBanks.scala 53:22]
  wire [5:0] tag_valid_bank_way_2_io_readAddr; // @[TagValidBanks.scala 53:22]
  wire [20:0] tag_valid_bank_way_2_io_readData; // @[TagValidBanks.scala 53:22]
  wire [5:0] tag_valid_bank_way_2_io_writeAddr; // @[TagValidBanks.scala 53:22]
  wire [20:0] tag_valid_bank_way_2_io_writeData; // @[TagValidBanks.scala 53:22]
  wire  tag_valid_bank_way_2_io_writeEnable; // @[TagValidBanks.scala 53:22]
  wire  tag_valid_bank_way_3_clock; // @[TagValidBanks.scala 53:22]
  wire  tag_valid_bank_way_3_reset; // @[TagValidBanks.scala 53:22]
  wire [5:0] tag_valid_bank_way_3_io_readAddr; // @[TagValidBanks.scala 53:22]
  wire [20:0] tag_valid_bank_way_3_io_readData; // @[TagValidBanks.scala 53:22]
  wire [5:0] tag_valid_bank_way_3_io_writeAddr; // @[TagValidBanks.scala 53:22]
  wire [20:0] tag_valid_bank_way_3_io_writeData; // @[TagValidBanks.scala 53:22]
  wire  tag_valid_bank_way_3_io_writeEnable; // @[TagValidBanks.scala 53:22]
  wire [20:0] _T_1 = tag_valid_bank_way_0_io_readData;
  wire [20:0] _T_11 = tag_valid_bank_way_1_io_readData;
  wire [20:0] _T_21 = tag_valid_bank_way_2_io_readData;
  wire [20:0] _T_31 = tag_valid_bank_way_3_io_readData;
  LUTRam tag_valid_bank_way_0 ( // @[TagValidBanks.scala 53:22]
    .clock(tag_valid_bank_way_0_clock),
    .reset(tag_valid_bank_way_0_reset),
    .io_readAddr(tag_valid_bank_way_0_io_readAddr),
    .io_readData(tag_valid_bank_way_0_io_readData),
    .io_writeAddr(tag_valid_bank_way_0_io_writeAddr),
    .io_writeData(tag_valid_bank_way_0_io_writeData),
    .io_writeEnable(tag_valid_bank_way_0_io_writeEnable)
  );
  LUTRam tag_valid_bank_way_1 ( // @[TagValidBanks.scala 53:22]
    .clock(tag_valid_bank_way_1_clock),
    .reset(tag_valid_bank_way_1_reset),
    .io_readAddr(tag_valid_bank_way_1_io_readAddr),
    .io_readData(tag_valid_bank_way_1_io_readData),
    .io_writeAddr(tag_valid_bank_way_1_io_writeAddr),
    .io_writeData(tag_valid_bank_way_1_io_writeData),
    .io_writeEnable(tag_valid_bank_way_1_io_writeEnable)
  );
  LUTRam tag_valid_bank_way_2 ( // @[TagValidBanks.scala 53:22]
    .clock(tag_valid_bank_way_2_clock),
    .reset(tag_valid_bank_way_2_reset),
    .io_readAddr(tag_valid_bank_way_2_io_readAddr),
    .io_readData(tag_valid_bank_way_2_io_readData),
    .io_writeAddr(tag_valid_bank_way_2_io_writeAddr),
    .io_writeData(tag_valid_bank_way_2_io_writeData),
    .io_writeEnable(tag_valid_bank_way_2_io_writeEnable)
  );
  LUTRam tag_valid_bank_way_3 ( // @[TagValidBanks.scala 53:22]
    .clock(tag_valid_bank_way_3_clock),
    .reset(tag_valid_bank_way_3_reset),
    .io_readAddr(tag_valid_bank_way_3_io_readAddr),
    .io_readData(tag_valid_bank_way_3_io_readData),
    .io_writeAddr(tag_valid_bank_way_3_io_writeAddr),
    .io_writeData(tag_valid_bank_way_3_io_writeData),
    .io_writeEnable(tag_valid_bank_way_3_io_writeEnable)
  );
  assign io_way_0_portA_data_tag = _T_1[20:1]; // @[TagValidBanks.scala 56:26]
  assign io_way_0_portA_data_valid = _T_1[0]; // @[TagValidBanks.scala 56:26]
  assign io_way_1_portA_data_tag = _T_11[20:1]; // @[TagValidBanks.scala 56:26]
  assign io_way_1_portA_data_valid = _T_11[0]; // @[TagValidBanks.scala 56:26]
  assign io_way_2_portA_data_tag = _T_21[20:1]; // @[TagValidBanks.scala 56:26]
  assign io_way_2_portA_data_valid = _T_21[0]; // @[TagValidBanks.scala 56:26]
  assign io_way_3_portA_data_tag = _T_31[20:1]; // @[TagValidBanks.scala 56:26]
  assign io_way_3_portA_data_valid = _T_31[0]; // @[TagValidBanks.scala 56:26]
  assign tag_valid_bank_way_0_clock = clock;
  assign tag_valid_bank_way_0_reset = reset;
  assign tag_valid_bank_way_0_io_readAddr = io_way_0_portA_addr; // @[TagValidBanks.scala 55:22]
  assign tag_valid_bank_way_0_io_writeAddr = io_way_0_portB_addr; // @[TagValidBanks.scala 58:23]
  assign tag_valid_bank_way_0_io_writeData = {io_way_0_portB_writeData_tag,1'h1}; // @[TagValidBanks.scala 60:23]
  assign tag_valid_bank_way_0_io_writeEnable = io_way_0_portB_writeEnable; // @[TagValidBanks.scala 59:25]
  assign tag_valid_bank_way_1_clock = clock;
  assign tag_valid_bank_way_1_reset = reset;
  assign tag_valid_bank_way_1_io_readAddr = io_way_1_portA_addr; // @[TagValidBanks.scala 55:22]
  assign tag_valid_bank_way_1_io_writeAddr = io_way_1_portB_addr; // @[TagValidBanks.scala 58:23]
  assign tag_valid_bank_way_1_io_writeData = {io_way_1_portB_writeData_tag,1'h1}; // @[TagValidBanks.scala 60:23]
  assign tag_valid_bank_way_1_io_writeEnable = io_way_1_portB_writeEnable; // @[TagValidBanks.scala 59:25]
  assign tag_valid_bank_way_2_clock = clock;
  assign tag_valid_bank_way_2_reset = reset;
  assign tag_valid_bank_way_2_io_readAddr = io_way_2_portA_addr; // @[TagValidBanks.scala 55:22]
  assign tag_valid_bank_way_2_io_writeAddr = io_way_2_portB_addr; // @[TagValidBanks.scala 58:23]
  assign tag_valid_bank_way_2_io_writeData = {io_way_2_portB_writeData_tag,1'h1}; // @[TagValidBanks.scala 60:23]
  assign tag_valid_bank_way_2_io_writeEnable = io_way_2_portB_writeEnable; // @[TagValidBanks.scala 59:25]
  assign tag_valid_bank_way_3_clock = clock;
  assign tag_valid_bank_way_3_reset = reset;
  assign tag_valid_bank_way_3_io_readAddr = io_way_3_portA_addr; // @[TagValidBanks.scala 55:22]
  assign tag_valid_bank_way_3_io_writeAddr = io_way_3_portB_addr; // @[TagValidBanks.scala 58:23]
  assign tag_valid_bank_way_3_io_writeData = {io_way_3_portB_writeData_tag,1'h1}; // @[TagValidBanks.scala 60:23]
  assign tag_valid_bank_way_3_io_writeEnable = io_way_3_portB_writeEnable; // @[TagValidBanks.scala 59:25]
endmodule
module TagValid(
  input         clock,
  input         reset,
  input  [5:0]  io_address,
  input         io_write_valid,
  input  [1:0]  io_write_bits_waySelection,
  input  [19:0] io_write_bits_tagValid_tag,
  output [19:0] io_tagValid_0_tag,
  output        io_tagValid_0_valid,
  output [19:0] io_tagValid_1_tag,
  output        io_tagValid_1_valid,
  output [19:0] io_tagValid_2_tag,
  output        io_tagValid_2_valid,
  output [19:0] io_tagValid_3_tag,
  output        io_tagValid_3_valid
);
  wire  tagValidBanks_clock; // @[TagValid.scala 26:29]
  wire  tagValidBanks_reset; // @[TagValid.scala 26:29]
  wire [5:0] tagValidBanks_io_way_0_portA_addr; // @[TagValid.scala 26:29]
  wire [19:0] tagValidBanks_io_way_0_portA_data_tag; // @[TagValid.scala 26:29]
  wire  tagValidBanks_io_way_0_portA_data_valid; // @[TagValid.scala 26:29]
  wire [5:0] tagValidBanks_io_way_0_portB_addr; // @[TagValid.scala 26:29]
  wire  tagValidBanks_io_way_0_portB_writeEnable; // @[TagValid.scala 26:29]
  wire [19:0] tagValidBanks_io_way_0_portB_writeData_tag; // @[TagValid.scala 26:29]
  wire [5:0] tagValidBanks_io_way_1_portA_addr; // @[TagValid.scala 26:29]
  wire [19:0] tagValidBanks_io_way_1_portA_data_tag; // @[TagValid.scala 26:29]
  wire  tagValidBanks_io_way_1_portA_data_valid; // @[TagValid.scala 26:29]
  wire [5:0] tagValidBanks_io_way_1_portB_addr; // @[TagValid.scala 26:29]
  wire  tagValidBanks_io_way_1_portB_writeEnable; // @[TagValid.scala 26:29]
  wire [19:0] tagValidBanks_io_way_1_portB_writeData_tag; // @[TagValid.scala 26:29]
  wire [5:0] tagValidBanks_io_way_2_portA_addr; // @[TagValid.scala 26:29]
  wire [19:0] tagValidBanks_io_way_2_portA_data_tag; // @[TagValid.scala 26:29]
  wire  tagValidBanks_io_way_2_portA_data_valid; // @[TagValid.scala 26:29]
  wire [5:0] tagValidBanks_io_way_2_portB_addr; // @[TagValid.scala 26:29]
  wire  tagValidBanks_io_way_2_portB_writeEnable; // @[TagValid.scala 26:29]
  wire [19:0] tagValidBanks_io_way_2_portB_writeData_tag; // @[TagValid.scala 26:29]
  wire [5:0] tagValidBanks_io_way_3_portA_addr; // @[TagValid.scala 26:29]
  wire [19:0] tagValidBanks_io_way_3_portA_data_tag; // @[TagValid.scala 26:29]
  wire  tagValidBanks_io_way_3_portA_data_valid; // @[TagValid.scala 26:29]
  wire [5:0] tagValidBanks_io_way_3_portB_addr; // @[TagValid.scala 26:29]
  wire  tagValidBanks_io_way_3_portB_writeEnable; // @[TagValid.scala 26:29]
  wire [19:0] tagValidBanks_io_way_3_portB_writeData_tag; // @[TagValid.scala 26:29]
  wire  _T = io_write_bits_waySelection == 2'h0; // @[TagValid.scala 36:95]
  wire  _T_2 = io_write_bits_waySelection == 2'h1; // @[TagValid.scala 36:95]
  wire  _T_4 = io_write_bits_waySelection == 2'h2; // @[TagValid.scala 36:95]
  wire  _T_6 = io_write_bits_waySelection == 2'h3; // @[TagValid.scala 36:95]
  TagValidBanks tagValidBanks ( // @[TagValid.scala 26:29]
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
    .io_way_1_portB_writeData_tag(tagValidBanks_io_way_1_portB_writeData_tag),
    .io_way_2_portA_addr(tagValidBanks_io_way_2_portA_addr),
    .io_way_2_portA_data_tag(tagValidBanks_io_way_2_portA_data_tag),
    .io_way_2_portA_data_valid(tagValidBanks_io_way_2_portA_data_valid),
    .io_way_2_portB_addr(tagValidBanks_io_way_2_portB_addr),
    .io_way_2_portB_writeEnable(tagValidBanks_io_way_2_portB_writeEnable),
    .io_way_2_portB_writeData_tag(tagValidBanks_io_way_2_portB_writeData_tag),
    .io_way_3_portA_addr(tagValidBanks_io_way_3_portA_addr),
    .io_way_3_portA_data_tag(tagValidBanks_io_way_3_portA_data_tag),
    .io_way_3_portA_data_valid(tagValidBanks_io_way_3_portA_data_valid),
    .io_way_3_portB_addr(tagValidBanks_io_way_3_portB_addr),
    .io_way_3_portB_writeEnable(tagValidBanks_io_way_3_portB_writeEnable),
    .io_way_3_portB_writeData_tag(tagValidBanks_io_way_3_portB_writeData_tag)
  );
  assign io_tagValid_0_tag = tagValidBanks_io_way_0_portA_data_tag; // @[TagValid.scala 32:20]
  assign io_tagValid_0_valid = tagValidBanks_io_way_0_portA_data_valid; // @[TagValid.scala 32:20]
  assign io_tagValid_1_tag = tagValidBanks_io_way_1_portA_data_tag; // @[TagValid.scala 32:20]
  assign io_tagValid_1_valid = tagValidBanks_io_way_1_portA_data_valid; // @[TagValid.scala 32:20]
  assign io_tagValid_2_tag = tagValidBanks_io_way_2_portA_data_tag; // @[TagValid.scala 32:20]
  assign io_tagValid_2_valid = tagValidBanks_io_way_2_portA_data_valid; // @[TagValid.scala 32:20]
  assign io_tagValid_3_tag = tagValidBanks_io_way_3_portA_data_tag; // @[TagValid.scala 32:20]
  assign io_tagValid_3_valid = tagValidBanks_io_way_3_portA_data_valid; // @[TagValid.scala 32:20]
  assign tagValidBanks_clock = clock;
  assign tagValidBanks_reset = reset;
  assign tagValidBanks_io_way_0_portA_addr = io_address; // @[TagValid.scala 31:40]
  assign tagValidBanks_io_way_0_portB_addr = io_address; // @[TagValid.scala 35:40]
  assign tagValidBanks_io_way_0_portB_writeEnable = io_write_valid & _T; // @[TagValid.scala 36:47]
  assign tagValidBanks_io_way_0_portB_writeData_tag = io_write_bits_tagValid_tag; // @[TagValid.scala 37:45]
  assign tagValidBanks_io_way_1_portA_addr = io_address; // @[TagValid.scala 31:40]
  assign tagValidBanks_io_way_1_portB_addr = io_address; // @[TagValid.scala 35:40]
  assign tagValidBanks_io_way_1_portB_writeEnable = io_write_valid & _T_2; // @[TagValid.scala 36:47]
  assign tagValidBanks_io_way_1_portB_writeData_tag = io_write_bits_tagValid_tag; // @[TagValid.scala 37:45]
  assign tagValidBanks_io_way_2_portA_addr = io_address; // @[TagValid.scala 31:40]
  assign tagValidBanks_io_way_2_portB_addr = io_address; // @[TagValid.scala 35:40]
  assign tagValidBanks_io_way_2_portB_writeEnable = io_write_valid & _T_4; // @[TagValid.scala 36:47]
  assign tagValidBanks_io_way_2_portB_writeData_tag = io_write_bits_tagValid_tag; // @[TagValid.scala 37:45]
  assign tagValidBanks_io_way_3_portA_addr = io_address; // @[TagValid.scala 31:40]
  assign tagValidBanks_io_way_3_portB_addr = io_address; // @[TagValid.scala 35:40]
  assign tagValidBanks_io_way_3_portB_writeEnable = io_write_valid & _T_6; // @[TagValid.scala 36:47]
  assign tagValidBanks_io_way_3_portB_writeData_tag = io_write_bits_tagValid_tag; // @[TagValid.scala 37:45]
endmodule
module FetchTop(
  input         clock,
  input         reset,
  input  [31:0] io_addr,
  input         io_writeTagValid_valid,
  input  [1:0]  io_writeTagValid_bits_waySelection,
  input  [19:0] io_writeTagValid_bits_tagValid_tag,
  output [5:0]  io_index,
  output [19:0] io_tagValid_0_tag,
  output        io_tagValid_0_valid,
  output [19:0] io_tagValid_1_tag,
  output        io_tagValid_1_valid,
  output [19:0] io_tagValid_2_tag,
  output        io_tagValid_2_valid,
  output [19:0] io_tagValid_3_tag,
  output        io_tagValid_3_valid,
  output [19:0] io_phyTag,
  output [3:0]  io_bankIndex
);
  wire  tagValid_clock; // @[FetchTop.scala 28:24]
  wire  tagValid_reset; // @[FetchTop.scala 28:24]
  wire [5:0] tagValid_io_address; // @[FetchTop.scala 28:24]
  wire  tagValid_io_write_valid; // @[FetchTop.scala 28:24]
  wire [1:0] tagValid_io_write_bits_waySelection; // @[FetchTop.scala 28:24]
  wire [19:0] tagValid_io_write_bits_tagValid_tag; // @[FetchTop.scala 28:24]
  wire [19:0] tagValid_io_tagValid_0_tag; // @[FetchTop.scala 28:24]
  wire  tagValid_io_tagValid_0_valid; // @[FetchTop.scala 28:24]
  wire [19:0] tagValid_io_tagValid_1_tag; // @[FetchTop.scala 28:24]
  wire  tagValid_io_tagValid_1_valid; // @[FetchTop.scala 28:24]
  wire [19:0] tagValid_io_tagValid_2_tag; // @[FetchTop.scala 28:24]
  wire  tagValid_io_tagValid_2_valid; // @[FetchTop.scala 28:24]
  wire [19:0] tagValid_io_tagValid_3_tag; // @[FetchTop.scala 28:24]
  wire  tagValid_io_tagValid_3_valid; // @[FetchTop.scala 28:24]
  TagValid tagValid ( // @[FetchTop.scala 28:24]
    .clock(tagValid_clock),
    .reset(tagValid_reset),
    .io_address(tagValid_io_address),
    .io_write_valid(tagValid_io_write_valid),
    .io_write_bits_waySelection(tagValid_io_write_bits_waySelection),
    .io_write_bits_tagValid_tag(tagValid_io_write_bits_tagValid_tag),
    .io_tagValid_0_tag(tagValid_io_tagValid_0_tag),
    .io_tagValid_0_valid(tagValid_io_tagValid_0_valid),
    .io_tagValid_1_tag(tagValid_io_tagValid_1_tag),
    .io_tagValid_1_valid(tagValid_io_tagValid_1_valid),
    .io_tagValid_2_tag(tagValid_io_tagValid_2_tag),
    .io_tagValid_2_valid(tagValid_io_tagValid_2_valid),
    .io_tagValid_3_tag(tagValid_io_tagValid_3_tag),
    .io_tagValid_3_valid(tagValid_io_tagValid_3_valid)
  );
  assign io_index = io_addr[11:6]; // @[FetchTop.scala 34:12]
  assign io_tagValid_0_tag = tagValid_io_tagValid_0_tag; // @[FetchTop.scala 37:15]
  assign io_tagValid_0_valid = tagValid_io_tagValid_0_valid; // @[FetchTop.scala 37:15]
  assign io_tagValid_1_tag = tagValid_io_tagValid_1_tag; // @[FetchTop.scala 37:15]
  assign io_tagValid_1_valid = tagValid_io_tagValid_1_valid; // @[FetchTop.scala 37:15]
  assign io_tagValid_2_tag = tagValid_io_tagValid_2_tag; // @[FetchTop.scala 37:15]
  assign io_tagValid_2_valid = tagValid_io_tagValid_2_valid; // @[FetchTop.scala 37:15]
  assign io_tagValid_3_tag = tagValid_io_tagValid_3_tag; // @[FetchTop.scala 37:15]
  assign io_tagValid_3_valid = tagValid_io_tagValid_3_valid; // @[FetchTop.scala 37:15]
  assign io_phyTag = io_addr[31:12]; // @[FetchTop.scala 40:13]
  assign io_bankIndex = io_addr[5:2]; // @[FetchTop.scala 38:16]
  assign tagValid_clock = clock;
  assign tagValid_reset = reset;
  assign tagValid_io_address = io_addr[11:6]; // @[FetchTop.scala 35:23]
  assign tagValid_io_write_valid = io_writeTagValid_valid; // @[FetchTop.scala 36:21]
  assign tagValid_io_write_bits_waySelection = io_writeTagValid_bits_waySelection; // @[FetchTop.scala 36:21]
  assign tagValid_io_write_bits_tagValid_tag = io_writeTagValid_bits_tagValid_tag; // @[FetchTop.scala 36:21]
endmodule
module MSHR(
  input         clock,
  input         reset,
  output        io_missAddr_ready,
  input         io_missAddr_valid,
  input  [19:0] io_missAddr_bits_tag,
  input  [5:0]  io_missAddr_bits_index,
  input  [3:0]  io_missAddr_bits_bankIndex,
  input         io_readyForWB,
  output        io_writeBack,
  output [19:0] io_mshrInfo_tag,
  output [5:0]  io_mshrInfo_index,
  output [3:0]  io_mshrInfo_bankIndex
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [19:0] missEntryReg_tag; // @[MSHR.scala 31:29]
  reg [5:0] missEntryReg_index; // @[MSHR.scala 31:29]
  reg [3:0] missEntryReg_bankIndex; // @[MSHR.scala 31:29]
  reg  wbNext; // @[MSHR.scala 32:29]
  reg  state; // @[MSHR.scala 35:42]
  wire  _T_1 = ~state; // @[MSHR.scala 39:30]
  wire  _GEN_3 = io_missAddr_valid | state; // @[MSHR.scala 43:31]
  wire  _GEN_6 = state & io_readyForWB; // @[Conditional.scala 39:67]
  assign io_missAddr_ready = ~state; // @[MSHR.scala 39:21]
  assign io_writeBack = wbNext; // @[MSHR.scala 37:21]
  assign io_mshrInfo_tag = missEntryReg_tag; // @[MSHR.scala 38:21]
  assign io_mshrInfo_index = missEntryReg_index; // @[MSHR.scala 38:21]
  assign io_mshrInfo_bankIndex = missEntryReg_bankIndex; // @[MSHR.scala 38:21]
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
  missEntryReg_tag = _RAND_0[19:0];
  _RAND_1 = {1{`RANDOM}};
  missEntryReg_index = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  missEntryReg_bankIndex = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  wbNext = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  state = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      missEntryReg_tag <= 20'h0;
    end else if (_T_1) begin
      if (io_missAddr_valid) begin
        missEntryReg_tag <= io_missAddr_bits_tag;
      end
    end
    if (reset) begin
      missEntryReg_index <= 6'h0;
    end else if (_T_1) begin
      if (io_missAddr_valid) begin
        missEntryReg_index <= io_missAddr_bits_index;
      end
    end
    if (reset) begin
      missEntryReg_bankIndex <= 4'h0;
    end else if (_T_1) begin
      if (io_missAddr_valid) begin
        missEntryReg_bankIndex <= io_missAddr_bits_bankIndex;
      end
    end
    if (reset) begin
      wbNext <= 1'h0;
    end else if (_T_1) begin
      wbNext <= 1'h0;
    end else begin
      wbNext <= _GEN_6;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_1) begin
      state <= _GEN_3;
    end else if (state) begin
      if (io_readyForWB) begin
        state <= 1'h0;
      end
    end
  end
endmodule
module MissComparator(
  input  [19:0] io_tagValid_0_tag,
  input         io_tagValid_0_valid,
  input  [19:0] io_tagValid_1_tag,
  input         io_tagValid_1_valid,
  input  [19:0] io_tagValid_2_tag,
  input         io_tagValid_2_valid,
  input  [19:0] io_tagValid_3_tag,
  input         io_tagValid_3_valid,
  input  [19:0] io_phyTag,
  input  [5:0]  io_index,
  input         io_mshr_valid,
  input  [19:0] io_mshr_bits_tag,
  input  [5:0]  io_mshr_bits_index,
  input         io_refillBufferValid,
  output        io_bankHitWay_valid,
  output [1:0]  io_bankHitWay_bits,
  output        io_hitInRefillBuffer
);
  wire  _T = io_tagValid_0_tag == io_phyTag; // @[MissComparator.scala 24:89]
  wire  bankHitVec_0 = io_tagValid_0_valid & _T; // @[MissComparator.scala 24:67]
  wire  _T_2 = io_tagValid_1_tag == io_phyTag; // @[MissComparator.scala 24:89]
  wire  bankHitVec_1 = io_tagValid_1_valid & _T_2; // @[MissComparator.scala 24:67]
  wire  _T_4 = io_tagValid_2_tag == io_phyTag; // @[MissComparator.scala 24:89]
  wire  bankHitVec_2 = io_tagValid_2_valid & _T_4; // @[MissComparator.scala 24:67]
  wire  _T_6 = io_tagValid_3_tag == io_phyTag; // @[MissComparator.scala 24:89]
  wire  bankHitVec_3 = io_tagValid_3_valid & _T_6; // @[MissComparator.scala 24:67]
  wire  _T_8 = ~bankHitVec_0; // @[MissComparator.scala 26:45]
  wire  _T_9 = ~bankHitVec_1; // @[MissComparator.scala 26:45]
  wire  _T_10 = ~bankHitVec_2; // @[MissComparator.scala 26:45]
  wire  _T_11 = ~bankHitVec_3; // @[MissComparator.scala 26:45]
  wire  _T_13 = _T_8 | _T_9; // @[MissComparator.scala 26:45]
  wire  _T_14 = _T_13 | _T_10; // @[MissComparator.scala 26:45]
  wire [1:0] _T_20 = bankHitVec_2 ? 2'h2 : 2'h3; // @[MissComparator.scala 27:46]
  wire [1:0] _T_21 = bankHitVec_1 ? 2'h1 : _T_20; // @[MissComparator.scala 27:46]
  wire  _T_23 = io_phyTag == io_mshr_bits_tag; // @[MissComparator.scala 35:17]
  wire  _T_24 = io_mshr_valid & _T_23; // @[MissComparator.scala 34:19]
  wire  _T_25 = io_index == io_mshr_bits_index; // @[MissComparator.scala 36:16]
  wire  _T_26 = _T_24 & _T_25; // @[MissComparator.scala 35:38]
  assign io_bankHitWay_valid = _T_14 | _T_11; // @[MissComparator.scala 26:23]
  assign io_bankHitWay_bits = bankHitVec_0 ? 2'h0 : _T_21; // @[MissComparator.scala 27:22]
  assign io_hitInRefillBuffer = _T_26 & io_refillBufferValid; // @[MissComparator.scala 33:24]
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
  reg [1:0] readState; // @[AXIReadPort.scala 30:65]
  wire  _T = readState == 2'h1; // @[AXIReadPort.scala 51:32]
  wire  _T_1 = readState == 2'h0; // @[AXIReadPort.scala 51:64]
  wire  _T_2 = _T_1 & io_addrReq_valid; // @[AXIReadPort.scala 51:77]
  wire  _T_4 = readState == 2'h2; // @[AXIReadPort.scala 52:32]
  wire  _T_6 = io_axi_r_ready & io_axi_r_valid; // @[Decoupled.scala 40:37]
  wire  _T_7 = _T_4 & _T_6; // @[AXIReadPort.scala 54:55]
  wire  _T_12 = 2'h0 == readState; // @[Conditional.scala 37:30]
  wire  _T_13 = io_axi_ar_ready & io_axi_ar_valid; // @[Decoupled.scala 40:37]
  wire  _T_15 = 2'h1 == readState; // @[Conditional.scala 37:30]
  wire  _T_17 = 2'h2 == readState; // @[Conditional.scala 37:30]
  wire  _T_19 = _T_6 & io_axi_r_bits_last; // @[AXIReadPort.scala 71:26]
  assign io_axi_ar_valid = _T | _T_2; // @[AXIReadPort.scala 51:19]
  assign io_axi_ar_bits_addr = io_addrReq_bits; // @[AXIReadPort.scala 37:23]
  assign io_axi_r_ready = readState == 2'h2; // @[AXIReadPort.scala 52:19]
  assign io_transferData_valid = _T_4 & _T_6; // @[AXIReadPort.scala 54:25]
  assign io_transferData_bits = io_axi_r_bits_data; // @[AXIReadPort.scala 55:25]
  assign io_finishTransfer = _T_7 & io_axi_r_bits_last; // @[AXIReadPort.scala 57:21]
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
    end else if (_T_12) begin
      if (io_addrReq_valid) begin
        if (_T_13) begin
          readState <= 2'h2;
        end else begin
          readState <= 2'h1;
        end
      end
    end else if (_T_15) begin
      if (_T_13) begin
        readState <= 2'h2;
      end
    end else if (_T_17) begin
      if (_T_19) begin
        readState <= 2'h0;
      end
    end
  end
endmodule
module ReFillBuffer(
  input         clock,
  input         reset,
  input         io_addr_valid,
  input  [3:0]  io_addr_bits,
  input         io_inputData_valid,
  input  [31:0] io_inputData_bits,
  input         io_finish,
  output        io_queryResult_valid,
  output [31:0] io_queryResult_bits,
  output [31:0] io_allData_0,
  output [31:0] io_allData_1,
  output [31:0] io_allData_2,
  output [31:0] io_allData_3,
  output [31:0] io_allData_4,
  output [31:0] io_allData_5,
  output [31:0] io_allData_6,
  output [31:0] io_allData_7,
  output [31:0] io_allData_8,
  output [31:0] io_allData_9,
  output [31:0] io_allData_10,
  output [31:0] io_allData_11,
  output [31:0] io_allData_12,
  output [31:0] io_allData_13,
  output [31:0] io_allData_14,
  output [31:0] io_allData_15
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
`endif // RANDOMIZE_REG_INIT
  reg [1:0] state; // @[ReFillBuffer.scala 25:22]
  reg [31:0] buffer_0; // @[ReFillBuffer.scala 27:19]
  reg [31:0] buffer_1; // @[ReFillBuffer.scala 27:19]
  reg [31:0] buffer_2; // @[ReFillBuffer.scala 27:19]
  reg [31:0] buffer_3; // @[ReFillBuffer.scala 27:19]
  reg [31:0] buffer_4; // @[ReFillBuffer.scala 27:19]
  reg [31:0] buffer_5; // @[ReFillBuffer.scala 27:19]
  reg [31:0] buffer_6; // @[ReFillBuffer.scala 27:19]
  reg [31:0] buffer_7; // @[ReFillBuffer.scala 27:19]
  reg [31:0] buffer_8; // @[ReFillBuffer.scala 27:19]
  reg [31:0] buffer_9; // @[ReFillBuffer.scala 27:19]
  reg [31:0] buffer_10; // @[ReFillBuffer.scala 27:19]
  reg [31:0] buffer_11; // @[ReFillBuffer.scala 27:19]
  reg [31:0] buffer_12; // @[ReFillBuffer.scala 27:19]
  reg [31:0] buffer_13; // @[ReFillBuffer.scala 27:19]
  reg [31:0] buffer_14; // @[ReFillBuffer.scala 27:19]
  reg [31:0] buffer_15; // @[ReFillBuffer.scala 27:19]
  reg  bufferValidMask_0; // @[ReFillBuffer.scala 30:32]
  reg  bufferValidMask_1; // @[ReFillBuffer.scala 30:32]
  reg  bufferValidMask_2; // @[ReFillBuffer.scala 30:32]
  reg  bufferValidMask_3; // @[ReFillBuffer.scala 30:32]
  reg  bufferValidMask_4; // @[ReFillBuffer.scala 30:32]
  reg  bufferValidMask_5; // @[ReFillBuffer.scala 30:32]
  reg  bufferValidMask_6; // @[ReFillBuffer.scala 30:32]
  reg  bufferValidMask_7; // @[ReFillBuffer.scala 30:32]
  reg  bufferValidMask_8; // @[ReFillBuffer.scala 30:32]
  reg  bufferValidMask_9; // @[ReFillBuffer.scala 30:32]
  reg  bufferValidMask_10; // @[ReFillBuffer.scala 30:32]
  reg  bufferValidMask_11; // @[ReFillBuffer.scala 30:32]
  reg  bufferValidMask_12; // @[ReFillBuffer.scala 30:32]
  reg  bufferValidMask_13; // @[ReFillBuffer.scala 30:32]
  reg  bufferValidMask_14; // @[ReFillBuffer.scala 30:32]
  reg  bufferValidMask_15; // @[ReFillBuffer.scala 30:32]
  reg [3:0] writePtr; // @[ReFillBuffer.scala 32:21]
  wire  _T_1 = state != 2'h0; // @[ReFillBuffer.scala 34:66]
  wire  _GEN_1 = 4'h1 == io_addr_bits ? bufferValidMask_1 : bufferValidMask_0; // @[ReFillBuffer.scala 34:57]
  wire  _GEN_2 = 4'h2 == io_addr_bits ? bufferValidMask_2 : _GEN_1; // @[ReFillBuffer.scala 34:57]
  wire  _GEN_3 = 4'h3 == io_addr_bits ? bufferValidMask_3 : _GEN_2; // @[ReFillBuffer.scala 34:57]
  wire  _GEN_4 = 4'h4 == io_addr_bits ? bufferValidMask_4 : _GEN_3; // @[ReFillBuffer.scala 34:57]
  wire  _GEN_5 = 4'h5 == io_addr_bits ? bufferValidMask_5 : _GEN_4; // @[ReFillBuffer.scala 34:57]
  wire  _GEN_6 = 4'h6 == io_addr_bits ? bufferValidMask_6 : _GEN_5; // @[ReFillBuffer.scala 34:57]
  wire  _GEN_7 = 4'h7 == io_addr_bits ? bufferValidMask_7 : _GEN_6; // @[ReFillBuffer.scala 34:57]
  wire  _GEN_8 = 4'h8 == io_addr_bits ? bufferValidMask_8 : _GEN_7; // @[ReFillBuffer.scala 34:57]
  wire  _GEN_9 = 4'h9 == io_addr_bits ? bufferValidMask_9 : _GEN_8; // @[ReFillBuffer.scala 34:57]
  wire  _GEN_10 = 4'ha == io_addr_bits ? bufferValidMask_10 : _GEN_9; // @[ReFillBuffer.scala 34:57]
  wire  _GEN_11 = 4'hb == io_addr_bits ? bufferValidMask_11 : _GEN_10; // @[ReFillBuffer.scala 34:57]
  wire  _GEN_12 = 4'hc == io_addr_bits ? bufferValidMask_12 : _GEN_11; // @[ReFillBuffer.scala 34:57]
  wire  _GEN_13 = 4'hd == io_addr_bits ? bufferValidMask_13 : _GEN_12; // @[ReFillBuffer.scala 34:57]
  wire  _GEN_14 = 4'he == io_addr_bits ? bufferValidMask_14 : _GEN_13; // @[ReFillBuffer.scala 34:57]
  wire  _GEN_15 = 4'hf == io_addr_bits ? bufferValidMask_15 : _GEN_14; // @[ReFillBuffer.scala 34:57]
  wire [31:0] _GEN_17 = 4'h1 == io_addr_bits ? buffer_1 : buffer_0; // @[ReFillBuffer.scala 35:23]
  wire [31:0] _GEN_18 = 4'h2 == io_addr_bits ? buffer_2 : _GEN_17; // @[ReFillBuffer.scala 35:23]
  wire [31:0] _GEN_19 = 4'h3 == io_addr_bits ? buffer_3 : _GEN_18; // @[ReFillBuffer.scala 35:23]
  wire [31:0] _GEN_20 = 4'h4 == io_addr_bits ? buffer_4 : _GEN_19; // @[ReFillBuffer.scala 35:23]
  wire [31:0] _GEN_21 = 4'h5 == io_addr_bits ? buffer_5 : _GEN_20; // @[ReFillBuffer.scala 35:23]
  wire [31:0] _GEN_22 = 4'h6 == io_addr_bits ? buffer_6 : _GEN_21; // @[ReFillBuffer.scala 35:23]
  wire [31:0] _GEN_23 = 4'h7 == io_addr_bits ? buffer_7 : _GEN_22; // @[ReFillBuffer.scala 35:23]
  wire [31:0] _GEN_24 = 4'h8 == io_addr_bits ? buffer_8 : _GEN_23; // @[ReFillBuffer.scala 35:23]
  wire [31:0] _GEN_25 = 4'h9 == io_addr_bits ? buffer_9 : _GEN_24; // @[ReFillBuffer.scala 35:23]
  wire [31:0] _GEN_26 = 4'ha == io_addr_bits ? buffer_10 : _GEN_25; // @[ReFillBuffer.scala 35:23]
  wire [31:0] _GEN_27 = 4'hb == io_addr_bits ? buffer_11 : _GEN_26; // @[ReFillBuffer.scala 35:23]
  wire [31:0] _GEN_28 = 4'hc == io_addr_bits ? buffer_12 : _GEN_27; // @[ReFillBuffer.scala 35:23]
  wire [31:0] _GEN_29 = 4'hd == io_addr_bits ? buffer_13 : _GEN_28; // @[ReFillBuffer.scala 35:23]
  wire [31:0] _GEN_30 = 4'he == io_addr_bits ? buffer_14 : _GEN_29; // @[ReFillBuffer.scala 35:23]
  wire  _T_3 = 2'h0 == state; // @[Conditional.scala 37:30]
  wire  _T_5 = 2'h1 == state; // @[Conditional.scala 37:30]
  wire [3:0] _T_7 = writePtr + 4'h1; // @[ReFillBuffer.scala 49:30]
  wire  _GEN_201 = 4'h0 == writePtr; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_50 = _GEN_201 | bufferValidMask_0; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_202 = 4'h1 == writePtr; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_51 = _GEN_202 | bufferValidMask_1; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_203 = 4'h2 == writePtr; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_52 = _GEN_203 | bufferValidMask_2; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_204 = 4'h3 == writePtr; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_53 = _GEN_204 | bufferValidMask_3; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_205 = 4'h4 == writePtr; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_54 = _GEN_205 | bufferValidMask_4; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_206 = 4'h5 == writePtr; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_55 = _GEN_206 | bufferValidMask_5; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_207 = 4'h6 == writePtr; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_56 = _GEN_207 | bufferValidMask_6; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_208 = 4'h7 == writePtr; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_57 = _GEN_208 | bufferValidMask_7; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_209 = 4'h8 == writePtr; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_58 = _GEN_209 | bufferValidMask_8; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_210 = 4'h9 == writePtr; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_59 = _GEN_210 | bufferValidMask_9; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_211 = 4'ha == writePtr; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_60 = _GEN_211 | bufferValidMask_10; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_212 = 4'hb == writePtr; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_61 = _GEN_212 | bufferValidMask_11; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_213 = 4'hc == writePtr; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_62 = _GEN_213 | bufferValidMask_12; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_214 = 4'hd == writePtr; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_63 = _GEN_214 | bufferValidMask_13; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_215 = 4'he == writePtr; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_64 = _GEN_215 | bufferValidMask_14; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_216 = 4'hf == writePtr; // @[ReFillBuffer.scala 50:35]
  wire  _GEN_65 = _GEN_216 | bufferValidMask_15; // @[ReFillBuffer.scala 50:35]
  wire  _T_8 = 2'h2 == state; // @[Conditional.scala 37:30]
  wire [7:0] _T_15 = {bufferValidMask_7,bufferValidMask_6,bufferValidMask_5,bufferValidMask_4,bufferValidMask_3,bufferValidMask_2,bufferValidMask_1,bufferValidMask_0}; // @[ReFillBuffer.scala 58:30]
  wire [15:0] _T_23 = {bufferValidMask_15,bufferValidMask_14,bufferValidMask_13,bufferValidMask_12,bufferValidMask_11,bufferValidMask_10,bufferValidMask_9,bufferValidMask_8,_T_15}; // @[ReFillBuffer.scala 58:30]
  wire  _T_24 = &_T_23; // @[ReFillBuffer.scala 58:37]
  wire  _T_26 = _T_24 | reset; // @[ReFillBuffer.scala 58:13]
  wire  _T_27 = ~_T_26; // @[ReFillBuffer.scala 58:13]
  wire  _T_29 = state == 2'h0; // @[ReFillBuffer.scala 63:34]
  wire  _T_30 = io_addr_valid & _T_29; // @[ReFillBuffer.scala 63:25]
  wire  _T_32 = ~io_addr_valid; // @[ReFillBuffer.scala 63:68]
  wire  _T_33 = _T_1 & _T_32; // @[ReFillBuffer.scala 63:65]
  wire  _T_34 = _T_30 | _T_33; // @[ReFillBuffer.scala 63:45]
  wire  _T_36 = _T_34 | reset; // @[ReFillBuffer.scala 63:9]
  wire  _T_37 = ~_T_36; // @[ReFillBuffer.scala 63:9]
  wire  _T_38 = state == 2'h1; // @[ReFillBuffer.scala 64:39]
  wire  _T_39 = io_inputData_valid & _T_38; // @[ReFillBuffer.scala 64:30]
  wire  _T_40 = state != 2'h1; // @[ReFillBuffer.scala 64:64]
  wire  _T_41 = ~io_inputData_valid; // @[ReFillBuffer.scala 64:81]
  wire  _T_42 = _T_40 & _T_41; // @[ReFillBuffer.scala 64:78]
  wire  _T_43 = _T_39 | _T_42; // @[ReFillBuffer.scala 64:54]
  wire  _T_45 = _T_43 | reset; // @[ReFillBuffer.scala 64:9]
  wire  _T_46 = ~_T_45; // @[ReFillBuffer.scala 64:9]
  wire  _GEN_217 = ~_T_3; // @[ReFillBuffer.scala 58:13]
  wire  _GEN_218 = ~_T_5; // @[ReFillBuffer.scala 58:13]
  wire  _GEN_219 = _GEN_217 & _GEN_218; // @[ReFillBuffer.scala 58:13]
  wire  _GEN_220 = _GEN_219 & _T_8; // @[ReFillBuffer.scala 58:13]
  assign io_queryResult_valid = _GEN_15 & _T_1; // @[ReFillBuffer.scala 34:24]
  assign io_queryResult_bits = 4'hf == io_addr_bits ? buffer_15 : _GEN_30; // @[ReFillBuffer.scala 35:23]
  assign io_allData_0 = buffer_0; // @[ReFillBuffer.scala 37:14]
  assign io_allData_1 = buffer_1; // @[ReFillBuffer.scala 37:14]
  assign io_allData_2 = buffer_2; // @[ReFillBuffer.scala 37:14]
  assign io_allData_3 = buffer_3; // @[ReFillBuffer.scala 37:14]
  assign io_allData_4 = buffer_4; // @[ReFillBuffer.scala 37:14]
  assign io_allData_5 = buffer_5; // @[ReFillBuffer.scala 37:14]
  assign io_allData_6 = buffer_6; // @[ReFillBuffer.scala 37:14]
  assign io_allData_7 = buffer_7; // @[ReFillBuffer.scala 37:14]
  assign io_allData_8 = buffer_8; // @[ReFillBuffer.scala 37:14]
  assign io_allData_9 = buffer_9; // @[ReFillBuffer.scala 37:14]
  assign io_allData_10 = buffer_10; // @[ReFillBuffer.scala 37:14]
  assign io_allData_11 = buffer_11; // @[ReFillBuffer.scala 37:14]
  assign io_allData_12 = buffer_12; // @[ReFillBuffer.scala 37:14]
  assign io_allData_13 = buffer_13; // @[ReFillBuffer.scala 37:14]
  assign io_allData_14 = buffer_14; // @[ReFillBuffer.scala 37:14]
  assign io_allData_15 = buffer_15; // @[ReFillBuffer.scala 37:14]
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
  state = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  buffer_0 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  buffer_1 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  buffer_2 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  buffer_3 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  buffer_4 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  buffer_5 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  buffer_6 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  buffer_7 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  buffer_8 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  buffer_9 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  buffer_10 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  buffer_11 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  buffer_12 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  buffer_13 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  buffer_14 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  buffer_15 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  bufferValidMask_0 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  bufferValidMask_1 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  bufferValidMask_2 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  bufferValidMask_3 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  bufferValidMask_4 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  bufferValidMask_5 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  bufferValidMask_6 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  bufferValidMask_7 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  bufferValidMask_8 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  bufferValidMask_9 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  bufferValidMask_10 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  bufferValidMask_11 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  bufferValidMask_12 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  bufferValidMask_13 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  bufferValidMask_14 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  bufferValidMask_15 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  writePtr = _RAND_33[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      state <= 2'h0;
    end else if (_T_3) begin
      if (io_addr_valid) begin
        state <= 2'h1;
      end
    end else if (_T_5) begin
      if (io_finish) begin
        state <= 2'h2;
      end
    end else if (_T_8) begin
      state <= 2'h0;
    end
    if (_T_3) begin
      if (io_addr_valid) begin
        buffer_0 <= 32'h0;
      end
    end else if (_T_5) begin
      if (io_inputData_valid) begin
        if (4'h0 == writePtr) begin
          buffer_0 <= io_inputData_bits;
        end
      end
    end
    if (_T_3) begin
      if (io_addr_valid) begin
        buffer_1 <= 32'h0;
      end
    end else if (_T_5) begin
      if (io_inputData_valid) begin
        if (4'h1 == writePtr) begin
          buffer_1 <= io_inputData_bits;
        end
      end
    end
    if (_T_3) begin
      if (io_addr_valid) begin
        buffer_2 <= 32'h0;
      end
    end else if (_T_5) begin
      if (io_inputData_valid) begin
        if (4'h2 == writePtr) begin
          buffer_2 <= io_inputData_bits;
        end
      end
    end
    if (_T_3) begin
      if (io_addr_valid) begin
        buffer_3 <= 32'h0;
      end
    end else if (_T_5) begin
      if (io_inputData_valid) begin
        if (4'h3 == writePtr) begin
          buffer_3 <= io_inputData_bits;
        end
      end
    end
    if (_T_3) begin
      if (io_addr_valid) begin
        buffer_4 <= 32'h0;
      end
    end else if (_T_5) begin
      if (io_inputData_valid) begin
        if (4'h4 == writePtr) begin
          buffer_4 <= io_inputData_bits;
        end
      end
    end
    if (_T_3) begin
      if (io_addr_valid) begin
        buffer_5 <= 32'h0;
      end
    end else if (_T_5) begin
      if (io_inputData_valid) begin
        if (4'h5 == writePtr) begin
          buffer_5 <= io_inputData_bits;
        end
      end
    end
    if (_T_3) begin
      if (io_addr_valid) begin
        buffer_6 <= 32'h0;
      end
    end else if (_T_5) begin
      if (io_inputData_valid) begin
        if (4'h6 == writePtr) begin
          buffer_6 <= io_inputData_bits;
        end
      end
    end
    if (_T_3) begin
      if (io_addr_valid) begin
        buffer_7 <= 32'h0;
      end
    end else if (_T_5) begin
      if (io_inputData_valid) begin
        if (4'h7 == writePtr) begin
          buffer_7 <= io_inputData_bits;
        end
      end
    end
    if (_T_3) begin
      if (io_addr_valid) begin
        buffer_8 <= 32'h0;
      end
    end else if (_T_5) begin
      if (io_inputData_valid) begin
        if (4'h8 == writePtr) begin
          buffer_8 <= io_inputData_bits;
        end
      end
    end
    if (_T_3) begin
      if (io_addr_valid) begin
        buffer_9 <= 32'h0;
      end
    end else if (_T_5) begin
      if (io_inputData_valid) begin
        if (4'h9 == writePtr) begin
          buffer_9 <= io_inputData_bits;
        end
      end
    end
    if (_T_3) begin
      if (io_addr_valid) begin
        buffer_10 <= 32'h0;
      end
    end else if (_T_5) begin
      if (io_inputData_valid) begin
        if (4'ha == writePtr) begin
          buffer_10 <= io_inputData_bits;
        end
      end
    end
    if (_T_3) begin
      if (io_addr_valid) begin
        buffer_11 <= 32'h0;
      end
    end else if (_T_5) begin
      if (io_inputData_valid) begin
        if (4'hb == writePtr) begin
          buffer_11 <= io_inputData_bits;
        end
      end
    end
    if (_T_3) begin
      if (io_addr_valid) begin
        buffer_12 <= 32'h0;
      end
    end else if (_T_5) begin
      if (io_inputData_valid) begin
        if (4'hc == writePtr) begin
          buffer_12 <= io_inputData_bits;
        end
      end
    end
    if (_T_3) begin
      if (io_addr_valid) begin
        buffer_13 <= 32'h0;
      end
    end else if (_T_5) begin
      if (io_inputData_valid) begin
        if (4'hd == writePtr) begin
          buffer_13 <= io_inputData_bits;
        end
      end
    end
    if (_T_3) begin
      if (io_addr_valid) begin
        buffer_14 <= 32'h0;
      end
    end else if (_T_5) begin
      if (io_inputData_valid) begin
        if (4'he == writePtr) begin
          buffer_14 <= io_inputData_bits;
        end
      end
    end
    if (_T_3) begin
      if (io_addr_valid) begin
        buffer_15 <= 32'h0;
      end
    end else if (_T_5) begin
      if (io_inputData_valid) begin
        if (4'hf == writePtr) begin
          buffer_15 <= io_inputData_bits;
        end
      end
    end
    if (reset) begin
      bufferValidMask_0 <= 1'h0;
    end else if (!(_T_3)) begin
      if (_T_5) begin
        if (io_inputData_valid) begin
          bufferValidMask_0 <= _GEN_50;
        end
      end else if (_T_8) begin
        bufferValidMask_0 <= 1'h0;
      end
    end
    if (reset) begin
      bufferValidMask_1 <= 1'h0;
    end else if (!(_T_3)) begin
      if (_T_5) begin
        if (io_inputData_valid) begin
          bufferValidMask_1 <= _GEN_51;
        end
      end else if (_T_8) begin
        bufferValidMask_1 <= 1'h0;
      end
    end
    if (reset) begin
      bufferValidMask_2 <= 1'h0;
    end else if (!(_T_3)) begin
      if (_T_5) begin
        if (io_inputData_valid) begin
          bufferValidMask_2 <= _GEN_52;
        end
      end else if (_T_8) begin
        bufferValidMask_2 <= 1'h0;
      end
    end
    if (reset) begin
      bufferValidMask_3 <= 1'h0;
    end else if (!(_T_3)) begin
      if (_T_5) begin
        if (io_inputData_valid) begin
          bufferValidMask_3 <= _GEN_53;
        end
      end else if (_T_8) begin
        bufferValidMask_3 <= 1'h0;
      end
    end
    if (reset) begin
      bufferValidMask_4 <= 1'h0;
    end else if (!(_T_3)) begin
      if (_T_5) begin
        if (io_inputData_valid) begin
          bufferValidMask_4 <= _GEN_54;
        end
      end else if (_T_8) begin
        bufferValidMask_4 <= 1'h0;
      end
    end
    if (reset) begin
      bufferValidMask_5 <= 1'h0;
    end else if (!(_T_3)) begin
      if (_T_5) begin
        if (io_inputData_valid) begin
          bufferValidMask_5 <= _GEN_55;
        end
      end else if (_T_8) begin
        bufferValidMask_5 <= 1'h0;
      end
    end
    if (reset) begin
      bufferValidMask_6 <= 1'h0;
    end else if (!(_T_3)) begin
      if (_T_5) begin
        if (io_inputData_valid) begin
          bufferValidMask_6 <= _GEN_56;
        end
      end else if (_T_8) begin
        bufferValidMask_6 <= 1'h0;
      end
    end
    if (reset) begin
      bufferValidMask_7 <= 1'h0;
    end else if (!(_T_3)) begin
      if (_T_5) begin
        if (io_inputData_valid) begin
          bufferValidMask_7 <= _GEN_57;
        end
      end else if (_T_8) begin
        bufferValidMask_7 <= 1'h0;
      end
    end
    if (reset) begin
      bufferValidMask_8 <= 1'h0;
    end else if (!(_T_3)) begin
      if (_T_5) begin
        if (io_inputData_valid) begin
          bufferValidMask_8 <= _GEN_58;
        end
      end else if (_T_8) begin
        bufferValidMask_8 <= 1'h0;
      end
    end
    if (reset) begin
      bufferValidMask_9 <= 1'h0;
    end else if (!(_T_3)) begin
      if (_T_5) begin
        if (io_inputData_valid) begin
          bufferValidMask_9 <= _GEN_59;
        end
      end else if (_T_8) begin
        bufferValidMask_9 <= 1'h0;
      end
    end
    if (reset) begin
      bufferValidMask_10 <= 1'h0;
    end else if (!(_T_3)) begin
      if (_T_5) begin
        if (io_inputData_valid) begin
          bufferValidMask_10 <= _GEN_60;
        end
      end else if (_T_8) begin
        bufferValidMask_10 <= 1'h0;
      end
    end
    if (reset) begin
      bufferValidMask_11 <= 1'h0;
    end else if (!(_T_3)) begin
      if (_T_5) begin
        if (io_inputData_valid) begin
          bufferValidMask_11 <= _GEN_61;
        end
      end else if (_T_8) begin
        bufferValidMask_11 <= 1'h0;
      end
    end
    if (reset) begin
      bufferValidMask_12 <= 1'h0;
    end else if (!(_T_3)) begin
      if (_T_5) begin
        if (io_inputData_valid) begin
          bufferValidMask_12 <= _GEN_62;
        end
      end else if (_T_8) begin
        bufferValidMask_12 <= 1'h0;
      end
    end
    if (reset) begin
      bufferValidMask_13 <= 1'h0;
    end else if (!(_T_3)) begin
      if (_T_5) begin
        if (io_inputData_valid) begin
          bufferValidMask_13 <= _GEN_63;
        end
      end else if (_T_8) begin
        bufferValidMask_13 <= 1'h0;
      end
    end
    if (reset) begin
      bufferValidMask_14 <= 1'h0;
    end else if (!(_T_3)) begin
      if (_T_5) begin
        if (io_inputData_valid) begin
          bufferValidMask_14 <= _GEN_64;
        end
      end else if (_T_8) begin
        bufferValidMask_14 <= 1'h0;
      end
    end
    if (reset) begin
      bufferValidMask_15 <= 1'h0;
    end else if (!(_T_3)) begin
      if (_T_5) begin
        if (io_inputData_valid) begin
          bufferValidMask_15 <= _GEN_65;
        end
      end else if (_T_8) begin
        bufferValidMask_15 <= 1'h0;
      end
    end
    if (_T_3) begin
      if (io_addr_valid) begin
        writePtr <= io_addr_bits;
      end
    end else if (_T_5) begin
      if (io_inputData_valid) begin
        writePtr <= _T_7;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_220 & _T_27) begin
          $fwrite(32'h80000002,"Assertion failed: valid mask should all be true\n    at ReFillBuffer.scala:58 assert(bufferValidMask.asUInt.andR, \"valid mask should all be true\")\n"); // @[ReFillBuffer.scala 58:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_220 & _T_27) begin
          $fatal; // @[ReFillBuffer.scala 58:13]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_37) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ReFillBuffer.scala:63 assert((io.addr.valid && state === sIdle) || (state =/= sIdle && !io.addr.valid))\n"); // @[ReFillBuffer.scala 63:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_37) begin
          $fatal; // @[ReFillBuffer.scala 63:9]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_46) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ReFillBuffer.scala:64 assert((io.inputData.valid && state === sTransfer) || (state =/= sTransfer && !io.inputData.valid))\n"); // @[ReFillBuffer.scala 64:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_46) begin
          $fatal; // @[ReFillBuffer.scala 64:9]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module CachePipelineStage(
  input         clock,
  input         reset,
  input         io_stall,
  input  [19:0] io_in_tagValid_0_tag,
  input         io_in_tagValid_0_valid,
  input  [19:0] io_in_tagValid_1_tag,
  input         io_in_tagValid_1_valid,
  input  [19:0] io_in_tagValid_2_tag,
  input         io_in_tagValid_2_valid,
  input  [19:0] io_in_tagValid_3_tag,
  input         io_in_tagValid_3_valid,
  input  [19:0] io_in_phyTag,
  input  [5:0]  io_in_index,
  input  [3:0]  io_in_bankIndex,
  input         io_in_valid,
  output [19:0] io_out_tagValid_0_tag,
  output        io_out_tagValid_0_valid,
  output [19:0] io_out_tagValid_1_tag,
  output        io_out_tagValid_1_valid,
  output [19:0] io_out_tagValid_2_tag,
  output        io_out_tagValid_2_valid,
  output [19:0] io_out_tagValid_3_tag,
  output        io_out_tagValid_3_valid,
  output [19:0] io_out_phyTag,
  output [5:0]  io_out_index,
  output [3:0]  io_out_bankIndex,
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
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
`endif // RANDOMIZE_REG_INIT
  reg [19:0] pipelineReg_tagValid_0_tag; // @[CachePipelineStage.scala 24:28]
  reg  pipelineReg_tagValid_0_valid; // @[CachePipelineStage.scala 24:28]
  reg [19:0] pipelineReg_tagValid_1_tag; // @[CachePipelineStage.scala 24:28]
  reg  pipelineReg_tagValid_1_valid; // @[CachePipelineStage.scala 24:28]
  reg [19:0] pipelineReg_tagValid_2_tag; // @[CachePipelineStage.scala 24:28]
  reg  pipelineReg_tagValid_2_valid; // @[CachePipelineStage.scala 24:28]
  reg [19:0] pipelineReg_tagValid_3_tag; // @[CachePipelineStage.scala 24:28]
  reg  pipelineReg_tagValid_3_valid; // @[CachePipelineStage.scala 24:28]
  reg [19:0] pipelineReg_phyTag; // @[CachePipelineStage.scala 24:28]
  reg [5:0] pipelineReg_index; // @[CachePipelineStage.scala 24:28]
  reg [3:0] pipelineReg_bankIndex; // @[CachePipelineStage.scala 24:28]
  reg  pipelineReg_valid; // @[CachePipelineStage.scala 24:28]
  wire  _T_1 = ~io_stall; // @[CachePipelineStage.scala 26:8]
  assign io_out_tagValid_0_tag = pipelineReg_tagValid_0_tag; // @[CachePipelineStage.scala 30:10]
  assign io_out_tagValid_0_valid = pipelineReg_tagValid_0_valid; // @[CachePipelineStage.scala 30:10]
  assign io_out_tagValid_1_tag = pipelineReg_tagValid_1_tag; // @[CachePipelineStage.scala 30:10]
  assign io_out_tagValid_1_valid = pipelineReg_tagValid_1_valid; // @[CachePipelineStage.scala 30:10]
  assign io_out_tagValid_2_tag = pipelineReg_tagValid_2_tag; // @[CachePipelineStage.scala 30:10]
  assign io_out_tagValid_2_valid = pipelineReg_tagValid_2_valid; // @[CachePipelineStage.scala 30:10]
  assign io_out_tagValid_3_tag = pipelineReg_tagValid_3_tag; // @[CachePipelineStage.scala 30:10]
  assign io_out_tagValid_3_valid = pipelineReg_tagValid_3_valid; // @[CachePipelineStage.scala 30:10]
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
  pipelineReg_tagValid_0_tag = _RAND_0[19:0];
  _RAND_1 = {1{`RANDOM}};
  pipelineReg_tagValid_0_valid = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  pipelineReg_tagValid_1_tag = _RAND_2[19:0];
  _RAND_3 = {1{`RANDOM}};
  pipelineReg_tagValid_1_valid = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  pipelineReg_tagValid_2_tag = _RAND_4[19:0];
  _RAND_5 = {1{`RANDOM}};
  pipelineReg_tagValid_2_valid = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  pipelineReg_tagValid_3_tag = _RAND_6[19:0];
  _RAND_7 = {1{`RANDOM}};
  pipelineReg_tagValid_3_valid = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  pipelineReg_phyTag = _RAND_8[19:0];
  _RAND_9 = {1{`RANDOM}};
  pipelineReg_index = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  pipelineReg_bankIndex = _RAND_10[3:0];
  _RAND_11 = {1{`RANDOM}};
  pipelineReg_valid = _RAND_11[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      pipelineReg_tagValid_0_tag <= 20'h0;
    end else if (_T_1) begin
      pipelineReg_tagValid_0_tag <= io_in_tagValid_0_tag;
    end
    if (reset) begin
      pipelineReg_tagValid_0_valid <= 1'h0;
    end else if (_T_1) begin
      pipelineReg_tagValid_0_valid <= io_in_tagValid_0_valid;
    end
    if (reset) begin
      pipelineReg_tagValid_1_tag <= 20'h0;
    end else if (_T_1) begin
      pipelineReg_tagValid_1_tag <= io_in_tagValid_1_tag;
    end
    if (reset) begin
      pipelineReg_tagValid_1_valid <= 1'h0;
    end else if (_T_1) begin
      pipelineReg_tagValid_1_valid <= io_in_tagValid_1_valid;
    end
    if (reset) begin
      pipelineReg_tagValid_2_tag <= 20'h0;
    end else if (_T_1) begin
      pipelineReg_tagValid_2_tag <= io_in_tagValid_2_tag;
    end
    if (reset) begin
      pipelineReg_tagValid_2_valid <= 1'h0;
    end else if (_T_1) begin
      pipelineReg_tagValid_2_valid <= io_in_tagValid_2_valid;
    end
    if (reset) begin
      pipelineReg_tagValid_3_tag <= 20'h0;
    end else if (_T_1) begin
      pipelineReg_tagValid_3_tag <= io_in_tagValid_3_tag;
    end
    if (reset) begin
      pipelineReg_tagValid_3_valid <= 1'h0;
    end else if (_T_1) begin
      pipelineReg_tagValid_3_valid <= io_in_tagValid_3_valid;
    end
    if (reset) begin
      pipelineReg_phyTag <= 20'h0;
    end else if (_T_1) begin
      pipelineReg_phyTag <= io_in_phyTag;
    end
    if (reset) begin
      pipelineReg_index <= 6'h0;
    end else if (_T_1) begin
      pipelineReg_index <= io_in_index;
    end
    if (reset) begin
      pipelineReg_bankIndex <= 4'h0;
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
module SinglePortBRam(
  input         clock,
  input  [5:0]  io_addr,
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
  reg [31:0] _T [0:63]; // @[SinglePortBRam.scala 59:29]
  wire [31:0] _T__T_3_data; // @[SinglePortBRam.scala 59:29]
  wire [5:0] _T__T_3_addr; // @[SinglePortBRam.scala 59:29]
  wire [31:0] _T__T_2_data; // @[SinglePortBRam.scala 59:29]
  wire [5:0] _T__T_2_addr; // @[SinglePortBRam.scala 59:29]
  wire  _T__T_2_mask; // @[SinglePortBRam.scala 59:29]
  wire  _T__T_2_en; // @[SinglePortBRam.scala 59:29]
  reg  _T__T_3_en_pipe_0;
  reg [5:0] _T__T_3_addr_pipe_0;
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
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    _T[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T__T_3_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  _T__T_3_addr_pipe_0 = _RAND_2[5:0];
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
  input  [5:0]  io_way_bank_0_0_addr,
  input         io_way_bank_0_0_writeEnable,
  input  [31:0] io_way_bank_0_0_writeData,
  output [31:0] io_way_bank_0_0_readData,
  input  [5:0]  io_way_bank_0_1_addr,
  input         io_way_bank_0_1_writeEnable,
  input  [31:0] io_way_bank_0_1_writeData,
  output [31:0] io_way_bank_0_1_readData,
  input  [5:0]  io_way_bank_0_2_addr,
  input         io_way_bank_0_2_writeEnable,
  input  [31:0] io_way_bank_0_2_writeData,
  output [31:0] io_way_bank_0_2_readData,
  input  [5:0]  io_way_bank_0_3_addr,
  input         io_way_bank_0_3_writeEnable,
  input  [31:0] io_way_bank_0_3_writeData,
  output [31:0] io_way_bank_0_3_readData,
  input  [5:0]  io_way_bank_0_4_addr,
  input         io_way_bank_0_4_writeEnable,
  input  [31:0] io_way_bank_0_4_writeData,
  output [31:0] io_way_bank_0_4_readData,
  input  [5:0]  io_way_bank_0_5_addr,
  input         io_way_bank_0_5_writeEnable,
  input  [31:0] io_way_bank_0_5_writeData,
  output [31:0] io_way_bank_0_5_readData,
  input  [5:0]  io_way_bank_0_6_addr,
  input         io_way_bank_0_6_writeEnable,
  input  [31:0] io_way_bank_0_6_writeData,
  output [31:0] io_way_bank_0_6_readData,
  input  [5:0]  io_way_bank_0_7_addr,
  input         io_way_bank_0_7_writeEnable,
  input  [31:0] io_way_bank_0_7_writeData,
  output [31:0] io_way_bank_0_7_readData,
  input  [5:0]  io_way_bank_0_8_addr,
  input         io_way_bank_0_8_writeEnable,
  input  [31:0] io_way_bank_0_8_writeData,
  output [31:0] io_way_bank_0_8_readData,
  input  [5:0]  io_way_bank_0_9_addr,
  input         io_way_bank_0_9_writeEnable,
  input  [31:0] io_way_bank_0_9_writeData,
  output [31:0] io_way_bank_0_9_readData,
  input  [5:0]  io_way_bank_0_10_addr,
  input         io_way_bank_0_10_writeEnable,
  input  [31:0] io_way_bank_0_10_writeData,
  output [31:0] io_way_bank_0_10_readData,
  input  [5:0]  io_way_bank_0_11_addr,
  input         io_way_bank_0_11_writeEnable,
  input  [31:0] io_way_bank_0_11_writeData,
  output [31:0] io_way_bank_0_11_readData,
  input  [5:0]  io_way_bank_0_12_addr,
  input         io_way_bank_0_12_writeEnable,
  input  [31:0] io_way_bank_0_12_writeData,
  output [31:0] io_way_bank_0_12_readData,
  input  [5:0]  io_way_bank_0_13_addr,
  input         io_way_bank_0_13_writeEnable,
  input  [31:0] io_way_bank_0_13_writeData,
  output [31:0] io_way_bank_0_13_readData,
  input  [5:0]  io_way_bank_0_14_addr,
  input         io_way_bank_0_14_writeEnable,
  input  [31:0] io_way_bank_0_14_writeData,
  output [31:0] io_way_bank_0_14_readData,
  input  [5:0]  io_way_bank_0_15_addr,
  input         io_way_bank_0_15_writeEnable,
  input  [31:0] io_way_bank_0_15_writeData,
  output [31:0] io_way_bank_0_15_readData,
  input  [5:0]  io_way_bank_1_0_addr,
  input         io_way_bank_1_0_writeEnable,
  input  [31:0] io_way_bank_1_0_writeData,
  output [31:0] io_way_bank_1_0_readData,
  input  [5:0]  io_way_bank_1_1_addr,
  input         io_way_bank_1_1_writeEnable,
  input  [31:0] io_way_bank_1_1_writeData,
  output [31:0] io_way_bank_1_1_readData,
  input  [5:0]  io_way_bank_1_2_addr,
  input         io_way_bank_1_2_writeEnable,
  input  [31:0] io_way_bank_1_2_writeData,
  output [31:0] io_way_bank_1_2_readData,
  input  [5:0]  io_way_bank_1_3_addr,
  input         io_way_bank_1_3_writeEnable,
  input  [31:0] io_way_bank_1_3_writeData,
  output [31:0] io_way_bank_1_3_readData,
  input  [5:0]  io_way_bank_1_4_addr,
  input         io_way_bank_1_4_writeEnable,
  input  [31:0] io_way_bank_1_4_writeData,
  output [31:0] io_way_bank_1_4_readData,
  input  [5:0]  io_way_bank_1_5_addr,
  input         io_way_bank_1_5_writeEnable,
  input  [31:0] io_way_bank_1_5_writeData,
  output [31:0] io_way_bank_1_5_readData,
  input  [5:0]  io_way_bank_1_6_addr,
  input         io_way_bank_1_6_writeEnable,
  input  [31:0] io_way_bank_1_6_writeData,
  output [31:0] io_way_bank_1_6_readData,
  input  [5:0]  io_way_bank_1_7_addr,
  input         io_way_bank_1_7_writeEnable,
  input  [31:0] io_way_bank_1_7_writeData,
  output [31:0] io_way_bank_1_7_readData,
  input  [5:0]  io_way_bank_1_8_addr,
  input         io_way_bank_1_8_writeEnable,
  input  [31:0] io_way_bank_1_8_writeData,
  output [31:0] io_way_bank_1_8_readData,
  input  [5:0]  io_way_bank_1_9_addr,
  input         io_way_bank_1_9_writeEnable,
  input  [31:0] io_way_bank_1_9_writeData,
  output [31:0] io_way_bank_1_9_readData,
  input  [5:0]  io_way_bank_1_10_addr,
  input         io_way_bank_1_10_writeEnable,
  input  [31:0] io_way_bank_1_10_writeData,
  output [31:0] io_way_bank_1_10_readData,
  input  [5:0]  io_way_bank_1_11_addr,
  input         io_way_bank_1_11_writeEnable,
  input  [31:0] io_way_bank_1_11_writeData,
  output [31:0] io_way_bank_1_11_readData,
  input  [5:0]  io_way_bank_1_12_addr,
  input         io_way_bank_1_12_writeEnable,
  input  [31:0] io_way_bank_1_12_writeData,
  output [31:0] io_way_bank_1_12_readData,
  input  [5:0]  io_way_bank_1_13_addr,
  input         io_way_bank_1_13_writeEnable,
  input  [31:0] io_way_bank_1_13_writeData,
  output [31:0] io_way_bank_1_13_readData,
  input  [5:0]  io_way_bank_1_14_addr,
  input         io_way_bank_1_14_writeEnable,
  input  [31:0] io_way_bank_1_14_writeData,
  output [31:0] io_way_bank_1_14_readData,
  input  [5:0]  io_way_bank_1_15_addr,
  input         io_way_bank_1_15_writeEnable,
  input  [31:0] io_way_bank_1_15_writeData,
  output [31:0] io_way_bank_1_15_readData,
  input  [5:0]  io_way_bank_2_0_addr,
  input         io_way_bank_2_0_writeEnable,
  input  [31:0] io_way_bank_2_0_writeData,
  output [31:0] io_way_bank_2_0_readData,
  input  [5:0]  io_way_bank_2_1_addr,
  input         io_way_bank_2_1_writeEnable,
  input  [31:0] io_way_bank_2_1_writeData,
  output [31:0] io_way_bank_2_1_readData,
  input  [5:0]  io_way_bank_2_2_addr,
  input         io_way_bank_2_2_writeEnable,
  input  [31:0] io_way_bank_2_2_writeData,
  output [31:0] io_way_bank_2_2_readData,
  input  [5:0]  io_way_bank_2_3_addr,
  input         io_way_bank_2_3_writeEnable,
  input  [31:0] io_way_bank_2_3_writeData,
  output [31:0] io_way_bank_2_3_readData,
  input  [5:0]  io_way_bank_2_4_addr,
  input         io_way_bank_2_4_writeEnable,
  input  [31:0] io_way_bank_2_4_writeData,
  output [31:0] io_way_bank_2_4_readData,
  input  [5:0]  io_way_bank_2_5_addr,
  input         io_way_bank_2_5_writeEnable,
  input  [31:0] io_way_bank_2_5_writeData,
  output [31:0] io_way_bank_2_5_readData,
  input  [5:0]  io_way_bank_2_6_addr,
  input         io_way_bank_2_6_writeEnable,
  input  [31:0] io_way_bank_2_6_writeData,
  output [31:0] io_way_bank_2_6_readData,
  input  [5:0]  io_way_bank_2_7_addr,
  input         io_way_bank_2_7_writeEnable,
  input  [31:0] io_way_bank_2_7_writeData,
  output [31:0] io_way_bank_2_7_readData,
  input  [5:0]  io_way_bank_2_8_addr,
  input         io_way_bank_2_8_writeEnable,
  input  [31:0] io_way_bank_2_8_writeData,
  output [31:0] io_way_bank_2_8_readData,
  input  [5:0]  io_way_bank_2_9_addr,
  input         io_way_bank_2_9_writeEnable,
  input  [31:0] io_way_bank_2_9_writeData,
  output [31:0] io_way_bank_2_9_readData,
  input  [5:0]  io_way_bank_2_10_addr,
  input         io_way_bank_2_10_writeEnable,
  input  [31:0] io_way_bank_2_10_writeData,
  output [31:0] io_way_bank_2_10_readData,
  input  [5:0]  io_way_bank_2_11_addr,
  input         io_way_bank_2_11_writeEnable,
  input  [31:0] io_way_bank_2_11_writeData,
  output [31:0] io_way_bank_2_11_readData,
  input  [5:0]  io_way_bank_2_12_addr,
  input         io_way_bank_2_12_writeEnable,
  input  [31:0] io_way_bank_2_12_writeData,
  output [31:0] io_way_bank_2_12_readData,
  input  [5:0]  io_way_bank_2_13_addr,
  input         io_way_bank_2_13_writeEnable,
  input  [31:0] io_way_bank_2_13_writeData,
  output [31:0] io_way_bank_2_13_readData,
  input  [5:0]  io_way_bank_2_14_addr,
  input         io_way_bank_2_14_writeEnable,
  input  [31:0] io_way_bank_2_14_writeData,
  output [31:0] io_way_bank_2_14_readData,
  input  [5:0]  io_way_bank_2_15_addr,
  input         io_way_bank_2_15_writeEnable,
  input  [31:0] io_way_bank_2_15_writeData,
  output [31:0] io_way_bank_2_15_readData,
  input  [5:0]  io_way_bank_3_0_addr,
  input         io_way_bank_3_0_writeEnable,
  input  [31:0] io_way_bank_3_0_writeData,
  output [31:0] io_way_bank_3_0_readData,
  input  [5:0]  io_way_bank_3_1_addr,
  input         io_way_bank_3_1_writeEnable,
  input  [31:0] io_way_bank_3_1_writeData,
  output [31:0] io_way_bank_3_1_readData,
  input  [5:0]  io_way_bank_3_2_addr,
  input         io_way_bank_3_2_writeEnable,
  input  [31:0] io_way_bank_3_2_writeData,
  output [31:0] io_way_bank_3_2_readData,
  input  [5:0]  io_way_bank_3_3_addr,
  input         io_way_bank_3_3_writeEnable,
  input  [31:0] io_way_bank_3_3_writeData,
  output [31:0] io_way_bank_3_3_readData,
  input  [5:0]  io_way_bank_3_4_addr,
  input         io_way_bank_3_4_writeEnable,
  input  [31:0] io_way_bank_3_4_writeData,
  output [31:0] io_way_bank_3_4_readData,
  input  [5:0]  io_way_bank_3_5_addr,
  input         io_way_bank_3_5_writeEnable,
  input  [31:0] io_way_bank_3_5_writeData,
  output [31:0] io_way_bank_3_5_readData,
  input  [5:0]  io_way_bank_3_6_addr,
  input         io_way_bank_3_6_writeEnable,
  input  [31:0] io_way_bank_3_6_writeData,
  output [31:0] io_way_bank_3_6_readData,
  input  [5:0]  io_way_bank_3_7_addr,
  input         io_way_bank_3_7_writeEnable,
  input  [31:0] io_way_bank_3_7_writeData,
  output [31:0] io_way_bank_3_7_readData,
  input  [5:0]  io_way_bank_3_8_addr,
  input         io_way_bank_3_8_writeEnable,
  input  [31:0] io_way_bank_3_8_writeData,
  output [31:0] io_way_bank_3_8_readData,
  input  [5:0]  io_way_bank_3_9_addr,
  input         io_way_bank_3_9_writeEnable,
  input  [31:0] io_way_bank_3_9_writeData,
  output [31:0] io_way_bank_3_9_readData,
  input  [5:0]  io_way_bank_3_10_addr,
  input         io_way_bank_3_10_writeEnable,
  input  [31:0] io_way_bank_3_10_writeData,
  output [31:0] io_way_bank_3_10_readData,
  input  [5:0]  io_way_bank_3_11_addr,
  input         io_way_bank_3_11_writeEnable,
  input  [31:0] io_way_bank_3_11_writeData,
  output [31:0] io_way_bank_3_11_readData,
  input  [5:0]  io_way_bank_3_12_addr,
  input         io_way_bank_3_12_writeEnable,
  input  [31:0] io_way_bank_3_12_writeData,
  output [31:0] io_way_bank_3_12_readData,
  input  [5:0]  io_way_bank_3_13_addr,
  input         io_way_bank_3_13_writeEnable,
  input  [31:0] io_way_bank_3_13_writeData,
  output [31:0] io_way_bank_3_13_readData,
  input  [5:0]  io_way_bank_3_14_addr,
  input         io_way_bank_3_14_writeEnable,
  input  [31:0] io_way_bank_3_14_writeData,
  output [31:0] io_way_bank_3_14_readData,
  input  [5:0]  io_way_bank_3_15_addr,
  input         io_way_bank_3_15_writeEnable,
  input  [31:0] io_way_bank_3_15_writeData,
  output [31:0] io_way_bank_3_15_readData
);
  wire  instruction_bank_way_0_bankoffset_0_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_0_bankoffset_0_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_0_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_0_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_0_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_1_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_0_bankoffset_1_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_1_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_1_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_1_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_2_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_0_bankoffset_2_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_2_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_2_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_2_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_3_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_0_bankoffset_3_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_3_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_3_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_3_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_4_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_0_bankoffset_4_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_4_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_4_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_4_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_5_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_0_bankoffset_5_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_5_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_5_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_5_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_6_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_0_bankoffset_6_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_6_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_6_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_6_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_7_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_0_bankoffset_7_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_7_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_7_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_7_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_8_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_0_bankoffset_8_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_8_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_8_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_8_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_9_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_0_bankoffset_9_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_9_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_9_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_9_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_10_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_0_bankoffset_10_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_10_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_10_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_10_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_11_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_0_bankoffset_11_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_11_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_11_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_11_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_12_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_0_bankoffset_12_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_12_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_12_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_12_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_13_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_0_bankoffset_13_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_13_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_13_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_13_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_14_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_0_bankoffset_14_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_14_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_14_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_14_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_15_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_0_bankoffset_15_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_0_bankoffset_15_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_15_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_0_bankoffset_15_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_0_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_1_bankoffset_0_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_0_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_0_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_0_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_1_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_1_bankoffset_1_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_1_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_1_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_1_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_2_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_1_bankoffset_2_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_2_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_2_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_2_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_3_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_1_bankoffset_3_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_3_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_3_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_3_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_4_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_1_bankoffset_4_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_4_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_4_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_4_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_5_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_1_bankoffset_5_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_5_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_5_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_5_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_6_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_1_bankoffset_6_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_6_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_6_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_6_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_7_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_1_bankoffset_7_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_7_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_7_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_7_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_8_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_1_bankoffset_8_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_8_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_8_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_8_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_9_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_1_bankoffset_9_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_9_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_9_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_9_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_10_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_1_bankoffset_10_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_10_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_10_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_10_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_11_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_1_bankoffset_11_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_11_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_11_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_11_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_12_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_1_bankoffset_12_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_12_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_12_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_12_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_13_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_1_bankoffset_13_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_13_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_13_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_13_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_14_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_1_bankoffset_14_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_14_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_14_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_14_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_15_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_1_bankoffset_15_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_1_bankoffset_15_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_15_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_1_bankoffset_15_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_0_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_2_bankoffset_0_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_0_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_0_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_0_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_1_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_2_bankoffset_1_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_1_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_1_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_1_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_2_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_2_bankoffset_2_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_2_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_2_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_2_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_3_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_2_bankoffset_3_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_3_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_3_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_3_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_4_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_2_bankoffset_4_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_4_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_4_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_4_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_5_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_2_bankoffset_5_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_5_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_5_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_5_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_6_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_2_bankoffset_6_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_6_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_6_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_6_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_7_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_2_bankoffset_7_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_7_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_7_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_7_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_8_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_2_bankoffset_8_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_8_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_8_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_8_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_9_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_2_bankoffset_9_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_9_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_9_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_9_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_10_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_2_bankoffset_10_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_10_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_10_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_10_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_11_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_2_bankoffset_11_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_11_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_11_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_11_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_12_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_2_bankoffset_12_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_12_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_12_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_12_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_13_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_2_bankoffset_13_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_13_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_13_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_13_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_14_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_2_bankoffset_14_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_14_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_14_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_14_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_15_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_2_bankoffset_15_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_2_bankoffset_15_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_15_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_2_bankoffset_15_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_0_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_3_bankoffset_0_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_0_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_0_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_0_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_1_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_3_bankoffset_1_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_1_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_1_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_1_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_2_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_3_bankoffset_2_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_2_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_2_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_2_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_3_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_3_bankoffset_3_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_3_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_3_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_3_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_4_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_3_bankoffset_4_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_4_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_4_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_4_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_5_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_3_bankoffset_5_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_5_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_5_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_5_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_6_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_3_bankoffset_6_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_6_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_6_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_6_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_7_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_3_bankoffset_7_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_7_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_7_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_7_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_8_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_3_bankoffset_8_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_8_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_8_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_8_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_9_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_3_bankoffset_9_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_9_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_9_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_9_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_10_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_3_bankoffset_10_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_10_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_10_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_10_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_11_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_3_bankoffset_11_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_11_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_11_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_11_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_12_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_3_bankoffset_12_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_12_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_12_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_12_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_13_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_3_bankoffset_13_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_13_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_13_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_13_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_14_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_3_bankoffset_14_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_14_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_14_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_14_io_outData; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_15_clock; // @[InstBanks.scala 31:22]
  wire [5:0] instruction_bank_way_3_bankoffset_15_io_addr; // @[InstBanks.scala 31:22]
  wire  instruction_bank_way_3_bankoffset_15_io_writeVector; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_15_io_inData; // @[InstBanks.scala 31:22]
  wire [31:0] instruction_bank_way_3_bankoffset_15_io_outData; // @[InstBanks.scala 31:22]
  SinglePortBRam instruction_bank_way_0_bankoffset_0 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_0_bankoffset_0_clock),
    .io_addr(instruction_bank_way_0_bankoffset_0_io_addr),
    .io_writeVector(instruction_bank_way_0_bankoffset_0_io_writeVector),
    .io_inData(instruction_bank_way_0_bankoffset_0_io_inData),
    .io_outData(instruction_bank_way_0_bankoffset_0_io_outData)
  );
  SinglePortBRam instruction_bank_way_0_bankoffset_1 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_0_bankoffset_1_clock),
    .io_addr(instruction_bank_way_0_bankoffset_1_io_addr),
    .io_writeVector(instruction_bank_way_0_bankoffset_1_io_writeVector),
    .io_inData(instruction_bank_way_0_bankoffset_1_io_inData),
    .io_outData(instruction_bank_way_0_bankoffset_1_io_outData)
  );
  SinglePortBRam instruction_bank_way_0_bankoffset_2 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_0_bankoffset_2_clock),
    .io_addr(instruction_bank_way_0_bankoffset_2_io_addr),
    .io_writeVector(instruction_bank_way_0_bankoffset_2_io_writeVector),
    .io_inData(instruction_bank_way_0_bankoffset_2_io_inData),
    .io_outData(instruction_bank_way_0_bankoffset_2_io_outData)
  );
  SinglePortBRam instruction_bank_way_0_bankoffset_3 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_0_bankoffset_3_clock),
    .io_addr(instruction_bank_way_0_bankoffset_3_io_addr),
    .io_writeVector(instruction_bank_way_0_bankoffset_3_io_writeVector),
    .io_inData(instruction_bank_way_0_bankoffset_3_io_inData),
    .io_outData(instruction_bank_way_0_bankoffset_3_io_outData)
  );
  SinglePortBRam instruction_bank_way_0_bankoffset_4 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_0_bankoffset_4_clock),
    .io_addr(instruction_bank_way_0_bankoffset_4_io_addr),
    .io_writeVector(instruction_bank_way_0_bankoffset_4_io_writeVector),
    .io_inData(instruction_bank_way_0_bankoffset_4_io_inData),
    .io_outData(instruction_bank_way_0_bankoffset_4_io_outData)
  );
  SinglePortBRam instruction_bank_way_0_bankoffset_5 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_0_bankoffset_5_clock),
    .io_addr(instruction_bank_way_0_bankoffset_5_io_addr),
    .io_writeVector(instruction_bank_way_0_bankoffset_5_io_writeVector),
    .io_inData(instruction_bank_way_0_bankoffset_5_io_inData),
    .io_outData(instruction_bank_way_0_bankoffset_5_io_outData)
  );
  SinglePortBRam instruction_bank_way_0_bankoffset_6 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_0_bankoffset_6_clock),
    .io_addr(instruction_bank_way_0_bankoffset_6_io_addr),
    .io_writeVector(instruction_bank_way_0_bankoffset_6_io_writeVector),
    .io_inData(instruction_bank_way_0_bankoffset_6_io_inData),
    .io_outData(instruction_bank_way_0_bankoffset_6_io_outData)
  );
  SinglePortBRam instruction_bank_way_0_bankoffset_7 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_0_bankoffset_7_clock),
    .io_addr(instruction_bank_way_0_bankoffset_7_io_addr),
    .io_writeVector(instruction_bank_way_0_bankoffset_7_io_writeVector),
    .io_inData(instruction_bank_way_0_bankoffset_7_io_inData),
    .io_outData(instruction_bank_way_0_bankoffset_7_io_outData)
  );
  SinglePortBRam instruction_bank_way_0_bankoffset_8 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_0_bankoffset_8_clock),
    .io_addr(instruction_bank_way_0_bankoffset_8_io_addr),
    .io_writeVector(instruction_bank_way_0_bankoffset_8_io_writeVector),
    .io_inData(instruction_bank_way_0_bankoffset_8_io_inData),
    .io_outData(instruction_bank_way_0_bankoffset_8_io_outData)
  );
  SinglePortBRam instruction_bank_way_0_bankoffset_9 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_0_bankoffset_9_clock),
    .io_addr(instruction_bank_way_0_bankoffset_9_io_addr),
    .io_writeVector(instruction_bank_way_0_bankoffset_9_io_writeVector),
    .io_inData(instruction_bank_way_0_bankoffset_9_io_inData),
    .io_outData(instruction_bank_way_0_bankoffset_9_io_outData)
  );
  SinglePortBRam instruction_bank_way_0_bankoffset_10 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_0_bankoffset_10_clock),
    .io_addr(instruction_bank_way_0_bankoffset_10_io_addr),
    .io_writeVector(instruction_bank_way_0_bankoffset_10_io_writeVector),
    .io_inData(instruction_bank_way_0_bankoffset_10_io_inData),
    .io_outData(instruction_bank_way_0_bankoffset_10_io_outData)
  );
  SinglePortBRam instruction_bank_way_0_bankoffset_11 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_0_bankoffset_11_clock),
    .io_addr(instruction_bank_way_0_bankoffset_11_io_addr),
    .io_writeVector(instruction_bank_way_0_bankoffset_11_io_writeVector),
    .io_inData(instruction_bank_way_0_bankoffset_11_io_inData),
    .io_outData(instruction_bank_way_0_bankoffset_11_io_outData)
  );
  SinglePortBRam instruction_bank_way_0_bankoffset_12 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_0_bankoffset_12_clock),
    .io_addr(instruction_bank_way_0_bankoffset_12_io_addr),
    .io_writeVector(instruction_bank_way_0_bankoffset_12_io_writeVector),
    .io_inData(instruction_bank_way_0_bankoffset_12_io_inData),
    .io_outData(instruction_bank_way_0_bankoffset_12_io_outData)
  );
  SinglePortBRam instruction_bank_way_0_bankoffset_13 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_0_bankoffset_13_clock),
    .io_addr(instruction_bank_way_0_bankoffset_13_io_addr),
    .io_writeVector(instruction_bank_way_0_bankoffset_13_io_writeVector),
    .io_inData(instruction_bank_way_0_bankoffset_13_io_inData),
    .io_outData(instruction_bank_way_0_bankoffset_13_io_outData)
  );
  SinglePortBRam instruction_bank_way_0_bankoffset_14 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_0_bankoffset_14_clock),
    .io_addr(instruction_bank_way_0_bankoffset_14_io_addr),
    .io_writeVector(instruction_bank_way_0_bankoffset_14_io_writeVector),
    .io_inData(instruction_bank_way_0_bankoffset_14_io_inData),
    .io_outData(instruction_bank_way_0_bankoffset_14_io_outData)
  );
  SinglePortBRam instruction_bank_way_0_bankoffset_15 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_0_bankoffset_15_clock),
    .io_addr(instruction_bank_way_0_bankoffset_15_io_addr),
    .io_writeVector(instruction_bank_way_0_bankoffset_15_io_writeVector),
    .io_inData(instruction_bank_way_0_bankoffset_15_io_inData),
    .io_outData(instruction_bank_way_0_bankoffset_15_io_outData)
  );
  SinglePortBRam instruction_bank_way_1_bankoffset_0 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_1_bankoffset_0_clock),
    .io_addr(instruction_bank_way_1_bankoffset_0_io_addr),
    .io_writeVector(instruction_bank_way_1_bankoffset_0_io_writeVector),
    .io_inData(instruction_bank_way_1_bankoffset_0_io_inData),
    .io_outData(instruction_bank_way_1_bankoffset_0_io_outData)
  );
  SinglePortBRam instruction_bank_way_1_bankoffset_1 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_1_bankoffset_1_clock),
    .io_addr(instruction_bank_way_1_bankoffset_1_io_addr),
    .io_writeVector(instruction_bank_way_1_bankoffset_1_io_writeVector),
    .io_inData(instruction_bank_way_1_bankoffset_1_io_inData),
    .io_outData(instruction_bank_way_1_bankoffset_1_io_outData)
  );
  SinglePortBRam instruction_bank_way_1_bankoffset_2 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_1_bankoffset_2_clock),
    .io_addr(instruction_bank_way_1_bankoffset_2_io_addr),
    .io_writeVector(instruction_bank_way_1_bankoffset_2_io_writeVector),
    .io_inData(instruction_bank_way_1_bankoffset_2_io_inData),
    .io_outData(instruction_bank_way_1_bankoffset_2_io_outData)
  );
  SinglePortBRam instruction_bank_way_1_bankoffset_3 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_1_bankoffset_3_clock),
    .io_addr(instruction_bank_way_1_bankoffset_3_io_addr),
    .io_writeVector(instruction_bank_way_1_bankoffset_3_io_writeVector),
    .io_inData(instruction_bank_way_1_bankoffset_3_io_inData),
    .io_outData(instruction_bank_way_1_bankoffset_3_io_outData)
  );
  SinglePortBRam instruction_bank_way_1_bankoffset_4 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_1_bankoffset_4_clock),
    .io_addr(instruction_bank_way_1_bankoffset_4_io_addr),
    .io_writeVector(instruction_bank_way_1_bankoffset_4_io_writeVector),
    .io_inData(instruction_bank_way_1_bankoffset_4_io_inData),
    .io_outData(instruction_bank_way_1_bankoffset_4_io_outData)
  );
  SinglePortBRam instruction_bank_way_1_bankoffset_5 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_1_bankoffset_5_clock),
    .io_addr(instruction_bank_way_1_bankoffset_5_io_addr),
    .io_writeVector(instruction_bank_way_1_bankoffset_5_io_writeVector),
    .io_inData(instruction_bank_way_1_bankoffset_5_io_inData),
    .io_outData(instruction_bank_way_1_bankoffset_5_io_outData)
  );
  SinglePortBRam instruction_bank_way_1_bankoffset_6 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_1_bankoffset_6_clock),
    .io_addr(instruction_bank_way_1_bankoffset_6_io_addr),
    .io_writeVector(instruction_bank_way_1_bankoffset_6_io_writeVector),
    .io_inData(instruction_bank_way_1_bankoffset_6_io_inData),
    .io_outData(instruction_bank_way_1_bankoffset_6_io_outData)
  );
  SinglePortBRam instruction_bank_way_1_bankoffset_7 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_1_bankoffset_7_clock),
    .io_addr(instruction_bank_way_1_bankoffset_7_io_addr),
    .io_writeVector(instruction_bank_way_1_bankoffset_7_io_writeVector),
    .io_inData(instruction_bank_way_1_bankoffset_7_io_inData),
    .io_outData(instruction_bank_way_1_bankoffset_7_io_outData)
  );
  SinglePortBRam instruction_bank_way_1_bankoffset_8 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_1_bankoffset_8_clock),
    .io_addr(instruction_bank_way_1_bankoffset_8_io_addr),
    .io_writeVector(instruction_bank_way_1_bankoffset_8_io_writeVector),
    .io_inData(instruction_bank_way_1_bankoffset_8_io_inData),
    .io_outData(instruction_bank_way_1_bankoffset_8_io_outData)
  );
  SinglePortBRam instruction_bank_way_1_bankoffset_9 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_1_bankoffset_9_clock),
    .io_addr(instruction_bank_way_1_bankoffset_9_io_addr),
    .io_writeVector(instruction_bank_way_1_bankoffset_9_io_writeVector),
    .io_inData(instruction_bank_way_1_bankoffset_9_io_inData),
    .io_outData(instruction_bank_way_1_bankoffset_9_io_outData)
  );
  SinglePortBRam instruction_bank_way_1_bankoffset_10 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_1_bankoffset_10_clock),
    .io_addr(instruction_bank_way_1_bankoffset_10_io_addr),
    .io_writeVector(instruction_bank_way_1_bankoffset_10_io_writeVector),
    .io_inData(instruction_bank_way_1_bankoffset_10_io_inData),
    .io_outData(instruction_bank_way_1_bankoffset_10_io_outData)
  );
  SinglePortBRam instruction_bank_way_1_bankoffset_11 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_1_bankoffset_11_clock),
    .io_addr(instruction_bank_way_1_bankoffset_11_io_addr),
    .io_writeVector(instruction_bank_way_1_bankoffset_11_io_writeVector),
    .io_inData(instruction_bank_way_1_bankoffset_11_io_inData),
    .io_outData(instruction_bank_way_1_bankoffset_11_io_outData)
  );
  SinglePortBRam instruction_bank_way_1_bankoffset_12 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_1_bankoffset_12_clock),
    .io_addr(instruction_bank_way_1_bankoffset_12_io_addr),
    .io_writeVector(instruction_bank_way_1_bankoffset_12_io_writeVector),
    .io_inData(instruction_bank_way_1_bankoffset_12_io_inData),
    .io_outData(instruction_bank_way_1_bankoffset_12_io_outData)
  );
  SinglePortBRam instruction_bank_way_1_bankoffset_13 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_1_bankoffset_13_clock),
    .io_addr(instruction_bank_way_1_bankoffset_13_io_addr),
    .io_writeVector(instruction_bank_way_1_bankoffset_13_io_writeVector),
    .io_inData(instruction_bank_way_1_bankoffset_13_io_inData),
    .io_outData(instruction_bank_way_1_bankoffset_13_io_outData)
  );
  SinglePortBRam instruction_bank_way_1_bankoffset_14 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_1_bankoffset_14_clock),
    .io_addr(instruction_bank_way_1_bankoffset_14_io_addr),
    .io_writeVector(instruction_bank_way_1_bankoffset_14_io_writeVector),
    .io_inData(instruction_bank_way_1_bankoffset_14_io_inData),
    .io_outData(instruction_bank_way_1_bankoffset_14_io_outData)
  );
  SinglePortBRam instruction_bank_way_1_bankoffset_15 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_1_bankoffset_15_clock),
    .io_addr(instruction_bank_way_1_bankoffset_15_io_addr),
    .io_writeVector(instruction_bank_way_1_bankoffset_15_io_writeVector),
    .io_inData(instruction_bank_way_1_bankoffset_15_io_inData),
    .io_outData(instruction_bank_way_1_bankoffset_15_io_outData)
  );
  SinglePortBRam instruction_bank_way_2_bankoffset_0 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_2_bankoffset_0_clock),
    .io_addr(instruction_bank_way_2_bankoffset_0_io_addr),
    .io_writeVector(instruction_bank_way_2_bankoffset_0_io_writeVector),
    .io_inData(instruction_bank_way_2_bankoffset_0_io_inData),
    .io_outData(instruction_bank_way_2_bankoffset_0_io_outData)
  );
  SinglePortBRam instruction_bank_way_2_bankoffset_1 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_2_bankoffset_1_clock),
    .io_addr(instruction_bank_way_2_bankoffset_1_io_addr),
    .io_writeVector(instruction_bank_way_2_bankoffset_1_io_writeVector),
    .io_inData(instruction_bank_way_2_bankoffset_1_io_inData),
    .io_outData(instruction_bank_way_2_bankoffset_1_io_outData)
  );
  SinglePortBRam instruction_bank_way_2_bankoffset_2 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_2_bankoffset_2_clock),
    .io_addr(instruction_bank_way_2_bankoffset_2_io_addr),
    .io_writeVector(instruction_bank_way_2_bankoffset_2_io_writeVector),
    .io_inData(instruction_bank_way_2_bankoffset_2_io_inData),
    .io_outData(instruction_bank_way_2_bankoffset_2_io_outData)
  );
  SinglePortBRam instruction_bank_way_2_bankoffset_3 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_2_bankoffset_3_clock),
    .io_addr(instruction_bank_way_2_bankoffset_3_io_addr),
    .io_writeVector(instruction_bank_way_2_bankoffset_3_io_writeVector),
    .io_inData(instruction_bank_way_2_bankoffset_3_io_inData),
    .io_outData(instruction_bank_way_2_bankoffset_3_io_outData)
  );
  SinglePortBRam instruction_bank_way_2_bankoffset_4 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_2_bankoffset_4_clock),
    .io_addr(instruction_bank_way_2_bankoffset_4_io_addr),
    .io_writeVector(instruction_bank_way_2_bankoffset_4_io_writeVector),
    .io_inData(instruction_bank_way_2_bankoffset_4_io_inData),
    .io_outData(instruction_bank_way_2_bankoffset_4_io_outData)
  );
  SinglePortBRam instruction_bank_way_2_bankoffset_5 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_2_bankoffset_5_clock),
    .io_addr(instruction_bank_way_2_bankoffset_5_io_addr),
    .io_writeVector(instruction_bank_way_2_bankoffset_5_io_writeVector),
    .io_inData(instruction_bank_way_2_bankoffset_5_io_inData),
    .io_outData(instruction_bank_way_2_bankoffset_5_io_outData)
  );
  SinglePortBRam instruction_bank_way_2_bankoffset_6 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_2_bankoffset_6_clock),
    .io_addr(instruction_bank_way_2_bankoffset_6_io_addr),
    .io_writeVector(instruction_bank_way_2_bankoffset_6_io_writeVector),
    .io_inData(instruction_bank_way_2_bankoffset_6_io_inData),
    .io_outData(instruction_bank_way_2_bankoffset_6_io_outData)
  );
  SinglePortBRam instruction_bank_way_2_bankoffset_7 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_2_bankoffset_7_clock),
    .io_addr(instruction_bank_way_2_bankoffset_7_io_addr),
    .io_writeVector(instruction_bank_way_2_bankoffset_7_io_writeVector),
    .io_inData(instruction_bank_way_2_bankoffset_7_io_inData),
    .io_outData(instruction_bank_way_2_bankoffset_7_io_outData)
  );
  SinglePortBRam instruction_bank_way_2_bankoffset_8 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_2_bankoffset_8_clock),
    .io_addr(instruction_bank_way_2_bankoffset_8_io_addr),
    .io_writeVector(instruction_bank_way_2_bankoffset_8_io_writeVector),
    .io_inData(instruction_bank_way_2_bankoffset_8_io_inData),
    .io_outData(instruction_bank_way_2_bankoffset_8_io_outData)
  );
  SinglePortBRam instruction_bank_way_2_bankoffset_9 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_2_bankoffset_9_clock),
    .io_addr(instruction_bank_way_2_bankoffset_9_io_addr),
    .io_writeVector(instruction_bank_way_2_bankoffset_9_io_writeVector),
    .io_inData(instruction_bank_way_2_bankoffset_9_io_inData),
    .io_outData(instruction_bank_way_2_bankoffset_9_io_outData)
  );
  SinglePortBRam instruction_bank_way_2_bankoffset_10 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_2_bankoffset_10_clock),
    .io_addr(instruction_bank_way_2_bankoffset_10_io_addr),
    .io_writeVector(instruction_bank_way_2_bankoffset_10_io_writeVector),
    .io_inData(instruction_bank_way_2_bankoffset_10_io_inData),
    .io_outData(instruction_bank_way_2_bankoffset_10_io_outData)
  );
  SinglePortBRam instruction_bank_way_2_bankoffset_11 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_2_bankoffset_11_clock),
    .io_addr(instruction_bank_way_2_bankoffset_11_io_addr),
    .io_writeVector(instruction_bank_way_2_bankoffset_11_io_writeVector),
    .io_inData(instruction_bank_way_2_bankoffset_11_io_inData),
    .io_outData(instruction_bank_way_2_bankoffset_11_io_outData)
  );
  SinglePortBRam instruction_bank_way_2_bankoffset_12 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_2_bankoffset_12_clock),
    .io_addr(instruction_bank_way_2_bankoffset_12_io_addr),
    .io_writeVector(instruction_bank_way_2_bankoffset_12_io_writeVector),
    .io_inData(instruction_bank_way_2_bankoffset_12_io_inData),
    .io_outData(instruction_bank_way_2_bankoffset_12_io_outData)
  );
  SinglePortBRam instruction_bank_way_2_bankoffset_13 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_2_bankoffset_13_clock),
    .io_addr(instruction_bank_way_2_bankoffset_13_io_addr),
    .io_writeVector(instruction_bank_way_2_bankoffset_13_io_writeVector),
    .io_inData(instruction_bank_way_2_bankoffset_13_io_inData),
    .io_outData(instruction_bank_way_2_bankoffset_13_io_outData)
  );
  SinglePortBRam instruction_bank_way_2_bankoffset_14 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_2_bankoffset_14_clock),
    .io_addr(instruction_bank_way_2_bankoffset_14_io_addr),
    .io_writeVector(instruction_bank_way_2_bankoffset_14_io_writeVector),
    .io_inData(instruction_bank_way_2_bankoffset_14_io_inData),
    .io_outData(instruction_bank_way_2_bankoffset_14_io_outData)
  );
  SinglePortBRam instruction_bank_way_2_bankoffset_15 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_2_bankoffset_15_clock),
    .io_addr(instruction_bank_way_2_bankoffset_15_io_addr),
    .io_writeVector(instruction_bank_way_2_bankoffset_15_io_writeVector),
    .io_inData(instruction_bank_way_2_bankoffset_15_io_inData),
    .io_outData(instruction_bank_way_2_bankoffset_15_io_outData)
  );
  SinglePortBRam instruction_bank_way_3_bankoffset_0 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_3_bankoffset_0_clock),
    .io_addr(instruction_bank_way_3_bankoffset_0_io_addr),
    .io_writeVector(instruction_bank_way_3_bankoffset_0_io_writeVector),
    .io_inData(instruction_bank_way_3_bankoffset_0_io_inData),
    .io_outData(instruction_bank_way_3_bankoffset_0_io_outData)
  );
  SinglePortBRam instruction_bank_way_3_bankoffset_1 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_3_bankoffset_1_clock),
    .io_addr(instruction_bank_way_3_bankoffset_1_io_addr),
    .io_writeVector(instruction_bank_way_3_bankoffset_1_io_writeVector),
    .io_inData(instruction_bank_way_3_bankoffset_1_io_inData),
    .io_outData(instruction_bank_way_3_bankoffset_1_io_outData)
  );
  SinglePortBRam instruction_bank_way_3_bankoffset_2 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_3_bankoffset_2_clock),
    .io_addr(instruction_bank_way_3_bankoffset_2_io_addr),
    .io_writeVector(instruction_bank_way_3_bankoffset_2_io_writeVector),
    .io_inData(instruction_bank_way_3_bankoffset_2_io_inData),
    .io_outData(instruction_bank_way_3_bankoffset_2_io_outData)
  );
  SinglePortBRam instruction_bank_way_3_bankoffset_3 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_3_bankoffset_3_clock),
    .io_addr(instruction_bank_way_3_bankoffset_3_io_addr),
    .io_writeVector(instruction_bank_way_3_bankoffset_3_io_writeVector),
    .io_inData(instruction_bank_way_3_bankoffset_3_io_inData),
    .io_outData(instruction_bank_way_3_bankoffset_3_io_outData)
  );
  SinglePortBRam instruction_bank_way_3_bankoffset_4 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_3_bankoffset_4_clock),
    .io_addr(instruction_bank_way_3_bankoffset_4_io_addr),
    .io_writeVector(instruction_bank_way_3_bankoffset_4_io_writeVector),
    .io_inData(instruction_bank_way_3_bankoffset_4_io_inData),
    .io_outData(instruction_bank_way_3_bankoffset_4_io_outData)
  );
  SinglePortBRam instruction_bank_way_3_bankoffset_5 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_3_bankoffset_5_clock),
    .io_addr(instruction_bank_way_3_bankoffset_5_io_addr),
    .io_writeVector(instruction_bank_way_3_bankoffset_5_io_writeVector),
    .io_inData(instruction_bank_way_3_bankoffset_5_io_inData),
    .io_outData(instruction_bank_way_3_bankoffset_5_io_outData)
  );
  SinglePortBRam instruction_bank_way_3_bankoffset_6 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_3_bankoffset_6_clock),
    .io_addr(instruction_bank_way_3_bankoffset_6_io_addr),
    .io_writeVector(instruction_bank_way_3_bankoffset_6_io_writeVector),
    .io_inData(instruction_bank_way_3_bankoffset_6_io_inData),
    .io_outData(instruction_bank_way_3_bankoffset_6_io_outData)
  );
  SinglePortBRam instruction_bank_way_3_bankoffset_7 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_3_bankoffset_7_clock),
    .io_addr(instruction_bank_way_3_bankoffset_7_io_addr),
    .io_writeVector(instruction_bank_way_3_bankoffset_7_io_writeVector),
    .io_inData(instruction_bank_way_3_bankoffset_7_io_inData),
    .io_outData(instruction_bank_way_3_bankoffset_7_io_outData)
  );
  SinglePortBRam instruction_bank_way_3_bankoffset_8 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_3_bankoffset_8_clock),
    .io_addr(instruction_bank_way_3_bankoffset_8_io_addr),
    .io_writeVector(instruction_bank_way_3_bankoffset_8_io_writeVector),
    .io_inData(instruction_bank_way_3_bankoffset_8_io_inData),
    .io_outData(instruction_bank_way_3_bankoffset_8_io_outData)
  );
  SinglePortBRam instruction_bank_way_3_bankoffset_9 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_3_bankoffset_9_clock),
    .io_addr(instruction_bank_way_3_bankoffset_9_io_addr),
    .io_writeVector(instruction_bank_way_3_bankoffset_9_io_writeVector),
    .io_inData(instruction_bank_way_3_bankoffset_9_io_inData),
    .io_outData(instruction_bank_way_3_bankoffset_9_io_outData)
  );
  SinglePortBRam instruction_bank_way_3_bankoffset_10 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_3_bankoffset_10_clock),
    .io_addr(instruction_bank_way_3_bankoffset_10_io_addr),
    .io_writeVector(instruction_bank_way_3_bankoffset_10_io_writeVector),
    .io_inData(instruction_bank_way_3_bankoffset_10_io_inData),
    .io_outData(instruction_bank_way_3_bankoffset_10_io_outData)
  );
  SinglePortBRam instruction_bank_way_3_bankoffset_11 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_3_bankoffset_11_clock),
    .io_addr(instruction_bank_way_3_bankoffset_11_io_addr),
    .io_writeVector(instruction_bank_way_3_bankoffset_11_io_writeVector),
    .io_inData(instruction_bank_way_3_bankoffset_11_io_inData),
    .io_outData(instruction_bank_way_3_bankoffset_11_io_outData)
  );
  SinglePortBRam instruction_bank_way_3_bankoffset_12 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_3_bankoffset_12_clock),
    .io_addr(instruction_bank_way_3_bankoffset_12_io_addr),
    .io_writeVector(instruction_bank_way_3_bankoffset_12_io_writeVector),
    .io_inData(instruction_bank_way_3_bankoffset_12_io_inData),
    .io_outData(instruction_bank_way_3_bankoffset_12_io_outData)
  );
  SinglePortBRam instruction_bank_way_3_bankoffset_13 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_3_bankoffset_13_clock),
    .io_addr(instruction_bank_way_3_bankoffset_13_io_addr),
    .io_writeVector(instruction_bank_way_3_bankoffset_13_io_writeVector),
    .io_inData(instruction_bank_way_3_bankoffset_13_io_inData),
    .io_outData(instruction_bank_way_3_bankoffset_13_io_outData)
  );
  SinglePortBRam instruction_bank_way_3_bankoffset_14 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_3_bankoffset_14_clock),
    .io_addr(instruction_bank_way_3_bankoffset_14_io_addr),
    .io_writeVector(instruction_bank_way_3_bankoffset_14_io_writeVector),
    .io_inData(instruction_bank_way_3_bankoffset_14_io_inData),
    .io_outData(instruction_bank_way_3_bankoffset_14_io_outData)
  );
  SinglePortBRam instruction_bank_way_3_bankoffset_15 ( // @[InstBanks.scala 31:22]
    .clock(instruction_bank_way_3_bankoffset_15_clock),
    .io_addr(instruction_bank_way_3_bankoffset_15_io_addr),
    .io_writeVector(instruction_bank_way_3_bankoffset_15_io_writeVector),
    .io_inData(instruction_bank_way_3_bankoffset_15_io_inData),
    .io_outData(instruction_bank_way_3_bankoffset_15_io_outData)
  );
  assign io_way_bank_0_0_readData = instruction_bank_way_0_bankoffset_0_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_0_1_readData = instruction_bank_way_0_bankoffset_1_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_0_2_readData = instruction_bank_way_0_bankoffset_2_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_0_3_readData = instruction_bank_way_0_bankoffset_3_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_0_4_readData = instruction_bank_way_0_bankoffset_4_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_0_5_readData = instruction_bank_way_0_bankoffset_5_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_0_6_readData = instruction_bank_way_0_bankoffset_6_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_0_7_readData = instruction_bank_way_0_bankoffset_7_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_0_8_readData = instruction_bank_way_0_bankoffset_8_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_0_9_readData = instruction_bank_way_0_bankoffset_9_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_0_10_readData = instruction_bank_way_0_bankoffset_10_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_0_11_readData = instruction_bank_way_0_bankoffset_11_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_0_12_readData = instruction_bank_way_0_bankoffset_12_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_0_13_readData = instruction_bank_way_0_bankoffset_13_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_0_14_readData = instruction_bank_way_0_bankoffset_14_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_0_15_readData = instruction_bank_way_0_bankoffset_15_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_1_0_readData = instruction_bank_way_1_bankoffset_0_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_1_1_readData = instruction_bank_way_1_bankoffset_1_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_1_2_readData = instruction_bank_way_1_bankoffset_2_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_1_3_readData = instruction_bank_way_1_bankoffset_3_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_1_4_readData = instruction_bank_way_1_bankoffset_4_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_1_5_readData = instruction_bank_way_1_bankoffset_5_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_1_6_readData = instruction_bank_way_1_bankoffset_6_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_1_7_readData = instruction_bank_way_1_bankoffset_7_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_1_8_readData = instruction_bank_way_1_bankoffset_8_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_1_9_readData = instruction_bank_way_1_bankoffset_9_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_1_10_readData = instruction_bank_way_1_bankoffset_10_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_1_11_readData = instruction_bank_way_1_bankoffset_11_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_1_12_readData = instruction_bank_way_1_bankoffset_12_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_1_13_readData = instruction_bank_way_1_bankoffset_13_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_1_14_readData = instruction_bank_way_1_bankoffset_14_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_1_15_readData = instruction_bank_way_1_bankoffset_15_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_2_0_readData = instruction_bank_way_2_bankoffset_0_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_2_1_readData = instruction_bank_way_2_bankoffset_1_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_2_2_readData = instruction_bank_way_2_bankoffset_2_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_2_3_readData = instruction_bank_way_2_bankoffset_3_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_2_4_readData = instruction_bank_way_2_bankoffset_4_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_2_5_readData = instruction_bank_way_2_bankoffset_5_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_2_6_readData = instruction_bank_way_2_bankoffset_6_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_2_7_readData = instruction_bank_way_2_bankoffset_7_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_2_8_readData = instruction_bank_way_2_bankoffset_8_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_2_9_readData = instruction_bank_way_2_bankoffset_9_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_2_10_readData = instruction_bank_way_2_bankoffset_10_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_2_11_readData = instruction_bank_way_2_bankoffset_11_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_2_12_readData = instruction_bank_way_2_bankoffset_12_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_2_13_readData = instruction_bank_way_2_bankoffset_13_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_2_14_readData = instruction_bank_way_2_bankoffset_14_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_2_15_readData = instruction_bank_way_2_bankoffset_15_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_3_0_readData = instruction_bank_way_3_bankoffset_0_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_3_1_readData = instruction_bank_way_3_bankoffset_1_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_3_2_readData = instruction_bank_way_3_bankoffset_2_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_3_3_readData = instruction_bank_way_3_bankoffset_3_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_3_4_readData = instruction_bank_way_3_bankoffset_4_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_3_5_readData = instruction_bank_way_3_bankoffset_5_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_3_6_readData = instruction_bank_way_3_bankoffset_6_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_3_7_readData = instruction_bank_way_3_bankoffset_7_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_3_8_readData = instruction_bank_way_3_bankoffset_8_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_3_9_readData = instruction_bank_way_3_bankoffset_9_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_3_10_readData = instruction_bank_way_3_bankoffset_10_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_3_11_readData = instruction_bank_way_3_bankoffset_11_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_3_12_readData = instruction_bank_way_3_bankoffset_12_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_3_13_readData = instruction_bank_way_3_bankoffset_13_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_3_14_readData = instruction_bank_way_3_bankoffset_14_io_outData; // @[InstBanks.scala 38:32]
  assign io_way_bank_3_15_readData = instruction_bank_way_3_bankoffset_15_io_outData; // @[InstBanks.scala 38:32]
  assign instruction_bank_way_0_bankoffset_0_clock = clock;
  assign instruction_bank_way_0_bankoffset_0_io_addr = io_way_bank_0_0_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_0_bankoffset_0_io_writeVector = io_way_bank_0_0_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_0_bankoffset_0_io_inData = io_way_bank_0_0_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_0_bankoffset_1_clock = clock;
  assign instruction_bank_way_0_bankoffset_1_io_addr = io_way_bank_0_1_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_0_bankoffset_1_io_writeVector = io_way_bank_0_1_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_0_bankoffset_1_io_inData = io_way_bank_0_1_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_0_bankoffset_2_clock = clock;
  assign instruction_bank_way_0_bankoffset_2_io_addr = io_way_bank_0_2_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_0_bankoffset_2_io_writeVector = io_way_bank_0_2_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_0_bankoffset_2_io_inData = io_way_bank_0_2_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_0_bankoffset_3_clock = clock;
  assign instruction_bank_way_0_bankoffset_3_io_addr = io_way_bank_0_3_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_0_bankoffset_3_io_writeVector = io_way_bank_0_3_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_0_bankoffset_3_io_inData = io_way_bank_0_3_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_0_bankoffset_4_clock = clock;
  assign instruction_bank_way_0_bankoffset_4_io_addr = io_way_bank_0_4_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_0_bankoffset_4_io_writeVector = io_way_bank_0_4_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_0_bankoffset_4_io_inData = io_way_bank_0_4_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_0_bankoffset_5_clock = clock;
  assign instruction_bank_way_0_bankoffset_5_io_addr = io_way_bank_0_5_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_0_bankoffset_5_io_writeVector = io_way_bank_0_5_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_0_bankoffset_5_io_inData = io_way_bank_0_5_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_0_bankoffset_6_clock = clock;
  assign instruction_bank_way_0_bankoffset_6_io_addr = io_way_bank_0_6_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_0_bankoffset_6_io_writeVector = io_way_bank_0_6_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_0_bankoffset_6_io_inData = io_way_bank_0_6_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_0_bankoffset_7_clock = clock;
  assign instruction_bank_way_0_bankoffset_7_io_addr = io_way_bank_0_7_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_0_bankoffset_7_io_writeVector = io_way_bank_0_7_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_0_bankoffset_7_io_inData = io_way_bank_0_7_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_0_bankoffset_8_clock = clock;
  assign instruction_bank_way_0_bankoffset_8_io_addr = io_way_bank_0_8_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_0_bankoffset_8_io_writeVector = io_way_bank_0_8_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_0_bankoffset_8_io_inData = io_way_bank_0_8_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_0_bankoffset_9_clock = clock;
  assign instruction_bank_way_0_bankoffset_9_io_addr = io_way_bank_0_9_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_0_bankoffset_9_io_writeVector = io_way_bank_0_9_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_0_bankoffset_9_io_inData = io_way_bank_0_9_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_0_bankoffset_10_clock = clock;
  assign instruction_bank_way_0_bankoffset_10_io_addr = io_way_bank_0_10_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_0_bankoffset_10_io_writeVector = io_way_bank_0_10_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_0_bankoffset_10_io_inData = io_way_bank_0_10_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_0_bankoffset_11_clock = clock;
  assign instruction_bank_way_0_bankoffset_11_io_addr = io_way_bank_0_11_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_0_bankoffset_11_io_writeVector = io_way_bank_0_11_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_0_bankoffset_11_io_inData = io_way_bank_0_11_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_0_bankoffset_12_clock = clock;
  assign instruction_bank_way_0_bankoffset_12_io_addr = io_way_bank_0_12_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_0_bankoffset_12_io_writeVector = io_way_bank_0_12_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_0_bankoffset_12_io_inData = io_way_bank_0_12_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_0_bankoffset_13_clock = clock;
  assign instruction_bank_way_0_bankoffset_13_io_addr = io_way_bank_0_13_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_0_bankoffset_13_io_writeVector = io_way_bank_0_13_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_0_bankoffset_13_io_inData = io_way_bank_0_13_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_0_bankoffset_14_clock = clock;
  assign instruction_bank_way_0_bankoffset_14_io_addr = io_way_bank_0_14_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_0_bankoffset_14_io_writeVector = io_way_bank_0_14_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_0_bankoffset_14_io_inData = io_way_bank_0_14_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_0_bankoffset_15_clock = clock;
  assign instruction_bank_way_0_bankoffset_15_io_addr = io_way_bank_0_15_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_0_bankoffset_15_io_writeVector = io_way_bank_0_15_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_0_bankoffset_15_io_inData = io_way_bank_0_15_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_1_bankoffset_0_clock = clock;
  assign instruction_bank_way_1_bankoffset_0_io_addr = io_way_bank_1_0_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_1_bankoffset_0_io_writeVector = io_way_bank_1_0_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_1_bankoffset_0_io_inData = io_way_bank_1_0_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_1_bankoffset_1_clock = clock;
  assign instruction_bank_way_1_bankoffset_1_io_addr = io_way_bank_1_1_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_1_bankoffset_1_io_writeVector = io_way_bank_1_1_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_1_bankoffset_1_io_inData = io_way_bank_1_1_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_1_bankoffset_2_clock = clock;
  assign instruction_bank_way_1_bankoffset_2_io_addr = io_way_bank_1_2_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_1_bankoffset_2_io_writeVector = io_way_bank_1_2_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_1_bankoffset_2_io_inData = io_way_bank_1_2_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_1_bankoffset_3_clock = clock;
  assign instruction_bank_way_1_bankoffset_3_io_addr = io_way_bank_1_3_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_1_bankoffset_3_io_writeVector = io_way_bank_1_3_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_1_bankoffset_3_io_inData = io_way_bank_1_3_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_1_bankoffset_4_clock = clock;
  assign instruction_bank_way_1_bankoffset_4_io_addr = io_way_bank_1_4_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_1_bankoffset_4_io_writeVector = io_way_bank_1_4_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_1_bankoffset_4_io_inData = io_way_bank_1_4_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_1_bankoffset_5_clock = clock;
  assign instruction_bank_way_1_bankoffset_5_io_addr = io_way_bank_1_5_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_1_bankoffset_5_io_writeVector = io_way_bank_1_5_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_1_bankoffset_5_io_inData = io_way_bank_1_5_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_1_bankoffset_6_clock = clock;
  assign instruction_bank_way_1_bankoffset_6_io_addr = io_way_bank_1_6_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_1_bankoffset_6_io_writeVector = io_way_bank_1_6_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_1_bankoffset_6_io_inData = io_way_bank_1_6_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_1_bankoffset_7_clock = clock;
  assign instruction_bank_way_1_bankoffset_7_io_addr = io_way_bank_1_7_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_1_bankoffset_7_io_writeVector = io_way_bank_1_7_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_1_bankoffset_7_io_inData = io_way_bank_1_7_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_1_bankoffset_8_clock = clock;
  assign instruction_bank_way_1_bankoffset_8_io_addr = io_way_bank_1_8_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_1_bankoffset_8_io_writeVector = io_way_bank_1_8_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_1_bankoffset_8_io_inData = io_way_bank_1_8_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_1_bankoffset_9_clock = clock;
  assign instruction_bank_way_1_bankoffset_9_io_addr = io_way_bank_1_9_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_1_bankoffset_9_io_writeVector = io_way_bank_1_9_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_1_bankoffset_9_io_inData = io_way_bank_1_9_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_1_bankoffset_10_clock = clock;
  assign instruction_bank_way_1_bankoffset_10_io_addr = io_way_bank_1_10_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_1_bankoffset_10_io_writeVector = io_way_bank_1_10_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_1_bankoffset_10_io_inData = io_way_bank_1_10_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_1_bankoffset_11_clock = clock;
  assign instruction_bank_way_1_bankoffset_11_io_addr = io_way_bank_1_11_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_1_bankoffset_11_io_writeVector = io_way_bank_1_11_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_1_bankoffset_11_io_inData = io_way_bank_1_11_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_1_bankoffset_12_clock = clock;
  assign instruction_bank_way_1_bankoffset_12_io_addr = io_way_bank_1_12_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_1_bankoffset_12_io_writeVector = io_way_bank_1_12_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_1_bankoffset_12_io_inData = io_way_bank_1_12_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_1_bankoffset_13_clock = clock;
  assign instruction_bank_way_1_bankoffset_13_io_addr = io_way_bank_1_13_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_1_bankoffset_13_io_writeVector = io_way_bank_1_13_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_1_bankoffset_13_io_inData = io_way_bank_1_13_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_1_bankoffset_14_clock = clock;
  assign instruction_bank_way_1_bankoffset_14_io_addr = io_way_bank_1_14_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_1_bankoffset_14_io_writeVector = io_way_bank_1_14_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_1_bankoffset_14_io_inData = io_way_bank_1_14_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_1_bankoffset_15_clock = clock;
  assign instruction_bank_way_1_bankoffset_15_io_addr = io_way_bank_1_15_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_1_bankoffset_15_io_writeVector = io_way_bank_1_15_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_1_bankoffset_15_io_inData = io_way_bank_1_15_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_2_bankoffset_0_clock = clock;
  assign instruction_bank_way_2_bankoffset_0_io_addr = io_way_bank_2_0_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_2_bankoffset_0_io_writeVector = io_way_bank_2_0_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_2_bankoffset_0_io_inData = io_way_bank_2_0_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_2_bankoffset_1_clock = clock;
  assign instruction_bank_way_2_bankoffset_1_io_addr = io_way_bank_2_1_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_2_bankoffset_1_io_writeVector = io_way_bank_2_1_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_2_bankoffset_1_io_inData = io_way_bank_2_1_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_2_bankoffset_2_clock = clock;
  assign instruction_bank_way_2_bankoffset_2_io_addr = io_way_bank_2_2_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_2_bankoffset_2_io_writeVector = io_way_bank_2_2_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_2_bankoffset_2_io_inData = io_way_bank_2_2_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_2_bankoffset_3_clock = clock;
  assign instruction_bank_way_2_bankoffset_3_io_addr = io_way_bank_2_3_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_2_bankoffset_3_io_writeVector = io_way_bank_2_3_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_2_bankoffset_3_io_inData = io_way_bank_2_3_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_2_bankoffset_4_clock = clock;
  assign instruction_bank_way_2_bankoffset_4_io_addr = io_way_bank_2_4_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_2_bankoffset_4_io_writeVector = io_way_bank_2_4_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_2_bankoffset_4_io_inData = io_way_bank_2_4_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_2_bankoffset_5_clock = clock;
  assign instruction_bank_way_2_bankoffset_5_io_addr = io_way_bank_2_5_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_2_bankoffset_5_io_writeVector = io_way_bank_2_5_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_2_bankoffset_5_io_inData = io_way_bank_2_5_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_2_bankoffset_6_clock = clock;
  assign instruction_bank_way_2_bankoffset_6_io_addr = io_way_bank_2_6_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_2_bankoffset_6_io_writeVector = io_way_bank_2_6_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_2_bankoffset_6_io_inData = io_way_bank_2_6_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_2_bankoffset_7_clock = clock;
  assign instruction_bank_way_2_bankoffset_7_io_addr = io_way_bank_2_7_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_2_bankoffset_7_io_writeVector = io_way_bank_2_7_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_2_bankoffset_7_io_inData = io_way_bank_2_7_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_2_bankoffset_8_clock = clock;
  assign instruction_bank_way_2_bankoffset_8_io_addr = io_way_bank_2_8_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_2_bankoffset_8_io_writeVector = io_way_bank_2_8_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_2_bankoffset_8_io_inData = io_way_bank_2_8_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_2_bankoffset_9_clock = clock;
  assign instruction_bank_way_2_bankoffset_9_io_addr = io_way_bank_2_9_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_2_bankoffset_9_io_writeVector = io_way_bank_2_9_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_2_bankoffset_9_io_inData = io_way_bank_2_9_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_2_bankoffset_10_clock = clock;
  assign instruction_bank_way_2_bankoffset_10_io_addr = io_way_bank_2_10_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_2_bankoffset_10_io_writeVector = io_way_bank_2_10_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_2_bankoffset_10_io_inData = io_way_bank_2_10_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_2_bankoffset_11_clock = clock;
  assign instruction_bank_way_2_bankoffset_11_io_addr = io_way_bank_2_11_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_2_bankoffset_11_io_writeVector = io_way_bank_2_11_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_2_bankoffset_11_io_inData = io_way_bank_2_11_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_2_bankoffset_12_clock = clock;
  assign instruction_bank_way_2_bankoffset_12_io_addr = io_way_bank_2_12_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_2_bankoffset_12_io_writeVector = io_way_bank_2_12_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_2_bankoffset_12_io_inData = io_way_bank_2_12_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_2_bankoffset_13_clock = clock;
  assign instruction_bank_way_2_bankoffset_13_io_addr = io_way_bank_2_13_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_2_bankoffset_13_io_writeVector = io_way_bank_2_13_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_2_bankoffset_13_io_inData = io_way_bank_2_13_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_2_bankoffset_14_clock = clock;
  assign instruction_bank_way_2_bankoffset_14_io_addr = io_way_bank_2_14_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_2_bankoffset_14_io_writeVector = io_way_bank_2_14_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_2_bankoffset_14_io_inData = io_way_bank_2_14_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_2_bankoffset_15_clock = clock;
  assign instruction_bank_way_2_bankoffset_15_io_addr = io_way_bank_2_15_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_2_bankoffset_15_io_writeVector = io_way_bank_2_15_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_2_bankoffset_15_io_inData = io_way_bank_2_15_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_3_bankoffset_0_clock = clock;
  assign instruction_bank_way_3_bankoffset_0_io_addr = io_way_bank_3_0_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_3_bankoffset_0_io_writeVector = io_way_bank_3_0_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_3_bankoffset_0_io_inData = io_way_bank_3_0_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_3_bankoffset_1_clock = clock;
  assign instruction_bank_way_3_bankoffset_1_io_addr = io_way_bank_3_1_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_3_bankoffset_1_io_writeVector = io_way_bank_3_1_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_3_bankoffset_1_io_inData = io_way_bank_3_1_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_3_bankoffset_2_clock = clock;
  assign instruction_bank_way_3_bankoffset_2_io_addr = io_way_bank_3_2_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_3_bankoffset_2_io_writeVector = io_way_bank_3_2_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_3_bankoffset_2_io_inData = io_way_bank_3_2_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_3_bankoffset_3_clock = clock;
  assign instruction_bank_way_3_bankoffset_3_io_addr = io_way_bank_3_3_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_3_bankoffset_3_io_writeVector = io_way_bank_3_3_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_3_bankoffset_3_io_inData = io_way_bank_3_3_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_3_bankoffset_4_clock = clock;
  assign instruction_bank_way_3_bankoffset_4_io_addr = io_way_bank_3_4_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_3_bankoffset_4_io_writeVector = io_way_bank_3_4_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_3_bankoffset_4_io_inData = io_way_bank_3_4_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_3_bankoffset_5_clock = clock;
  assign instruction_bank_way_3_bankoffset_5_io_addr = io_way_bank_3_5_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_3_bankoffset_5_io_writeVector = io_way_bank_3_5_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_3_bankoffset_5_io_inData = io_way_bank_3_5_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_3_bankoffset_6_clock = clock;
  assign instruction_bank_way_3_bankoffset_6_io_addr = io_way_bank_3_6_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_3_bankoffset_6_io_writeVector = io_way_bank_3_6_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_3_bankoffset_6_io_inData = io_way_bank_3_6_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_3_bankoffset_7_clock = clock;
  assign instruction_bank_way_3_bankoffset_7_io_addr = io_way_bank_3_7_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_3_bankoffset_7_io_writeVector = io_way_bank_3_7_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_3_bankoffset_7_io_inData = io_way_bank_3_7_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_3_bankoffset_8_clock = clock;
  assign instruction_bank_way_3_bankoffset_8_io_addr = io_way_bank_3_8_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_3_bankoffset_8_io_writeVector = io_way_bank_3_8_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_3_bankoffset_8_io_inData = io_way_bank_3_8_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_3_bankoffset_9_clock = clock;
  assign instruction_bank_way_3_bankoffset_9_io_addr = io_way_bank_3_9_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_3_bankoffset_9_io_writeVector = io_way_bank_3_9_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_3_bankoffset_9_io_inData = io_way_bank_3_9_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_3_bankoffset_10_clock = clock;
  assign instruction_bank_way_3_bankoffset_10_io_addr = io_way_bank_3_10_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_3_bankoffset_10_io_writeVector = io_way_bank_3_10_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_3_bankoffset_10_io_inData = io_way_bank_3_10_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_3_bankoffset_11_clock = clock;
  assign instruction_bank_way_3_bankoffset_11_io_addr = io_way_bank_3_11_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_3_bankoffset_11_io_writeVector = io_way_bank_3_11_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_3_bankoffset_11_io_inData = io_way_bank_3_11_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_3_bankoffset_12_clock = clock;
  assign instruction_bank_way_3_bankoffset_12_io_addr = io_way_bank_3_12_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_3_bankoffset_12_io_writeVector = io_way_bank_3_12_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_3_bankoffset_12_io_inData = io_way_bank_3_12_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_3_bankoffset_13_clock = clock;
  assign instruction_bank_way_3_bankoffset_13_io_addr = io_way_bank_3_13_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_3_bankoffset_13_io_writeVector = io_way_bank_3_13_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_3_bankoffset_13_io_inData = io_way_bank_3_13_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_3_bankoffset_14_clock = clock;
  assign instruction_bank_way_3_bankoffset_14_io_addr = io_way_bank_3_14_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_3_bankoffset_14_io_writeVector = io_way_bank_3_14_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_3_bankoffset_14_io_inData = io_way_bank_3_14_writeData; // @[InstBanks.scala 36:20]
  assign instruction_bank_way_3_bankoffset_15_clock = clock;
  assign instruction_bank_way_3_bankoffset_15_io_addr = io_way_bank_3_15_addr; // @[InstBanks.scala 35:18]
  assign instruction_bank_way_3_bankoffset_15_io_writeVector = io_way_bank_3_15_writeEnable; // @[InstBanks.scala 37:25]
  assign instruction_bank_way_3_bankoffset_15_io_inData = io_way_bank_3_15_writeData; // @[InstBanks.scala 36:20]
endmodule
module InstrCache(
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
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
  reg [31:0] _RAND_164;
  reg [31:0] _RAND_165;
  reg [31:0] _RAND_166;
  reg [31:0] _RAND_167;
  reg [31:0] _RAND_168;
  reg [31:0] _RAND_169;
  reg [31:0] _RAND_170;
  reg [31:0] _RAND_171;
  reg [31:0] _RAND_172;
  reg [31:0] _RAND_173;
  reg [31:0] _RAND_174;
  reg [31:0] _RAND_175;
  reg [31:0] _RAND_176;
  reg [31:0] _RAND_177;
  reg [31:0] _RAND_178;
  reg [31:0] _RAND_179;
  reg [31:0] _RAND_180;
  reg [31:0] _RAND_181;
  reg [31:0] _RAND_182;
  reg [31:0] _RAND_183;
  reg [31:0] _RAND_184;
  reg [31:0] _RAND_185;
  reg [31:0] _RAND_186;
  reg [31:0] _RAND_187;
  reg [31:0] _RAND_188;
  reg [31:0] _RAND_189;
  reg [31:0] _RAND_190;
  reg [31:0] _RAND_191;
  reg [31:0] _RAND_192;
  reg [31:0] _RAND_193;
  reg [31:0] _RAND_194;
  reg [31:0] _RAND_195;
  reg [31:0] _RAND_196;
  reg [31:0] _RAND_197;
  reg [31:0] _RAND_198;
  reg [31:0] _RAND_199;
  reg [31:0] _RAND_200;
  reg [31:0] _RAND_201;
  reg [31:0] _RAND_202;
  reg [31:0] _RAND_203;
  reg [31:0] _RAND_204;
  reg [31:0] _RAND_205;
  reg [31:0] _RAND_206;
  reg [31:0] _RAND_207;
  reg [31:0] _RAND_208;
  reg [31:0] _RAND_209;
  reg [31:0] _RAND_210;
  reg [31:0] _RAND_211;
  reg [31:0] _RAND_212;
  reg [31:0] _RAND_213;
  reg [31:0] _RAND_214;
  reg [31:0] _RAND_215;
  reg [31:0] _RAND_216;
  reg [31:0] _RAND_217;
  reg [31:0] _RAND_218;
  reg [31:0] _RAND_219;
  reg [31:0] _RAND_220;
  reg [31:0] _RAND_221;
  reg [31:0] _RAND_222;
  reg [31:0] _RAND_223;
  reg [31:0] _RAND_224;
  reg [31:0] _RAND_225;
  reg [31:0] _RAND_226;
  reg [31:0] _RAND_227;
  reg [31:0] _RAND_228;
  reg [31:0] _RAND_229;
  reg [31:0] _RAND_230;
  reg [31:0] _RAND_231;
  reg [31:0] _RAND_232;
  reg [31:0] _RAND_233;
  reg [31:0] _RAND_234;
  reg [31:0] _RAND_235;
  reg [31:0] _RAND_236;
  reg [31:0] _RAND_237;
  reg [31:0] _RAND_238;
  reg [31:0] _RAND_239;
  reg [31:0] _RAND_240;
  reg [31:0] _RAND_241;
  reg [31:0] _RAND_242;
  reg [31:0] _RAND_243;
  reg [31:0] _RAND_244;
  reg [31:0] _RAND_245;
  reg [31:0] _RAND_246;
  reg [31:0] _RAND_247;
  reg [31:0] _RAND_248;
  reg [31:0] _RAND_249;
  reg [31:0] _RAND_250;
  reg [31:0] _RAND_251;
  reg [31:0] _RAND_252;
  reg [31:0] _RAND_253;
  reg [31:0] _RAND_254;
  reg [31:0] _RAND_255;
`endif // RANDOMIZE_REG_INIT
  wire  fetch_clock; // @[InstrCache.scala 30:21]
  wire  fetch_reset; // @[InstrCache.scala 30:21]
  wire [31:0] fetch_io_addr; // @[InstrCache.scala 30:21]
  wire  fetch_io_writeTagValid_valid; // @[InstrCache.scala 30:21]
  wire [1:0] fetch_io_writeTagValid_bits_waySelection; // @[InstrCache.scala 30:21]
  wire [19:0] fetch_io_writeTagValid_bits_tagValid_tag; // @[InstrCache.scala 30:21]
  wire [5:0] fetch_io_index; // @[InstrCache.scala 30:21]
  wire [19:0] fetch_io_tagValid_0_tag; // @[InstrCache.scala 30:21]
  wire  fetch_io_tagValid_0_valid; // @[InstrCache.scala 30:21]
  wire [19:0] fetch_io_tagValid_1_tag; // @[InstrCache.scala 30:21]
  wire  fetch_io_tagValid_1_valid; // @[InstrCache.scala 30:21]
  wire [19:0] fetch_io_tagValid_2_tag; // @[InstrCache.scala 30:21]
  wire  fetch_io_tagValid_2_valid; // @[InstrCache.scala 30:21]
  wire [19:0] fetch_io_tagValid_3_tag; // @[InstrCache.scala 30:21]
  wire  fetch_io_tagValid_3_valid; // @[InstrCache.scala 30:21]
  wire [19:0] fetch_io_phyTag; // @[InstrCache.scala 30:21]
  wire [3:0] fetch_io_bankIndex; // @[InstrCache.scala 30:21]
  wire  mshr_clock; // @[InstrCache.scala 31:20]
  wire  mshr_reset; // @[InstrCache.scala 31:20]
  wire  mshr_io_missAddr_ready; // @[InstrCache.scala 31:20]
  wire  mshr_io_missAddr_valid; // @[InstrCache.scala 31:20]
  wire [19:0] mshr_io_missAddr_bits_tag; // @[InstrCache.scala 31:20]
  wire [5:0] mshr_io_missAddr_bits_index; // @[InstrCache.scala 31:20]
  wire [3:0] mshr_io_missAddr_bits_bankIndex; // @[InstrCache.scala 31:20]
  wire  mshr_io_readyForWB; // @[InstrCache.scala 31:20]
  wire  mshr_io_writeBack; // @[InstrCache.scala 31:20]
  wire [19:0] mshr_io_mshrInfo_tag; // @[InstrCache.scala 31:20]
  wire [5:0] mshr_io_mshrInfo_index; // @[InstrCache.scala 31:20]
  wire [3:0] mshr_io_mshrInfo_bankIndex; // @[InstrCache.scala 31:20]
  wire [19:0] comparator_io_tagValid_0_tag; // @[InstrCache.scala 32:26]
  wire  comparator_io_tagValid_0_valid; // @[InstrCache.scala 32:26]
  wire [19:0] comparator_io_tagValid_1_tag; // @[InstrCache.scala 32:26]
  wire  comparator_io_tagValid_1_valid; // @[InstrCache.scala 32:26]
  wire [19:0] comparator_io_tagValid_2_tag; // @[InstrCache.scala 32:26]
  wire  comparator_io_tagValid_2_valid; // @[InstrCache.scala 32:26]
  wire [19:0] comparator_io_tagValid_3_tag; // @[InstrCache.scala 32:26]
  wire  comparator_io_tagValid_3_valid; // @[InstrCache.scala 32:26]
  wire [19:0] comparator_io_phyTag; // @[InstrCache.scala 32:26]
  wire [5:0] comparator_io_index; // @[InstrCache.scala 32:26]
  wire  comparator_io_mshr_valid; // @[InstrCache.scala 32:26]
  wire [19:0] comparator_io_mshr_bits_tag; // @[InstrCache.scala 32:26]
  wire [5:0] comparator_io_mshr_bits_index; // @[InstrCache.scala 32:26]
  wire  comparator_io_refillBufferValid; // @[InstrCache.scala 32:26]
  wire  comparator_io_bankHitWay_valid; // @[InstrCache.scala 32:26]
  wire [1:0] comparator_io_bankHitWay_bits; // @[InstrCache.scala 32:26]
  wire  comparator_io_hitInRefillBuffer; // @[InstrCache.scala 32:26]
  wire  axi_clock; // @[InstrCache.scala 33:19]
  wire  axi_reset; // @[InstrCache.scala 33:19]
  wire  axi_io_axi_ar_ready; // @[InstrCache.scala 33:19]
  wire  axi_io_axi_ar_valid; // @[InstrCache.scala 33:19]
  wire [31:0] axi_io_axi_ar_bits_addr; // @[InstrCache.scala 33:19]
  wire  axi_io_axi_r_ready; // @[InstrCache.scala 33:19]
  wire  axi_io_axi_r_valid; // @[InstrCache.scala 33:19]
  wire [31:0] axi_io_axi_r_bits_data; // @[InstrCache.scala 33:19]
  wire  axi_io_axi_r_bits_last; // @[InstrCache.scala 33:19]
  wire  axi_io_addrReq_valid; // @[InstrCache.scala 33:19]
  wire [31:0] axi_io_addrReq_bits; // @[InstrCache.scala 33:19]
  wire  axi_io_transferData_valid; // @[InstrCache.scala 33:19]
  wire [31:0] axi_io_transferData_bits; // @[InstrCache.scala 33:19]
  wire  axi_io_finishTransfer; // @[InstrCache.scala 33:19]
  wire  refillBuffer_clock; // @[InstrCache.scala 34:28]
  wire  refillBuffer_reset; // @[InstrCache.scala 34:28]
  wire  refillBuffer_io_addr_valid; // @[InstrCache.scala 34:28]
  wire [3:0] refillBuffer_io_addr_bits; // @[InstrCache.scala 34:28]
  wire  refillBuffer_io_inputData_valid; // @[InstrCache.scala 34:28]
  wire [31:0] refillBuffer_io_inputData_bits; // @[InstrCache.scala 34:28]
  wire  refillBuffer_io_finish; // @[InstrCache.scala 34:28]
  wire  refillBuffer_io_queryResult_valid; // @[InstrCache.scala 34:28]
  wire [31:0] refillBuffer_io_queryResult_bits; // @[InstrCache.scala 34:28]
  wire [31:0] refillBuffer_io_allData_0; // @[InstrCache.scala 34:28]
  wire [31:0] refillBuffer_io_allData_1; // @[InstrCache.scala 34:28]
  wire [31:0] refillBuffer_io_allData_2; // @[InstrCache.scala 34:28]
  wire [31:0] refillBuffer_io_allData_3; // @[InstrCache.scala 34:28]
  wire [31:0] refillBuffer_io_allData_4; // @[InstrCache.scala 34:28]
  wire [31:0] refillBuffer_io_allData_5; // @[InstrCache.scala 34:28]
  wire [31:0] refillBuffer_io_allData_6; // @[InstrCache.scala 34:28]
  wire [31:0] refillBuffer_io_allData_7; // @[InstrCache.scala 34:28]
  wire [31:0] refillBuffer_io_allData_8; // @[InstrCache.scala 34:28]
  wire [31:0] refillBuffer_io_allData_9; // @[InstrCache.scala 34:28]
  wire [31:0] refillBuffer_io_allData_10; // @[InstrCache.scala 34:28]
  wire [31:0] refillBuffer_io_allData_11; // @[InstrCache.scala 34:28]
  wire [31:0] refillBuffer_io_allData_12; // @[InstrCache.scala 34:28]
  wire [31:0] refillBuffer_io_allData_13; // @[InstrCache.scala 34:28]
  wire [31:0] refillBuffer_io_allData_14; // @[InstrCache.scala 34:28]
  wire [31:0] refillBuffer_io_allData_15; // @[InstrCache.scala 34:28]
  wire  fetch_query_clock; // @[InstrCache.scala 36:27]
  wire  fetch_query_reset; // @[InstrCache.scala 36:27]
  wire  fetch_query_io_stall; // @[InstrCache.scala 36:27]
  wire [19:0] fetch_query_io_in_tagValid_0_tag; // @[InstrCache.scala 36:27]
  wire  fetch_query_io_in_tagValid_0_valid; // @[InstrCache.scala 36:27]
  wire [19:0] fetch_query_io_in_tagValid_1_tag; // @[InstrCache.scala 36:27]
  wire  fetch_query_io_in_tagValid_1_valid; // @[InstrCache.scala 36:27]
  wire [19:0] fetch_query_io_in_tagValid_2_tag; // @[InstrCache.scala 36:27]
  wire  fetch_query_io_in_tagValid_2_valid; // @[InstrCache.scala 36:27]
  wire [19:0] fetch_query_io_in_tagValid_3_tag; // @[InstrCache.scala 36:27]
  wire  fetch_query_io_in_tagValid_3_valid; // @[InstrCache.scala 36:27]
  wire [19:0] fetch_query_io_in_phyTag; // @[InstrCache.scala 36:27]
  wire [5:0] fetch_query_io_in_index; // @[InstrCache.scala 36:27]
  wire [3:0] fetch_query_io_in_bankIndex; // @[InstrCache.scala 36:27]
  wire  fetch_query_io_in_valid; // @[InstrCache.scala 36:27]
  wire [19:0] fetch_query_io_out_tagValid_0_tag; // @[InstrCache.scala 36:27]
  wire  fetch_query_io_out_tagValid_0_valid; // @[InstrCache.scala 36:27]
  wire [19:0] fetch_query_io_out_tagValid_1_tag; // @[InstrCache.scala 36:27]
  wire  fetch_query_io_out_tagValid_1_valid; // @[InstrCache.scala 36:27]
  wire [19:0] fetch_query_io_out_tagValid_2_tag; // @[InstrCache.scala 36:27]
  wire  fetch_query_io_out_tagValid_2_valid; // @[InstrCache.scala 36:27]
  wire [19:0] fetch_query_io_out_tagValid_3_tag; // @[InstrCache.scala 36:27]
  wire  fetch_query_io_out_tagValid_3_valid; // @[InstrCache.scala 36:27]
  wire [19:0] fetch_query_io_out_phyTag; // @[InstrCache.scala 36:27]
  wire [5:0] fetch_query_io_out_index; // @[InstrCache.scala 36:27]
  wire [3:0] fetch_query_io_out_bankIndex; // @[InstrCache.scala 36:27]
  wire  fetch_query_io_out_valid; // @[InstrCache.scala 36:27]
  wire  instrBanks_clock; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_0_0_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_0_0_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_0_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_0_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_0_1_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_0_1_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_1_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_1_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_0_2_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_0_2_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_2_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_2_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_0_3_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_0_3_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_3_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_3_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_0_4_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_0_4_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_4_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_4_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_0_5_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_0_5_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_5_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_5_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_0_6_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_0_6_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_6_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_6_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_0_7_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_0_7_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_7_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_7_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_0_8_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_0_8_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_8_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_8_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_0_9_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_0_9_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_9_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_9_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_0_10_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_0_10_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_10_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_10_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_0_11_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_0_11_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_11_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_11_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_0_12_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_0_12_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_12_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_12_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_0_13_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_0_13_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_13_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_13_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_0_14_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_0_14_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_14_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_14_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_0_15_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_0_15_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_15_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_0_15_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_1_0_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_1_0_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_0_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_0_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_1_1_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_1_1_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_1_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_1_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_1_2_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_1_2_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_2_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_2_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_1_3_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_1_3_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_3_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_3_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_1_4_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_1_4_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_4_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_4_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_1_5_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_1_5_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_5_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_5_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_1_6_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_1_6_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_6_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_6_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_1_7_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_1_7_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_7_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_7_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_1_8_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_1_8_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_8_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_8_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_1_9_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_1_9_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_9_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_9_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_1_10_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_1_10_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_10_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_10_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_1_11_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_1_11_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_11_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_11_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_1_12_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_1_12_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_12_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_12_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_1_13_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_1_13_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_13_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_13_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_1_14_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_1_14_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_14_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_14_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_1_15_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_1_15_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_15_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_1_15_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_2_0_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_2_0_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_0_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_0_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_2_1_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_2_1_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_1_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_1_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_2_2_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_2_2_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_2_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_2_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_2_3_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_2_3_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_3_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_3_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_2_4_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_2_4_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_4_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_4_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_2_5_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_2_5_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_5_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_5_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_2_6_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_2_6_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_6_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_6_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_2_7_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_2_7_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_7_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_7_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_2_8_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_2_8_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_8_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_8_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_2_9_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_2_9_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_9_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_9_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_2_10_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_2_10_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_10_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_10_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_2_11_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_2_11_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_11_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_11_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_2_12_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_2_12_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_12_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_12_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_2_13_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_2_13_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_13_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_13_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_2_14_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_2_14_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_14_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_14_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_2_15_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_2_15_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_15_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_2_15_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_3_0_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_3_0_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_0_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_0_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_3_1_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_3_1_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_1_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_1_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_3_2_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_3_2_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_2_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_2_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_3_3_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_3_3_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_3_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_3_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_3_4_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_3_4_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_4_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_4_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_3_5_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_3_5_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_5_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_5_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_3_6_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_3_6_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_6_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_6_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_3_7_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_3_7_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_7_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_7_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_3_8_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_3_8_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_8_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_8_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_3_9_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_3_9_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_9_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_9_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_3_10_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_3_10_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_10_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_10_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_3_11_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_3_11_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_11_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_11_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_3_12_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_3_12_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_12_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_12_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_3_13_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_3_13_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_13_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_13_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_3_14_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_3_14_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_14_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_14_readData; // @[InstrCache.scala 37:26]
  wire [5:0] instrBanks_io_way_bank_3_15_addr; // @[InstrCache.scala 37:26]
  wire  instrBanks_io_way_bank_3_15_writeEnable; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_15_writeData; // @[InstrCache.scala 37:26]
  wire [31:0] instrBanks_io_way_bank_3_15_readData; // @[InstrCache.scala 37:26]
  reg  lru_lruReg_0_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_0_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_0_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_0_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_1_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_1_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_1_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_1_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_2_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_2_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_2_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_2_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_3_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_3_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_3_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_3_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_4_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_4_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_4_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_4_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_5_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_5_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_5_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_5_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_6_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_6_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_6_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_6_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_7_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_7_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_7_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_7_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_8_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_8_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_8_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_8_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_9_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_9_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_9_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_9_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_10_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_10_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_10_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_10_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_11_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_11_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_11_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_11_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_12_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_12_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_12_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_12_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_13_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_13_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_13_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_13_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_14_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_14_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_14_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_14_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_15_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_15_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_15_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_15_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_16_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_16_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_16_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_16_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_17_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_17_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_17_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_17_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_18_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_18_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_18_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_18_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_19_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_19_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_19_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_19_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_20_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_20_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_20_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_20_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_21_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_21_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_21_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_21_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_22_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_22_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_22_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_22_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_23_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_23_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_23_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_23_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_24_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_24_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_24_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_24_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_25_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_25_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_25_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_25_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_26_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_26_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_26_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_26_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_27_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_27_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_27_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_27_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_28_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_28_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_28_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_28_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_29_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_29_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_29_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_29_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_30_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_30_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_30_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_30_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_31_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_31_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_31_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_31_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_32_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_32_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_32_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_32_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_33_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_33_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_33_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_33_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_34_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_34_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_34_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_34_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_35_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_35_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_35_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_35_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_36_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_36_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_36_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_36_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_37_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_37_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_37_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_37_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_38_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_38_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_38_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_38_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_39_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_39_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_39_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_39_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_40_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_40_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_40_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_40_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_41_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_41_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_41_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_41_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_42_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_42_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_42_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_42_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_43_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_43_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_43_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_43_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_44_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_44_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_44_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_44_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_45_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_45_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_45_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_45_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_46_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_46_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_46_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_46_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_47_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_47_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_47_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_47_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_48_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_48_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_48_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_48_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_49_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_49_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_49_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_49_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_50_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_50_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_50_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_50_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_51_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_51_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_51_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_51_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_52_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_52_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_52_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_52_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_53_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_53_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_53_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_53_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_54_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_54_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_54_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_54_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_55_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_55_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_55_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_55_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_56_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_56_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_56_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_56_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_57_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_57_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_57_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_57_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_58_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_58_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_58_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_58_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_59_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_59_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_59_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_59_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_60_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_60_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_60_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_60_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_61_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_61_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_61_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_61_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_62_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_62_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_62_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_62_3; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_63_0; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_63_1; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_63_2; // @[PLRUMRUNM.scala 15:23]
  reg  lru_lruReg_63_3; // @[PLRUMRUNM.scala 15:23]
  wire  hitInBank = comparator_io_bankHitWay_valid; // @[InstrCache.scala 43:23 InstrCache.scala 87:13]
  wire  hit = hitInBank & comparator_io_hitInRefillBuffer; // @[InstrCache.scala 86:20]
  wire  _T_720 = ~fetch_query_io_out_valid; // @[InstrCache.scala 89:18]
  wire  passThrough = _T_720 | io_flush; // @[InstrCache.scala 89:44]
  wire  _T_65 = hit | passThrough; // @[InstrCache.scala 50:25]
  wire  _T_66 = ~mshr_io_writeBack; // @[InstrCache.scala 50:44]
  wire  _GEN_5 = 6'h1 == mshr_io_mshrInfo_index ? lru_lruReg_1_1 : lru_lruReg_0_1;
  wire  _GEN_6 = 6'h1 == mshr_io_mshrInfo_index ? lru_lruReg_1_2 : lru_lruReg_0_2;
  wire  _GEN_7 = 6'h1 == mshr_io_mshrInfo_index ? lru_lruReg_1_3 : lru_lruReg_0_3;
  wire  _GEN_9 = 6'h2 == mshr_io_mshrInfo_index ? lru_lruReg_2_1 : _GEN_5;
  wire  _GEN_10 = 6'h2 == mshr_io_mshrInfo_index ? lru_lruReg_2_2 : _GEN_6;
  wire  _GEN_11 = 6'h2 == mshr_io_mshrInfo_index ? lru_lruReg_2_3 : _GEN_7;
  wire  _GEN_13 = 6'h3 == mshr_io_mshrInfo_index ? lru_lruReg_3_1 : _GEN_9;
  wire  _GEN_14 = 6'h3 == mshr_io_mshrInfo_index ? lru_lruReg_3_2 : _GEN_10;
  wire  _GEN_15 = 6'h3 == mshr_io_mshrInfo_index ? lru_lruReg_3_3 : _GEN_11;
  wire  _GEN_17 = 6'h4 == mshr_io_mshrInfo_index ? lru_lruReg_4_1 : _GEN_13;
  wire  _GEN_18 = 6'h4 == mshr_io_mshrInfo_index ? lru_lruReg_4_2 : _GEN_14;
  wire  _GEN_19 = 6'h4 == mshr_io_mshrInfo_index ? lru_lruReg_4_3 : _GEN_15;
  wire  _GEN_21 = 6'h5 == mshr_io_mshrInfo_index ? lru_lruReg_5_1 : _GEN_17;
  wire  _GEN_22 = 6'h5 == mshr_io_mshrInfo_index ? lru_lruReg_5_2 : _GEN_18;
  wire  _GEN_23 = 6'h5 == mshr_io_mshrInfo_index ? lru_lruReg_5_3 : _GEN_19;
  wire  _GEN_25 = 6'h6 == mshr_io_mshrInfo_index ? lru_lruReg_6_1 : _GEN_21;
  wire  _GEN_26 = 6'h6 == mshr_io_mshrInfo_index ? lru_lruReg_6_2 : _GEN_22;
  wire  _GEN_27 = 6'h6 == mshr_io_mshrInfo_index ? lru_lruReg_6_3 : _GEN_23;
  wire  _GEN_29 = 6'h7 == mshr_io_mshrInfo_index ? lru_lruReg_7_1 : _GEN_25;
  wire  _GEN_30 = 6'h7 == mshr_io_mshrInfo_index ? lru_lruReg_7_2 : _GEN_26;
  wire  _GEN_31 = 6'h7 == mshr_io_mshrInfo_index ? lru_lruReg_7_3 : _GEN_27;
  wire  _GEN_33 = 6'h8 == mshr_io_mshrInfo_index ? lru_lruReg_8_1 : _GEN_29;
  wire  _GEN_34 = 6'h8 == mshr_io_mshrInfo_index ? lru_lruReg_8_2 : _GEN_30;
  wire  _GEN_35 = 6'h8 == mshr_io_mshrInfo_index ? lru_lruReg_8_3 : _GEN_31;
  wire  _GEN_37 = 6'h9 == mshr_io_mshrInfo_index ? lru_lruReg_9_1 : _GEN_33;
  wire  _GEN_38 = 6'h9 == mshr_io_mshrInfo_index ? lru_lruReg_9_2 : _GEN_34;
  wire  _GEN_39 = 6'h9 == mshr_io_mshrInfo_index ? lru_lruReg_9_3 : _GEN_35;
  wire  _GEN_41 = 6'ha == mshr_io_mshrInfo_index ? lru_lruReg_10_1 : _GEN_37;
  wire  _GEN_42 = 6'ha == mshr_io_mshrInfo_index ? lru_lruReg_10_2 : _GEN_38;
  wire  _GEN_43 = 6'ha == mshr_io_mshrInfo_index ? lru_lruReg_10_3 : _GEN_39;
  wire  _GEN_45 = 6'hb == mshr_io_mshrInfo_index ? lru_lruReg_11_1 : _GEN_41;
  wire  _GEN_46 = 6'hb == mshr_io_mshrInfo_index ? lru_lruReg_11_2 : _GEN_42;
  wire  _GEN_47 = 6'hb == mshr_io_mshrInfo_index ? lru_lruReg_11_3 : _GEN_43;
  wire  _GEN_49 = 6'hc == mshr_io_mshrInfo_index ? lru_lruReg_12_1 : _GEN_45;
  wire  _GEN_50 = 6'hc == mshr_io_mshrInfo_index ? lru_lruReg_12_2 : _GEN_46;
  wire  _GEN_51 = 6'hc == mshr_io_mshrInfo_index ? lru_lruReg_12_3 : _GEN_47;
  wire  _GEN_53 = 6'hd == mshr_io_mshrInfo_index ? lru_lruReg_13_1 : _GEN_49;
  wire  _GEN_54 = 6'hd == mshr_io_mshrInfo_index ? lru_lruReg_13_2 : _GEN_50;
  wire  _GEN_55 = 6'hd == mshr_io_mshrInfo_index ? lru_lruReg_13_3 : _GEN_51;
  wire  _GEN_57 = 6'he == mshr_io_mshrInfo_index ? lru_lruReg_14_1 : _GEN_53;
  wire  _GEN_58 = 6'he == mshr_io_mshrInfo_index ? lru_lruReg_14_2 : _GEN_54;
  wire  _GEN_59 = 6'he == mshr_io_mshrInfo_index ? lru_lruReg_14_3 : _GEN_55;
  wire  _GEN_61 = 6'hf == mshr_io_mshrInfo_index ? lru_lruReg_15_1 : _GEN_57;
  wire  _GEN_62 = 6'hf == mshr_io_mshrInfo_index ? lru_lruReg_15_2 : _GEN_58;
  wire  _GEN_63 = 6'hf == mshr_io_mshrInfo_index ? lru_lruReg_15_3 : _GEN_59;
  wire  _GEN_65 = 6'h10 == mshr_io_mshrInfo_index ? lru_lruReg_16_1 : _GEN_61;
  wire  _GEN_66 = 6'h10 == mshr_io_mshrInfo_index ? lru_lruReg_16_2 : _GEN_62;
  wire  _GEN_67 = 6'h10 == mshr_io_mshrInfo_index ? lru_lruReg_16_3 : _GEN_63;
  wire  _GEN_69 = 6'h11 == mshr_io_mshrInfo_index ? lru_lruReg_17_1 : _GEN_65;
  wire  _GEN_70 = 6'h11 == mshr_io_mshrInfo_index ? lru_lruReg_17_2 : _GEN_66;
  wire  _GEN_71 = 6'h11 == mshr_io_mshrInfo_index ? lru_lruReg_17_3 : _GEN_67;
  wire  _GEN_73 = 6'h12 == mshr_io_mshrInfo_index ? lru_lruReg_18_1 : _GEN_69;
  wire  _GEN_74 = 6'h12 == mshr_io_mshrInfo_index ? lru_lruReg_18_2 : _GEN_70;
  wire  _GEN_75 = 6'h12 == mshr_io_mshrInfo_index ? lru_lruReg_18_3 : _GEN_71;
  wire  _GEN_77 = 6'h13 == mshr_io_mshrInfo_index ? lru_lruReg_19_1 : _GEN_73;
  wire  _GEN_78 = 6'h13 == mshr_io_mshrInfo_index ? lru_lruReg_19_2 : _GEN_74;
  wire  _GEN_79 = 6'h13 == mshr_io_mshrInfo_index ? lru_lruReg_19_3 : _GEN_75;
  wire  _GEN_81 = 6'h14 == mshr_io_mshrInfo_index ? lru_lruReg_20_1 : _GEN_77;
  wire  _GEN_82 = 6'h14 == mshr_io_mshrInfo_index ? lru_lruReg_20_2 : _GEN_78;
  wire  _GEN_83 = 6'h14 == mshr_io_mshrInfo_index ? lru_lruReg_20_3 : _GEN_79;
  wire  _GEN_85 = 6'h15 == mshr_io_mshrInfo_index ? lru_lruReg_21_1 : _GEN_81;
  wire  _GEN_86 = 6'h15 == mshr_io_mshrInfo_index ? lru_lruReg_21_2 : _GEN_82;
  wire  _GEN_87 = 6'h15 == mshr_io_mshrInfo_index ? lru_lruReg_21_3 : _GEN_83;
  wire  _GEN_89 = 6'h16 == mshr_io_mshrInfo_index ? lru_lruReg_22_1 : _GEN_85;
  wire  _GEN_90 = 6'h16 == mshr_io_mshrInfo_index ? lru_lruReg_22_2 : _GEN_86;
  wire  _GEN_91 = 6'h16 == mshr_io_mshrInfo_index ? lru_lruReg_22_3 : _GEN_87;
  wire  _GEN_93 = 6'h17 == mshr_io_mshrInfo_index ? lru_lruReg_23_1 : _GEN_89;
  wire  _GEN_94 = 6'h17 == mshr_io_mshrInfo_index ? lru_lruReg_23_2 : _GEN_90;
  wire  _GEN_95 = 6'h17 == mshr_io_mshrInfo_index ? lru_lruReg_23_3 : _GEN_91;
  wire  _GEN_97 = 6'h18 == mshr_io_mshrInfo_index ? lru_lruReg_24_1 : _GEN_93;
  wire  _GEN_98 = 6'h18 == mshr_io_mshrInfo_index ? lru_lruReg_24_2 : _GEN_94;
  wire  _GEN_99 = 6'h18 == mshr_io_mshrInfo_index ? lru_lruReg_24_3 : _GEN_95;
  wire  _GEN_101 = 6'h19 == mshr_io_mshrInfo_index ? lru_lruReg_25_1 : _GEN_97;
  wire  _GEN_102 = 6'h19 == mshr_io_mshrInfo_index ? lru_lruReg_25_2 : _GEN_98;
  wire  _GEN_103 = 6'h19 == mshr_io_mshrInfo_index ? lru_lruReg_25_3 : _GEN_99;
  wire  _GEN_105 = 6'h1a == mshr_io_mshrInfo_index ? lru_lruReg_26_1 : _GEN_101;
  wire  _GEN_106 = 6'h1a == mshr_io_mshrInfo_index ? lru_lruReg_26_2 : _GEN_102;
  wire  _GEN_107 = 6'h1a == mshr_io_mshrInfo_index ? lru_lruReg_26_3 : _GEN_103;
  wire  _GEN_109 = 6'h1b == mshr_io_mshrInfo_index ? lru_lruReg_27_1 : _GEN_105;
  wire  _GEN_110 = 6'h1b == mshr_io_mshrInfo_index ? lru_lruReg_27_2 : _GEN_106;
  wire  _GEN_111 = 6'h1b == mshr_io_mshrInfo_index ? lru_lruReg_27_3 : _GEN_107;
  wire  _GEN_113 = 6'h1c == mshr_io_mshrInfo_index ? lru_lruReg_28_1 : _GEN_109;
  wire  _GEN_114 = 6'h1c == mshr_io_mshrInfo_index ? lru_lruReg_28_2 : _GEN_110;
  wire  _GEN_115 = 6'h1c == mshr_io_mshrInfo_index ? lru_lruReg_28_3 : _GEN_111;
  wire  _GEN_117 = 6'h1d == mshr_io_mshrInfo_index ? lru_lruReg_29_1 : _GEN_113;
  wire  _GEN_118 = 6'h1d == mshr_io_mshrInfo_index ? lru_lruReg_29_2 : _GEN_114;
  wire  _GEN_119 = 6'h1d == mshr_io_mshrInfo_index ? lru_lruReg_29_3 : _GEN_115;
  wire  _GEN_121 = 6'h1e == mshr_io_mshrInfo_index ? lru_lruReg_30_1 : _GEN_117;
  wire  _GEN_122 = 6'h1e == mshr_io_mshrInfo_index ? lru_lruReg_30_2 : _GEN_118;
  wire  _GEN_123 = 6'h1e == mshr_io_mshrInfo_index ? lru_lruReg_30_3 : _GEN_119;
  wire  _GEN_125 = 6'h1f == mshr_io_mshrInfo_index ? lru_lruReg_31_1 : _GEN_121;
  wire  _GEN_126 = 6'h1f == mshr_io_mshrInfo_index ? lru_lruReg_31_2 : _GEN_122;
  wire  _GEN_127 = 6'h1f == mshr_io_mshrInfo_index ? lru_lruReg_31_3 : _GEN_123;
  wire  _GEN_129 = 6'h20 == mshr_io_mshrInfo_index ? lru_lruReg_32_1 : _GEN_125;
  wire  _GEN_130 = 6'h20 == mshr_io_mshrInfo_index ? lru_lruReg_32_2 : _GEN_126;
  wire  _GEN_131 = 6'h20 == mshr_io_mshrInfo_index ? lru_lruReg_32_3 : _GEN_127;
  wire  _GEN_133 = 6'h21 == mshr_io_mshrInfo_index ? lru_lruReg_33_1 : _GEN_129;
  wire  _GEN_134 = 6'h21 == mshr_io_mshrInfo_index ? lru_lruReg_33_2 : _GEN_130;
  wire  _GEN_135 = 6'h21 == mshr_io_mshrInfo_index ? lru_lruReg_33_3 : _GEN_131;
  wire  _GEN_137 = 6'h22 == mshr_io_mshrInfo_index ? lru_lruReg_34_1 : _GEN_133;
  wire  _GEN_138 = 6'h22 == mshr_io_mshrInfo_index ? lru_lruReg_34_2 : _GEN_134;
  wire  _GEN_139 = 6'h22 == mshr_io_mshrInfo_index ? lru_lruReg_34_3 : _GEN_135;
  wire  _GEN_141 = 6'h23 == mshr_io_mshrInfo_index ? lru_lruReg_35_1 : _GEN_137;
  wire  _GEN_142 = 6'h23 == mshr_io_mshrInfo_index ? lru_lruReg_35_2 : _GEN_138;
  wire  _GEN_143 = 6'h23 == mshr_io_mshrInfo_index ? lru_lruReg_35_3 : _GEN_139;
  wire  _GEN_145 = 6'h24 == mshr_io_mshrInfo_index ? lru_lruReg_36_1 : _GEN_141;
  wire  _GEN_146 = 6'h24 == mshr_io_mshrInfo_index ? lru_lruReg_36_2 : _GEN_142;
  wire  _GEN_147 = 6'h24 == mshr_io_mshrInfo_index ? lru_lruReg_36_3 : _GEN_143;
  wire  _GEN_149 = 6'h25 == mshr_io_mshrInfo_index ? lru_lruReg_37_1 : _GEN_145;
  wire  _GEN_150 = 6'h25 == mshr_io_mshrInfo_index ? lru_lruReg_37_2 : _GEN_146;
  wire  _GEN_151 = 6'h25 == mshr_io_mshrInfo_index ? lru_lruReg_37_3 : _GEN_147;
  wire  _GEN_153 = 6'h26 == mshr_io_mshrInfo_index ? lru_lruReg_38_1 : _GEN_149;
  wire  _GEN_154 = 6'h26 == mshr_io_mshrInfo_index ? lru_lruReg_38_2 : _GEN_150;
  wire  _GEN_155 = 6'h26 == mshr_io_mshrInfo_index ? lru_lruReg_38_3 : _GEN_151;
  wire  _GEN_157 = 6'h27 == mshr_io_mshrInfo_index ? lru_lruReg_39_1 : _GEN_153;
  wire  _GEN_158 = 6'h27 == mshr_io_mshrInfo_index ? lru_lruReg_39_2 : _GEN_154;
  wire  _GEN_159 = 6'h27 == mshr_io_mshrInfo_index ? lru_lruReg_39_3 : _GEN_155;
  wire  _GEN_161 = 6'h28 == mshr_io_mshrInfo_index ? lru_lruReg_40_1 : _GEN_157;
  wire  _GEN_162 = 6'h28 == mshr_io_mshrInfo_index ? lru_lruReg_40_2 : _GEN_158;
  wire  _GEN_163 = 6'h28 == mshr_io_mshrInfo_index ? lru_lruReg_40_3 : _GEN_159;
  wire  _GEN_165 = 6'h29 == mshr_io_mshrInfo_index ? lru_lruReg_41_1 : _GEN_161;
  wire  _GEN_166 = 6'h29 == mshr_io_mshrInfo_index ? lru_lruReg_41_2 : _GEN_162;
  wire  _GEN_167 = 6'h29 == mshr_io_mshrInfo_index ? lru_lruReg_41_3 : _GEN_163;
  wire  _GEN_169 = 6'h2a == mshr_io_mshrInfo_index ? lru_lruReg_42_1 : _GEN_165;
  wire  _GEN_170 = 6'h2a == mshr_io_mshrInfo_index ? lru_lruReg_42_2 : _GEN_166;
  wire  _GEN_171 = 6'h2a == mshr_io_mshrInfo_index ? lru_lruReg_42_3 : _GEN_167;
  wire  _GEN_173 = 6'h2b == mshr_io_mshrInfo_index ? lru_lruReg_43_1 : _GEN_169;
  wire  _GEN_174 = 6'h2b == mshr_io_mshrInfo_index ? lru_lruReg_43_2 : _GEN_170;
  wire  _GEN_175 = 6'h2b == mshr_io_mshrInfo_index ? lru_lruReg_43_3 : _GEN_171;
  wire  _GEN_177 = 6'h2c == mshr_io_mshrInfo_index ? lru_lruReg_44_1 : _GEN_173;
  wire  _GEN_178 = 6'h2c == mshr_io_mshrInfo_index ? lru_lruReg_44_2 : _GEN_174;
  wire  _GEN_179 = 6'h2c == mshr_io_mshrInfo_index ? lru_lruReg_44_3 : _GEN_175;
  wire  _GEN_181 = 6'h2d == mshr_io_mshrInfo_index ? lru_lruReg_45_1 : _GEN_177;
  wire  _GEN_182 = 6'h2d == mshr_io_mshrInfo_index ? lru_lruReg_45_2 : _GEN_178;
  wire  _GEN_183 = 6'h2d == mshr_io_mshrInfo_index ? lru_lruReg_45_3 : _GEN_179;
  wire  _GEN_185 = 6'h2e == mshr_io_mshrInfo_index ? lru_lruReg_46_1 : _GEN_181;
  wire  _GEN_186 = 6'h2e == mshr_io_mshrInfo_index ? lru_lruReg_46_2 : _GEN_182;
  wire  _GEN_187 = 6'h2e == mshr_io_mshrInfo_index ? lru_lruReg_46_3 : _GEN_183;
  wire  _GEN_189 = 6'h2f == mshr_io_mshrInfo_index ? lru_lruReg_47_1 : _GEN_185;
  wire  _GEN_190 = 6'h2f == mshr_io_mshrInfo_index ? lru_lruReg_47_2 : _GEN_186;
  wire  _GEN_191 = 6'h2f == mshr_io_mshrInfo_index ? lru_lruReg_47_3 : _GEN_187;
  wire  _GEN_193 = 6'h30 == mshr_io_mshrInfo_index ? lru_lruReg_48_1 : _GEN_189;
  wire  _GEN_194 = 6'h30 == mshr_io_mshrInfo_index ? lru_lruReg_48_2 : _GEN_190;
  wire  _GEN_195 = 6'h30 == mshr_io_mshrInfo_index ? lru_lruReg_48_3 : _GEN_191;
  wire  _GEN_197 = 6'h31 == mshr_io_mshrInfo_index ? lru_lruReg_49_1 : _GEN_193;
  wire  _GEN_198 = 6'h31 == mshr_io_mshrInfo_index ? lru_lruReg_49_2 : _GEN_194;
  wire  _GEN_199 = 6'h31 == mshr_io_mshrInfo_index ? lru_lruReg_49_3 : _GEN_195;
  wire  _GEN_201 = 6'h32 == mshr_io_mshrInfo_index ? lru_lruReg_50_1 : _GEN_197;
  wire  _GEN_202 = 6'h32 == mshr_io_mshrInfo_index ? lru_lruReg_50_2 : _GEN_198;
  wire  _GEN_203 = 6'h32 == mshr_io_mshrInfo_index ? lru_lruReg_50_3 : _GEN_199;
  wire  _GEN_205 = 6'h33 == mshr_io_mshrInfo_index ? lru_lruReg_51_1 : _GEN_201;
  wire  _GEN_206 = 6'h33 == mshr_io_mshrInfo_index ? lru_lruReg_51_2 : _GEN_202;
  wire  _GEN_207 = 6'h33 == mshr_io_mshrInfo_index ? lru_lruReg_51_3 : _GEN_203;
  wire  _GEN_209 = 6'h34 == mshr_io_mshrInfo_index ? lru_lruReg_52_1 : _GEN_205;
  wire  _GEN_210 = 6'h34 == mshr_io_mshrInfo_index ? lru_lruReg_52_2 : _GEN_206;
  wire  _GEN_211 = 6'h34 == mshr_io_mshrInfo_index ? lru_lruReg_52_3 : _GEN_207;
  wire  _GEN_213 = 6'h35 == mshr_io_mshrInfo_index ? lru_lruReg_53_1 : _GEN_209;
  wire  _GEN_214 = 6'h35 == mshr_io_mshrInfo_index ? lru_lruReg_53_2 : _GEN_210;
  wire  _GEN_215 = 6'h35 == mshr_io_mshrInfo_index ? lru_lruReg_53_3 : _GEN_211;
  wire  _GEN_217 = 6'h36 == mshr_io_mshrInfo_index ? lru_lruReg_54_1 : _GEN_213;
  wire  _GEN_218 = 6'h36 == mshr_io_mshrInfo_index ? lru_lruReg_54_2 : _GEN_214;
  wire  _GEN_219 = 6'h36 == mshr_io_mshrInfo_index ? lru_lruReg_54_3 : _GEN_215;
  wire  _GEN_221 = 6'h37 == mshr_io_mshrInfo_index ? lru_lruReg_55_1 : _GEN_217;
  wire  _GEN_222 = 6'h37 == mshr_io_mshrInfo_index ? lru_lruReg_55_2 : _GEN_218;
  wire  _GEN_223 = 6'h37 == mshr_io_mshrInfo_index ? lru_lruReg_55_3 : _GEN_219;
  wire  _GEN_225 = 6'h38 == mshr_io_mshrInfo_index ? lru_lruReg_56_1 : _GEN_221;
  wire  _GEN_226 = 6'h38 == mshr_io_mshrInfo_index ? lru_lruReg_56_2 : _GEN_222;
  wire  _GEN_227 = 6'h38 == mshr_io_mshrInfo_index ? lru_lruReg_56_3 : _GEN_223;
  wire  _GEN_229 = 6'h39 == mshr_io_mshrInfo_index ? lru_lruReg_57_1 : _GEN_225;
  wire  _GEN_230 = 6'h39 == mshr_io_mshrInfo_index ? lru_lruReg_57_2 : _GEN_226;
  wire  _GEN_231 = 6'h39 == mshr_io_mshrInfo_index ? lru_lruReg_57_3 : _GEN_227;
  wire  _GEN_233 = 6'h3a == mshr_io_mshrInfo_index ? lru_lruReg_58_1 : _GEN_229;
  wire  _GEN_234 = 6'h3a == mshr_io_mshrInfo_index ? lru_lruReg_58_2 : _GEN_230;
  wire  _GEN_235 = 6'h3a == mshr_io_mshrInfo_index ? lru_lruReg_58_3 : _GEN_231;
  wire  _GEN_237 = 6'h3b == mshr_io_mshrInfo_index ? lru_lruReg_59_1 : _GEN_233;
  wire  _GEN_238 = 6'h3b == mshr_io_mshrInfo_index ? lru_lruReg_59_2 : _GEN_234;
  wire  _GEN_239 = 6'h3b == mshr_io_mshrInfo_index ? lru_lruReg_59_3 : _GEN_235;
  wire  _GEN_241 = 6'h3c == mshr_io_mshrInfo_index ? lru_lruReg_60_1 : _GEN_237;
  wire  _GEN_242 = 6'h3c == mshr_io_mshrInfo_index ? lru_lruReg_60_2 : _GEN_238;
  wire  _GEN_243 = 6'h3c == mshr_io_mshrInfo_index ? lru_lruReg_60_3 : _GEN_239;
  wire  _GEN_245 = 6'h3d == mshr_io_mshrInfo_index ? lru_lruReg_61_1 : _GEN_241;
  wire  _GEN_246 = 6'h3d == mshr_io_mshrInfo_index ? lru_lruReg_61_2 : _GEN_242;
  wire  _GEN_247 = 6'h3d == mshr_io_mshrInfo_index ? lru_lruReg_61_3 : _GEN_243;
  wire  _GEN_249 = 6'h3e == mshr_io_mshrInfo_index ? lru_lruReg_62_1 : _GEN_245;
  wire  _GEN_250 = 6'h3e == mshr_io_mshrInfo_index ? lru_lruReg_62_2 : _GEN_246;
  wire  _GEN_251 = 6'h3e == mshr_io_mshrInfo_index ? lru_lruReg_62_3 : _GEN_247;
  wire  setMRUWire__1 = 6'h3f == mshr_io_mshrInfo_index ? lru_lruReg_63_1 : _GEN_249;
  wire  setMRUWire__2 = 6'h3f == mshr_io_mshrInfo_index ? lru_lruReg_63_2 : _GEN_250;
  wire  setMRUWire__3 = 6'h3f == mshr_io_mshrInfo_index ? lru_lruReg_63_3 : _GEN_251;
  wire  _T_69 = ~setMRUWire__1; // @[PLRUMRUNM.scala 42:43]
  wire  _T_70 = ~setMRUWire__2; // @[PLRUMRUNM.scala 42:43]
  wire  _T_71 = ~setMRUWire__3; // @[PLRUMRUNM.scala 42:43]
  wire [1:0] _T_73 = _T_70 ? 2'h2 : {{1'd0}, _T_69}; // @[PLRUMRUNM.scala 42:32]
  wire [1:0] _T_74 = _T_71 ? 2'h3 : _T_73; // @[PLRUMRUNM.scala 42:32]
  wire  _T_83 = 2'h0 == _T_74; // @[InstrCache.scala 66:34]
  wire [31:0] _GEN_259 = instrBanks_io_way_bank_0_0_readData; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_263 = 4'h1 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_0_1_readData : _GEN_259; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_267 = 4'h2 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_0_2_readData : _GEN_263; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_271 = 4'h3 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_0_3_readData : _GEN_267; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_275 = 4'h4 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_0_4_readData : _GEN_271; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_279 = 4'h5 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_0_5_readData : _GEN_275; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_283 = 4'h6 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_0_6_readData : _GEN_279; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_287 = 4'h7 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_0_7_readData : _GEN_283; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_291 = 4'h8 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_0_8_readData : _GEN_287; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_295 = 4'h9 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_0_9_readData : _GEN_291; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_299 = 4'ha == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_0_10_readData : _GEN_295; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_303 = 4'hb == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_0_11_readData : _GEN_299; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_307 = 4'hc == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_0_12_readData : _GEN_303; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_311 = 4'hd == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_0_13_readData : _GEN_307; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_315 = 4'he == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_0_14_readData : _GEN_311; // @[InstrCache.scala 69:23]
  wire [31:0] instrFetchData_0 = 4'hf == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_0_15_readData : _GEN_315; // @[InstrCache.scala 69:23]
  wire  _T_243 = 2'h1 == _T_74; // @[InstrCache.scala 66:34]
  wire [31:0] _GEN_323 = instrBanks_io_way_bank_1_0_readData; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_327 = 4'h1 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_1_1_readData : _GEN_323; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_331 = 4'h2 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_1_2_readData : _GEN_327; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_335 = 4'h3 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_1_3_readData : _GEN_331; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_339 = 4'h4 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_1_4_readData : _GEN_335; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_343 = 4'h5 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_1_5_readData : _GEN_339; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_347 = 4'h6 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_1_6_readData : _GEN_343; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_351 = 4'h7 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_1_7_readData : _GEN_347; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_355 = 4'h8 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_1_8_readData : _GEN_351; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_359 = 4'h9 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_1_9_readData : _GEN_355; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_363 = 4'ha == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_1_10_readData : _GEN_359; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_367 = 4'hb == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_1_11_readData : _GEN_363; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_371 = 4'hc == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_1_12_readData : _GEN_367; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_375 = 4'hd == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_1_13_readData : _GEN_371; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_379 = 4'he == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_1_14_readData : _GEN_375; // @[InstrCache.scala 69:23]
  wire [31:0] instrFetchData_1 = 4'hf == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_1_15_readData : _GEN_379; // @[InstrCache.scala 69:23]
  wire  _T_403 = 2'h2 == _T_74; // @[InstrCache.scala 66:34]
  wire [31:0] _GEN_387 = instrBanks_io_way_bank_2_0_readData; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_391 = 4'h1 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_2_1_readData : _GEN_387; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_395 = 4'h2 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_2_2_readData : _GEN_391; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_399 = 4'h3 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_2_3_readData : _GEN_395; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_403 = 4'h4 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_2_4_readData : _GEN_399; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_407 = 4'h5 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_2_5_readData : _GEN_403; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_411 = 4'h6 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_2_6_readData : _GEN_407; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_415 = 4'h7 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_2_7_readData : _GEN_411; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_419 = 4'h8 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_2_8_readData : _GEN_415; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_423 = 4'h9 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_2_9_readData : _GEN_419; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_427 = 4'ha == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_2_10_readData : _GEN_423; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_431 = 4'hb == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_2_11_readData : _GEN_427; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_435 = 4'hc == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_2_12_readData : _GEN_431; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_439 = 4'hd == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_2_13_readData : _GEN_435; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_443 = 4'he == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_2_14_readData : _GEN_439; // @[InstrCache.scala 69:23]
  wire [31:0] instrFetchData_2 = 4'hf == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_2_15_readData : _GEN_443; // @[InstrCache.scala 69:23]
  wire  _T_563 = 2'h3 == _T_74; // @[InstrCache.scala 66:34]
  wire [31:0] _GEN_451 = instrBanks_io_way_bank_3_0_readData; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_455 = 4'h1 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_3_1_readData : _GEN_451; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_459 = 4'h2 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_3_2_readData : _GEN_455; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_463 = 4'h3 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_3_3_readData : _GEN_459; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_467 = 4'h4 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_3_4_readData : _GEN_463; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_471 = 4'h5 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_3_5_readData : _GEN_467; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_475 = 4'h6 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_3_6_readData : _GEN_471; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_479 = 4'h7 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_3_7_readData : _GEN_475; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_483 = 4'h8 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_3_8_readData : _GEN_479; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_487 = 4'h9 == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_3_9_readData : _GEN_483; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_491 = 4'ha == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_3_10_readData : _GEN_487; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_495 = 4'hb == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_3_11_readData : _GEN_491; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_499 = 4'hc == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_3_12_readData : _GEN_495; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_503 = 4'hd == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_3_13_readData : _GEN_499; // @[InstrCache.scala 69:23]
  wire [31:0] _GEN_507 = 4'he == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_3_14_readData : _GEN_503; // @[InstrCache.scala 69:23]
  wire [31:0] instrFetchData_3 = 4'hf == fetch_query_io_out_bankIndex ? instrBanks_io_way_bank_3_15_readData : _GEN_507; // @[InstrCache.scala 69:23]
  wire  _T_715 = ~hit; // @[InstrCache.scala 76:27]
  wire  _T_716 = ~passThrough; // @[InstrCache.scala 76:35]
  wire  newMiss = mshr_io_missAddr_ready & mshr_io_missAddr_valid; // @[Decoupled.scala 40:37]
  wire  _T_722 = ~mshr_io_missAddr_ready; // @[InstrCache.scala 95:31]
  wire [29:0] _T_724 = {fetch_query_io_out_phyTag,fetch_query_io_out_index,fetch_query_io_out_bankIndex}; // @[Cat.scala 29:58]
  wire [29:0] _T_726 = {mshr_io_mshrInfo_tag,mshr_io_mshrInfo_index,mshr_io_mshrInfo_bankIndex}; // @[InstrCache.scala 101:22]
  wire [29:0] _T_727 = newMiss ? _T_724 : _T_726; // @[InstrCache.scala 98:29]
  wire  _GEN_516 = 6'h1 == fetch_query_io_out_index ? lru_lruReg_1_0 : lru_lruReg_0_0;
  wire  _GEN_517 = 6'h1 == fetch_query_io_out_index ? lru_lruReg_1_1 : lru_lruReg_0_1;
  wire  _GEN_518 = 6'h1 == fetch_query_io_out_index ? lru_lruReg_1_2 : lru_lruReg_0_2;
  wire  _GEN_519 = 6'h1 == fetch_query_io_out_index ? lru_lruReg_1_3 : lru_lruReg_0_3;
  wire  _GEN_520 = 6'h2 == fetch_query_io_out_index ? lru_lruReg_2_0 : _GEN_516;
  wire  _GEN_521 = 6'h2 == fetch_query_io_out_index ? lru_lruReg_2_1 : _GEN_517;
  wire  _GEN_522 = 6'h2 == fetch_query_io_out_index ? lru_lruReg_2_2 : _GEN_518;
  wire  _GEN_523 = 6'h2 == fetch_query_io_out_index ? lru_lruReg_2_3 : _GEN_519;
  wire  _GEN_524 = 6'h3 == fetch_query_io_out_index ? lru_lruReg_3_0 : _GEN_520;
  wire  _GEN_525 = 6'h3 == fetch_query_io_out_index ? lru_lruReg_3_1 : _GEN_521;
  wire  _GEN_526 = 6'h3 == fetch_query_io_out_index ? lru_lruReg_3_2 : _GEN_522;
  wire  _GEN_527 = 6'h3 == fetch_query_io_out_index ? lru_lruReg_3_3 : _GEN_523;
  wire  _GEN_528 = 6'h4 == fetch_query_io_out_index ? lru_lruReg_4_0 : _GEN_524;
  wire  _GEN_529 = 6'h4 == fetch_query_io_out_index ? lru_lruReg_4_1 : _GEN_525;
  wire  _GEN_530 = 6'h4 == fetch_query_io_out_index ? lru_lruReg_4_2 : _GEN_526;
  wire  _GEN_531 = 6'h4 == fetch_query_io_out_index ? lru_lruReg_4_3 : _GEN_527;
  wire  _GEN_532 = 6'h5 == fetch_query_io_out_index ? lru_lruReg_5_0 : _GEN_528;
  wire  _GEN_533 = 6'h5 == fetch_query_io_out_index ? lru_lruReg_5_1 : _GEN_529;
  wire  _GEN_534 = 6'h5 == fetch_query_io_out_index ? lru_lruReg_5_2 : _GEN_530;
  wire  _GEN_535 = 6'h5 == fetch_query_io_out_index ? lru_lruReg_5_3 : _GEN_531;
  wire  _GEN_536 = 6'h6 == fetch_query_io_out_index ? lru_lruReg_6_0 : _GEN_532;
  wire  _GEN_537 = 6'h6 == fetch_query_io_out_index ? lru_lruReg_6_1 : _GEN_533;
  wire  _GEN_538 = 6'h6 == fetch_query_io_out_index ? lru_lruReg_6_2 : _GEN_534;
  wire  _GEN_539 = 6'h6 == fetch_query_io_out_index ? lru_lruReg_6_3 : _GEN_535;
  wire  _GEN_540 = 6'h7 == fetch_query_io_out_index ? lru_lruReg_7_0 : _GEN_536;
  wire  _GEN_541 = 6'h7 == fetch_query_io_out_index ? lru_lruReg_7_1 : _GEN_537;
  wire  _GEN_542 = 6'h7 == fetch_query_io_out_index ? lru_lruReg_7_2 : _GEN_538;
  wire  _GEN_543 = 6'h7 == fetch_query_io_out_index ? lru_lruReg_7_3 : _GEN_539;
  wire  _GEN_544 = 6'h8 == fetch_query_io_out_index ? lru_lruReg_8_0 : _GEN_540;
  wire  _GEN_545 = 6'h8 == fetch_query_io_out_index ? lru_lruReg_8_1 : _GEN_541;
  wire  _GEN_546 = 6'h8 == fetch_query_io_out_index ? lru_lruReg_8_2 : _GEN_542;
  wire  _GEN_547 = 6'h8 == fetch_query_io_out_index ? lru_lruReg_8_3 : _GEN_543;
  wire  _GEN_548 = 6'h9 == fetch_query_io_out_index ? lru_lruReg_9_0 : _GEN_544;
  wire  _GEN_549 = 6'h9 == fetch_query_io_out_index ? lru_lruReg_9_1 : _GEN_545;
  wire  _GEN_550 = 6'h9 == fetch_query_io_out_index ? lru_lruReg_9_2 : _GEN_546;
  wire  _GEN_551 = 6'h9 == fetch_query_io_out_index ? lru_lruReg_9_3 : _GEN_547;
  wire  _GEN_552 = 6'ha == fetch_query_io_out_index ? lru_lruReg_10_0 : _GEN_548;
  wire  _GEN_553 = 6'ha == fetch_query_io_out_index ? lru_lruReg_10_1 : _GEN_549;
  wire  _GEN_554 = 6'ha == fetch_query_io_out_index ? lru_lruReg_10_2 : _GEN_550;
  wire  _GEN_555 = 6'ha == fetch_query_io_out_index ? lru_lruReg_10_3 : _GEN_551;
  wire  _GEN_556 = 6'hb == fetch_query_io_out_index ? lru_lruReg_11_0 : _GEN_552;
  wire  _GEN_557 = 6'hb == fetch_query_io_out_index ? lru_lruReg_11_1 : _GEN_553;
  wire  _GEN_558 = 6'hb == fetch_query_io_out_index ? lru_lruReg_11_2 : _GEN_554;
  wire  _GEN_559 = 6'hb == fetch_query_io_out_index ? lru_lruReg_11_3 : _GEN_555;
  wire  _GEN_560 = 6'hc == fetch_query_io_out_index ? lru_lruReg_12_0 : _GEN_556;
  wire  _GEN_561 = 6'hc == fetch_query_io_out_index ? lru_lruReg_12_1 : _GEN_557;
  wire  _GEN_562 = 6'hc == fetch_query_io_out_index ? lru_lruReg_12_2 : _GEN_558;
  wire  _GEN_563 = 6'hc == fetch_query_io_out_index ? lru_lruReg_12_3 : _GEN_559;
  wire  _GEN_564 = 6'hd == fetch_query_io_out_index ? lru_lruReg_13_0 : _GEN_560;
  wire  _GEN_565 = 6'hd == fetch_query_io_out_index ? lru_lruReg_13_1 : _GEN_561;
  wire  _GEN_566 = 6'hd == fetch_query_io_out_index ? lru_lruReg_13_2 : _GEN_562;
  wire  _GEN_567 = 6'hd == fetch_query_io_out_index ? lru_lruReg_13_3 : _GEN_563;
  wire  _GEN_568 = 6'he == fetch_query_io_out_index ? lru_lruReg_14_0 : _GEN_564;
  wire  _GEN_569 = 6'he == fetch_query_io_out_index ? lru_lruReg_14_1 : _GEN_565;
  wire  _GEN_570 = 6'he == fetch_query_io_out_index ? lru_lruReg_14_2 : _GEN_566;
  wire  _GEN_571 = 6'he == fetch_query_io_out_index ? lru_lruReg_14_3 : _GEN_567;
  wire  _GEN_572 = 6'hf == fetch_query_io_out_index ? lru_lruReg_15_0 : _GEN_568;
  wire  _GEN_573 = 6'hf == fetch_query_io_out_index ? lru_lruReg_15_1 : _GEN_569;
  wire  _GEN_574 = 6'hf == fetch_query_io_out_index ? lru_lruReg_15_2 : _GEN_570;
  wire  _GEN_575 = 6'hf == fetch_query_io_out_index ? lru_lruReg_15_3 : _GEN_571;
  wire  _GEN_576 = 6'h10 == fetch_query_io_out_index ? lru_lruReg_16_0 : _GEN_572;
  wire  _GEN_577 = 6'h10 == fetch_query_io_out_index ? lru_lruReg_16_1 : _GEN_573;
  wire  _GEN_578 = 6'h10 == fetch_query_io_out_index ? lru_lruReg_16_2 : _GEN_574;
  wire  _GEN_579 = 6'h10 == fetch_query_io_out_index ? lru_lruReg_16_3 : _GEN_575;
  wire  _GEN_580 = 6'h11 == fetch_query_io_out_index ? lru_lruReg_17_0 : _GEN_576;
  wire  _GEN_581 = 6'h11 == fetch_query_io_out_index ? lru_lruReg_17_1 : _GEN_577;
  wire  _GEN_582 = 6'h11 == fetch_query_io_out_index ? lru_lruReg_17_2 : _GEN_578;
  wire  _GEN_583 = 6'h11 == fetch_query_io_out_index ? lru_lruReg_17_3 : _GEN_579;
  wire  _GEN_584 = 6'h12 == fetch_query_io_out_index ? lru_lruReg_18_0 : _GEN_580;
  wire  _GEN_585 = 6'h12 == fetch_query_io_out_index ? lru_lruReg_18_1 : _GEN_581;
  wire  _GEN_586 = 6'h12 == fetch_query_io_out_index ? lru_lruReg_18_2 : _GEN_582;
  wire  _GEN_587 = 6'h12 == fetch_query_io_out_index ? lru_lruReg_18_3 : _GEN_583;
  wire  _GEN_588 = 6'h13 == fetch_query_io_out_index ? lru_lruReg_19_0 : _GEN_584;
  wire  _GEN_589 = 6'h13 == fetch_query_io_out_index ? lru_lruReg_19_1 : _GEN_585;
  wire  _GEN_590 = 6'h13 == fetch_query_io_out_index ? lru_lruReg_19_2 : _GEN_586;
  wire  _GEN_591 = 6'h13 == fetch_query_io_out_index ? lru_lruReg_19_3 : _GEN_587;
  wire  _GEN_592 = 6'h14 == fetch_query_io_out_index ? lru_lruReg_20_0 : _GEN_588;
  wire  _GEN_593 = 6'h14 == fetch_query_io_out_index ? lru_lruReg_20_1 : _GEN_589;
  wire  _GEN_594 = 6'h14 == fetch_query_io_out_index ? lru_lruReg_20_2 : _GEN_590;
  wire  _GEN_595 = 6'h14 == fetch_query_io_out_index ? lru_lruReg_20_3 : _GEN_591;
  wire  _GEN_596 = 6'h15 == fetch_query_io_out_index ? lru_lruReg_21_0 : _GEN_592;
  wire  _GEN_597 = 6'h15 == fetch_query_io_out_index ? lru_lruReg_21_1 : _GEN_593;
  wire  _GEN_598 = 6'h15 == fetch_query_io_out_index ? lru_lruReg_21_2 : _GEN_594;
  wire  _GEN_599 = 6'h15 == fetch_query_io_out_index ? lru_lruReg_21_3 : _GEN_595;
  wire  _GEN_600 = 6'h16 == fetch_query_io_out_index ? lru_lruReg_22_0 : _GEN_596;
  wire  _GEN_601 = 6'h16 == fetch_query_io_out_index ? lru_lruReg_22_1 : _GEN_597;
  wire  _GEN_602 = 6'h16 == fetch_query_io_out_index ? lru_lruReg_22_2 : _GEN_598;
  wire  _GEN_603 = 6'h16 == fetch_query_io_out_index ? lru_lruReg_22_3 : _GEN_599;
  wire  _GEN_604 = 6'h17 == fetch_query_io_out_index ? lru_lruReg_23_0 : _GEN_600;
  wire  _GEN_605 = 6'h17 == fetch_query_io_out_index ? lru_lruReg_23_1 : _GEN_601;
  wire  _GEN_606 = 6'h17 == fetch_query_io_out_index ? lru_lruReg_23_2 : _GEN_602;
  wire  _GEN_607 = 6'h17 == fetch_query_io_out_index ? lru_lruReg_23_3 : _GEN_603;
  wire  _GEN_608 = 6'h18 == fetch_query_io_out_index ? lru_lruReg_24_0 : _GEN_604;
  wire  _GEN_609 = 6'h18 == fetch_query_io_out_index ? lru_lruReg_24_1 : _GEN_605;
  wire  _GEN_610 = 6'h18 == fetch_query_io_out_index ? lru_lruReg_24_2 : _GEN_606;
  wire  _GEN_611 = 6'h18 == fetch_query_io_out_index ? lru_lruReg_24_3 : _GEN_607;
  wire  _GEN_612 = 6'h19 == fetch_query_io_out_index ? lru_lruReg_25_0 : _GEN_608;
  wire  _GEN_613 = 6'h19 == fetch_query_io_out_index ? lru_lruReg_25_1 : _GEN_609;
  wire  _GEN_614 = 6'h19 == fetch_query_io_out_index ? lru_lruReg_25_2 : _GEN_610;
  wire  _GEN_615 = 6'h19 == fetch_query_io_out_index ? lru_lruReg_25_3 : _GEN_611;
  wire  _GEN_616 = 6'h1a == fetch_query_io_out_index ? lru_lruReg_26_0 : _GEN_612;
  wire  _GEN_617 = 6'h1a == fetch_query_io_out_index ? lru_lruReg_26_1 : _GEN_613;
  wire  _GEN_618 = 6'h1a == fetch_query_io_out_index ? lru_lruReg_26_2 : _GEN_614;
  wire  _GEN_619 = 6'h1a == fetch_query_io_out_index ? lru_lruReg_26_3 : _GEN_615;
  wire  _GEN_620 = 6'h1b == fetch_query_io_out_index ? lru_lruReg_27_0 : _GEN_616;
  wire  _GEN_621 = 6'h1b == fetch_query_io_out_index ? lru_lruReg_27_1 : _GEN_617;
  wire  _GEN_622 = 6'h1b == fetch_query_io_out_index ? lru_lruReg_27_2 : _GEN_618;
  wire  _GEN_623 = 6'h1b == fetch_query_io_out_index ? lru_lruReg_27_3 : _GEN_619;
  wire  _GEN_624 = 6'h1c == fetch_query_io_out_index ? lru_lruReg_28_0 : _GEN_620;
  wire  _GEN_625 = 6'h1c == fetch_query_io_out_index ? lru_lruReg_28_1 : _GEN_621;
  wire  _GEN_626 = 6'h1c == fetch_query_io_out_index ? lru_lruReg_28_2 : _GEN_622;
  wire  _GEN_627 = 6'h1c == fetch_query_io_out_index ? lru_lruReg_28_3 : _GEN_623;
  wire  _GEN_628 = 6'h1d == fetch_query_io_out_index ? lru_lruReg_29_0 : _GEN_624;
  wire  _GEN_629 = 6'h1d == fetch_query_io_out_index ? lru_lruReg_29_1 : _GEN_625;
  wire  _GEN_630 = 6'h1d == fetch_query_io_out_index ? lru_lruReg_29_2 : _GEN_626;
  wire  _GEN_631 = 6'h1d == fetch_query_io_out_index ? lru_lruReg_29_3 : _GEN_627;
  wire  _GEN_632 = 6'h1e == fetch_query_io_out_index ? lru_lruReg_30_0 : _GEN_628;
  wire  _GEN_633 = 6'h1e == fetch_query_io_out_index ? lru_lruReg_30_1 : _GEN_629;
  wire  _GEN_634 = 6'h1e == fetch_query_io_out_index ? lru_lruReg_30_2 : _GEN_630;
  wire  _GEN_635 = 6'h1e == fetch_query_io_out_index ? lru_lruReg_30_3 : _GEN_631;
  wire  _GEN_636 = 6'h1f == fetch_query_io_out_index ? lru_lruReg_31_0 : _GEN_632;
  wire  _GEN_637 = 6'h1f == fetch_query_io_out_index ? lru_lruReg_31_1 : _GEN_633;
  wire  _GEN_638 = 6'h1f == fetch_query_io_out_index ? lru_lruReg_31_2 : _GEN_634;
  wire  _GEN_639 = 6'h1f == fetch_query_io_out_index ? lru_lruReg_31_3 : _GEN_635;
  wire  _GEN_640 = 6'h20 == fetch_query_io_out_index ? lru_lruReg_32_0 : _GEN_636;
  wire  _GEN_641 = 6'h20 == fetch_query_io_out_index ? lru_lruReg_32_1 : _GEN_637;
  wire  _GEN_642 = 6'h20 == fetch_query_io_out_index ? lru_lruReg_32_2 : _GEN_638;
  wire  _GEN_643 = 6'h20 == fetch_query_io_out_index ? lru_lruReg_32_3 : _GEN_639;
  wire  _GEN_644 = 6'h21 == fetch_query_io_out_index ? lru_lruReg_33_0 : _GEN_640;
  wire  _GEN_645 = 6'h21 == fetch_query_io_out_index ? lru_lruReg_33_1 : _GEN_641;
  wire  _GEN_646 = 6'h21 == fetch_query_io_out_index ? lru_lruReg_33_2 : _GEN_642;
  wire  _GEN_647 = 6'h21 == fetch_query_io_out_index ? lru_lruReg_33_3 : _GEN_643;
  wire  _GEN_648 = 6'h22 == fetch_query_io_out_index ? lru_lruReg_34_0 : _GEN_644;
  wire  _GEN_649 = 6'h22 == fetch_query_io_out_index ? lru_lruReg_34_1 : _GEN_645;
  wire  _GEN_650 = 6'h22 == fetch_query_io_out_index ? lru_lruReg_34_2 : _GEN_646;
  wire  _GEN_651 = 6'h22 == fetch_query_io_out_index ? lru_lruReg_34_3 : _GEN_647;
  wire  _GEN_652 = 6'h23 == fetch_query_io_out_index ? lru_lruReg_35_0 : _GEN_648;
  wire  _GEN_653 = 6'h23 == fetch_query_io_out_index ? lru_lruReg_35_1 : _GEN_649;
  wire  _GEN_654 = 6'h23 == fetch_query_io_out_index ? lru_lruReg_35_2 : _GEN_650;
  wire  _GEN_655 = 6'h23 == fetch_query_io_out_index ? lru_lruReg_35_3 : _GEN_651;
  wire  _GEN_656 = 6'h24 == fetch_query_io_out_index ? lru_lruReg_36_0 : _GEN_652;
  wire  _GEN_657 = 6'h24 == fetch_query_io_out_index ? lru_lruReg_36_1 : _GEN_653;
  wire  _GEN_658 = 6'h24 == fetch_query_io_out_index ? lru_lruReg_36_2 : _GEN_654;
  wire  _GEN_659 = 6'h24 == fetch_query_io_out_index ? lru_lruReg_36_3 : _GEN_655;
  wire  _GEN_660 = 6'h25 == fetch_query_io_out_index ? lru_lruReg_37_0 : _GEN_656;
  wire  _GEN_661 = 6'h25 == fetch_query_io_out_index ? lru_lruReg_37_1 : _GEN_657;
  wire  _GEN_662 = 6'h25 == fetch_query_io_out_index ? lru_lruReg_37_2 : _GEN_658;
  wire  _GEN_663 = 6'h25 == fetch_query_io_out_index ? lru_lruReg_37_3 : _GEN_659;
  wire  _GEN_664 = 6'h26 == fetch_query_io_out_index ? lru_lruReg_38_0 : _GEN_660;
  wire  _GEN_665 = 6'h26 == fetch_query_io_out_index ? lru_lruReg_38_1 : _GEN_661;
  wire  _GEN_666 = 6'h26 == fetch_query_io_out_index ? lru_lruReg_38_2 : _GEN_662;
  wire  _GEN_667 = 6'h26 == fetch_query_io_out_index ? lru_lruReg_38_3 : _GEN_663;
  wire  _GEN_668 = 6'h27 == fetch_query_io_out_index ? lru_lruReg_39_0 : _GEN_664;
  wire  _GEN_669 = 6'h27 == fetch_query_io_out_index ? lru_lruReg_39_1 : _GEN_665;
  wire  _GEN_670 = 6'h27 == fetch_query_io_out_index ? lru_lruReg_39_2 : _GEN_666;
  wire  _GEN_671 = 6'h27 == fetch_query_io_out_index ? lru_lruReg_39_3 : _GEN_667;
  wire  _GEN_672 = 6'h28 == fetch_query_io_out_index ? lru_lruReg_40_0 : _GEN_668;
  wire  _GEN_673 = 6'h28 == fetch_query_io_out_index ? lru_lruReg_40_1 : _GEN_669;
  wire  _GEN_674 = 6'h28 == fetch_query_io_out_index ? lru_lruReg_40_2 : _GEN_670;
  wire  _GEN_675 = 6'h28 == fetch_query_io_out_index ? lru_lruReg_40_3 : _GEN_671;
  wire  _GEN_676 = 6'h29 == fetch_query_io_out_index ? lru_lruReg_41_0 : _GEN_672;
  wire  _GEN_677 = 6'h29 == fetch_query_io_out_index ? lru_lruReg_41_1 : _GEN_673;
  wire  _GEN_678 = 6'h29 == fetch_query_io_out_index ? lru_lruReg_41_2 : _GEN_674;
  wire  _GEN_679 = 6'h29 == fetch_query_io_out_index ? lru_lruReg_41_3 : _GEN_675;
  wire  _GEN_680 = 6'h2a == fetch_query_io_out_index ? lru_lruReg_42_0 : _GEN_676;
  wire  _GEN_681 = 6'h2a == fetch_query_io_out_index ? lru_lruReg_42_1 : _GEN_677;
  wire  _GEN_682 = 6'h2a == fetch_query_io_out_index ? lru_lruReg_42_2 : _GEN_678;
  wire  _GEN_683 = 6'h2a == fetch_query_io_out_index ? lru_lruReg_42_3 : _GEN_679;
  wire  _GEN_684 = 6'h2b == fetch_query_io_out_index ? lru_lruReg_43_0 : _GEN_680;
  wire  _GEN_685 = 6'h2b == fetch_query_io_out_index ? lru_lruReg_43_1 : _GEN_681;
  wire  _GEN_686 = 6'h2b == fetch_query_io_out_index ? lru_lruReg_43_2 : _GEN_682;
  wire  _GEN_687 = 6'h2b == fetch_query_io_out_index ? lru_lruReg_43_3 : _GEN_683;
  wire  _GEN_688 = 6'h2c == fetch_query_io_out_index ? lru_lruReg_44_0 : _GEN_684;
  wire  _GEN_689 = 6'h2c == fetch_query_io_out_index ? lru_lruReg_44_1 : _GEN_685;
  wire  _GEN_690 = 6'h2c == fetch_query_io_out_index ? lru_lruReg_44_2 : _GEN_686;
  wire  _GEN_691 = 6'h2c == fetch_query_io_out_index ? lru_lruReg_44_3 : _GEN_687;
  wire  _GEN_692 = 6'h2d == fetch_query_io_out_index ? lru_lruReg_45_0 : _GEN_688;
  wire  _GEN_693 = 6'h2d == fetch_query_io_out_index ? lru_lruReg_45_1 : _GEN_689;
  wire  _GEN_694 = 6'h2d == fetch_query_io_out_index ? lru_lruReg_45_2 : _GEN_690;
  wire  _GEN_695 = 6'h2d == fetch_query_io_out_index ? lru_lruReg_45_3 : _GEN_691;
  wire  _GEN_696 = 6'h2e == fetch_query_io_out_index ? lru_lruReg_46_0 : _GEN_692;
  wire  _GEN_697 = 6'h2e == fetch_query_io_out_index ? lru_lruReg_46_1 : _GEN_693;
  wire  _GEN_698 = 6'h2e == fetch_query_io_out_index ? lru_lruReg_46_2 : _GEN_694;
  wire  _GEN_699 = 6'h2e == fetch_query_io_out_index ? lru_lruReg_46_3 : _GEN_695;
  wire  _GEN_700 = 6'h2f == fetch_query_io_out_index ? lru_lruReg_47_0 : _GEN_696;
  wire  _GEN_701 = 6'h2f == fetch_query_io_out_index ? lru_lruReg_47_1 : _GEN_697;
  wire  _GEN_702 = 6'h2f == fetch_query_io_out_index ? lru_lruReg_47_2 : _GEN_698;
  wire  _GEN_703 = 6'h2f == fetch_query_io_out_index ? lru_lruReg_47_3 : _GEN_699;
  wire  _GEN_704 = 6'h30 == fetch_query_io_out_index ? lru_lruReg_48_0 : _GEN_700;
  wire  _GEN_705 = 6'h30 == fetch_query_io_out_index ? lru_lruReg_48_1 : _GEN_701;
  wire  _GEN_706 = 6'h30 == fetch_query_io_out_index ? lru_lruReg_48_2 : _GEN_702;
  wire  _GEN_707 = 6'h30 == fetch_query_io_out_index ? lru_lruReg_48_3 : _GEN_703;
  wire  _GEN_708 = 6'h31 == fetch_query_io_out_index ? lru_lruReg_49_0 : _GEN_704;
  wire  _GEN_709 = 6'h31 == fetch_query_io_out_index ? lru_lruReg_49_1 : _GEN_705;
  wire  _GEN_710 = 6'h31 == fetch_query_io_out_index ? lru_lruReg_49_2 : _GEN_706;
  wire  _GEN_711 = 6'h31 == fetch_query_io_out_index ? lru_lruReg_49_3 : _GEN_707;
  wire  _GEN_712 = 6'h32 == fetch_query_io_out_index ? lru_lruReg_50_0 : _GEN_708;
  wire  _GEN_713 = 6'h32 == fetch_query_io_out_index ? lru_lruReg_50_1 : _GEN_709;
  wire  _GEN_714 = 6'h32 == fetch_query_io_out_index ? lru_lruReg_50_2 : _GEN_710;
  wire  _GEN_715 = 6'h32 == fetch_query_io_out_index ? lru_lruReg_50_3 : _GEN_711;
  wire  _GEN_716 = 6'h33 == fetch_query_io_out_index ? lru_lruReg_51_0 : _GEN_712;
  wire  _GEN_717 = 6'h33 == fetch_query_io_out_index ? lru_lruReg_51_1 : _GEN_713;
  wire  _GEN_718 = 6'h33 == fetch_query_io_out_index ? lru_lruReg_51_2 : _GEN_714;
  wire  _GEN_719 = 6'h33 == fetch_query_io_out_index ? lru_lruReg_51_3 : _GEN_715;
  wire  _GEN_720 = 6'h34 == fetch_query_io_out_index ? lru_lruReg_52_0 : _GEN_716;
  wire  _GEN_721 = 6'h34 == fetch_query_io_out_index ? lru_lruReg_52_1 : _GEN_717;
  wire  _GEN_722 = 6'h34 == fetch_query_io_out_index ? lru_lruReg_52_2 : _GEN_718;
  wire  _GEN_723 = 6'h34 == fetch_query_io_out_index ? lru_lruReg_52_3 : _GEN_719;
  wire  _GEN_724 = 6'h35 == fetch_query_io_out_index ? lru_lruReg_53_0 : _GEN_720;
  wire  _GEN_725 = 6'h35 == fetch_query_io_out_index ? lru_lruReg_53_1 : _GEN_721;
  wire  _GEN_726 = 6'h35 == fetch_query_io_out_index ? lru_lruReg_53_2 : _GEN_722;
  wire  _GEN_727 = 6'h35 == fetch_query_io_out_index ? lru_lruReg_53_3 : _GEN_723;
  wire  _GEN_728 = 6'h36 == fetch_query_io_out_index ? lru_lruReg_54_0 : _GEN_724;
  wire  _GEN_729 = 6'h36 == fetch_query_io_out_index ? lru_lruReg_54_1 : _GEN_725;
  wire  _GEN_730 = 6'h36 == fetch_query_io_out_index ? lru_lruReg_54_2 : _GEN_726;
  wire  _GEN_731 = 6'h36 == fetch_query_io_out_index ? lru_lruReg_54_3 : _GEN_727;
  wire  _GEN_732 = 6'h37 == fetch_query_io_out_index ? lru_lruReg_55_0 : _GEN_728;
  wire  _GEN_733 = 6'h37 == fetch_query_io_out_index ? lru_lruReg_55_1 : _GEN_729;
  wire  _GEN_734 = 6'h37 == fetch_query_io_out_index ? lru_lruReg_55_2 : _GEN_730;
  wire  _GEN_735 = 6'h37 == fetch_query_io_out_index ? lru_lruReg_55_3 : _GEN_731;
  wire  _GEN_736 = 6'h38 == fetch_query_io_out_index ? lru_lruReg_56_0 : _GEN_732;
  wire  _GEN_737 = 6'h38 == fetch_query_io_out_index ? lru_lruReg_56_1 : _GEN_733;
  wire  _GEN_738 = 6'h38 == fetch_query_io_out_index ? lru_lruReg_56_2 : _GEN_734;
  wire  _GEN_739 = 6'h38 == fetch_query_io_out_index ? lru_lruReg_56_3 : _GEN_735;
  wire  _GEN_740 = 6'h39 == fetch_query_io_out_index ? lru_lruReg_57_0 : _GEN_736;
  wire  _GEN_741 = 6'h39 == fetch_query_io_out_index ? lru_lruReg_57_1 : _GEN_737;
  wire  _GEN_742 = 6'h39 == fetch_query_io_out_index ? lru_lruReg_57_2 : _GEN_738;
  wire  _GEN_743 = 6'h39 == fetch_query_io_out_index ? lru_lruReg_57_3 : _GEN_739;
  wire  _GEN_744 = 6'h3a == fetch_query_io_out_index ? lru_lruReg_58_0 : _GEN_740;
  wire  _GEN_745 = 6'h3a == fetch_query_io_out_index ? lru_lruReg_58_1 : _GEN_741;
  wire  _GEN_746 = 6'h3a == fetch_query_io_out_index ? lru_lruReg_58_2 : _GEN_742;
  wire  _GEN_747 = 6'h3a == fetch_query_io_out_index ? lru_lruReg_58_3 : _GEN_743;
  wire  _GEN_748 = 6'h3b == fetch_query_io_out_index ? lru_lruReg_59_0 : _GEN_744;
  wire  _GEN_749 = 6'h3b == fetch_query_io_out_index ? lru_lruReg_59_1 : _GEN_745;
  wire  _GEN_750 = 6'h3b == fetch_query_io_out_index ? lru_lruReg_59_2 : _GEN_746;
  wire  _GEN_751 = 6'h3b == fetch_query_io_out_index ? lru_lruReg_59_3 : _GEN_747;
  wire  _GEN_752 = 6'h3c == fetch_query_io_out_index ? lru_lruReg_60_0 : _GEN_748;
  wire  _GEN_753 = 6'h3c == fetch_query_io_out_index ? lru_lruReg_60_1 : _GEN_749;
  wire  _GEN_754 = 6'h3c == fetch_query_io_out_index ? lru_lruReg_60_2 : _GEN_750;
  wire  _GEN_755 = 6'h3c == fetch_query_io_out_index ? lru_lruReg_60_3 : _GEN_751;
  wire  _GEN_756 = 6'h3d == fetch_query_io_out_index ? lru_lruReg_61_0 : _GEN_752;
  wire  _GEN_757 = 6'h3d == fetch_query_io_out_index ? lru_lruReg_61_1 : _GEN_753;
  wire  _GEN_758 = 6'h3d == fetch_query_io_out_index ? lru_lruReg_61_2 : _GEN_754;
  wire  _GEN_759 = 6'h3d == fetch_query_io_out_index ? lru_lruReg_61_3 : _GEN_755;
  wire  _GEN_760 = 6'h3e == fetch_query_io_out_index ? lru_lruReg_62_0 : _GEN_756;
  wire  _GEN_761 = 6'h3e == fetch_query_io_out_index ? lru_lruReg_62_1 : _GEN_757;
  wire  _GEN_762 = 6'h3e == fetch_query_io_out_index ? lru_lruReg_62_2 : _GEN_758;
  wire  _GEN_763 = 6'h3e == fetch_query_io_out_index ? lru_lruReg_62_3 : _GEN_759;
  wire  _GEN_764 = 6'h3f == fetch_query_io_out_index ? lru_lruReg_63_0 : _GEN_760;
  wire  _GEN_765 = 6'h3f == fetch_query_io_out_index ? lru_lruReg_63_1 : _GEN_761;
  wire  _GEN_766 = 6'h3f == fetch_query_io_out_index ? lru_lruReg_63_2 : _GEN_762;
  wire  _GEN_767 = 6'h3f == fetch_query_io_out_index ? lru_lruReg_63_3 : _GEN_763;
  wire  _GEN_1292 = 2'h0 == comparator_io_bankHitWay_bits; // @[PLRUMRUNM.scala 25:21]
  wire  setMRUWire_65_0 = _GEN_1292 | _GEN_764; // @[PLRUMRUNM.scala 25:21]
  wire  _GEN_1293 = 2'h1 == comparator_io_bankHitWay_bits; // @[PLRUMRUNM.scala 25:21]
  wire  setMRUWire_65_1 = _GEN_1293 | _GEN_765; // @[PLRUMRUNM.scala 25:21]
  wire  _GEN_1294 = 2'h2 == comparator_io_bankHitWay_bits; // @[PLRUMRUNM.scala 25:21]
  wire  setMRUWire_65_2 = _GEN_1294 | _GEN_766; // @[PLRUMRUNM.scala 25:21]
  wire  _GEN_1295 = 2'h3 == comparator_io_bankHitWay_bits; // @[PLRUMRUNM.scala 25:21]
  wire  setMRUWire_65_3 = _GEN_1295 | _GEN_767; // @[PLRUMRUNM.scala 25:21]
  wire [3:0] _T_736 = {setMRUWire_65_3,setMRUWire_65_2,setMRUWire_65_1,setMRUWire_65_0}; // @[PLRUMRUNM.scala 28:37]
  wire  _T_737 = &_T_736; // @[PLRUMRUNM.scala 28:44]
  wire  _T_738_0 = _T_737 ? _GEN_1292 : setMRUWire_65_0; // @[PLRUMRUNM.scala 28:25]
  wire  _T_738_1 = _T_737 ? _GEN_1293 : setMRUWire_65_1; // @[PLRUMRUNM.scala 28:25]
  wire  _T_738_2 = _T_737 ? _GEN_1294 : setMRUWire_65_2; // @[PLRUMRUNM.scala 28:25]
  wire  _T_738_3 = _T_737 ? _GEN_1295 : setMRUWire_65_3; // @[PLRUMRUNM.scala 28:25]
  wire [31:0] _GEN_1289 = 2'h1 == comparator_io_bankHitWay_bits ? instrFetchData_1 : instrFetchData_0; // @[InstrCache.scala 123:22]
  wire [31:0] _GEN_1290 = 2'h2 == comparator_io_bankHitWay_bits ? instrFetchData_2 : _GEN_1289; // @[InstrCache.scala 123:22]
  wire [31:0] _GEN_1291 = 2'h3 == comparator_io_bankHitWay_bits ? instrFetchData_3 : _GEN_1290; // @[InstrCache.scala 123:22]
  FetchTop fetch ( // @[InstrCache.scala 30:21]
    .clock(fetch_clock),
    .reset(fetch_reset),
    .io_addr(fetch_io_addr),
    .io_writeTagValid_valid(fetch_io_writeTagValid_valid),
    .io_writeTagValid_bits_waySelection(fetch_io_writeTagValid_bits_waySelection),
    .io_writeTagValid_bits_tagValid_tag(fetch_io_writeTagValid_bits_tagValid_tag),
    .io_index(fetch_io_index),
    .io_tagValid_0_tag(fetch_io_tagValid_0_tag),
    .io_tagValid_0_valid(fetch_io_tagValid_0_valid),
    .io_tagValid_1_tag(fetch_io_tagValid_1_tag),
    .io_tagValid_1_valid(fetch_io_tagValid_1_valid),
    .io_tagValid_2_tag(fetch_io_tagValid_2_tag),
    .io_tagValid_2_valid(fetch_io_tagValid_2_valid),
    .io_tagValid_3_tag(fetch_io_tagValid_3_tag),
    .io_tagValid_3_valid(fetch_io_tagValid_3_valid),
    .io_phyTag(fetch_io_phyTag),
    .io_bankIndex(fetch_io_bankIndex)
  );
  MSHR mshr ( // @[InstrCache.scala 31:20]
    .clock(mshr_clock),
    .reset(mshr_reset),
    .io_missAddr_ready(mshr_io_missAddr_ready),
    .io_missAddr_valid(mshr_io_missAddr_valid),
    .io_missAddr_bits_tag(mshr_io_missAddr_bits_tag),
    .io_missAddr_bits_index(mshr_io_missAddr_bits_index),
    .io_missAddr_bits_bankIndex(mshr_io_missAddr_bits_bankIndex),
    .io_readyForWB(mshr_io_readyForWB),
    .io_writeBack(mshr_io_writeBack),
    .io_mshrInfo_tag(mshr_io_mshrInfo_tag),
    .io_mshrInfo_index(mshr_io_mshrInfo_index),
    .io_mshrInfo_bankIndex(mshr_io_mshrInfo_bankIndex)
  );
  MissComparator comparator ( // @[InstrCache.scala 32:26]
    .io_tagValid_0_tag(comparator_io_tagValid_0_tag),
    .io_tagValid_0_valid(comparator_io_tagValid_0_valid),
    .io_tagValid_1_tag(comparator_io_tagValid_1_tag),
    .io_tagValid_1_valid(comparator_io_tagValid_1_valid),
    .io_tagValid_2_tag(comparator_io_tagValid_2_tag),
    .io_tagValid_2_valid(comparator_io_tagValid_2_valid),
    .io_tagValid_3_tag(comparator_io_tagValid_3_tag),
    .io_tagValid_3_valid(comparator_io_tagValid_3_valid),
    .io_phyTag(comparator_io_phyTag),
    .io_index(comparator_io_index),
    .io_mshr_valid(comparator_io_mshr_valid),
    .io_mshr_bits_tag(comparator_io_mshr_bits_tag),
    .io_mshr_bits_index(comparator_io_mshr_bits_index),
    .io_refillBufferValid(comparator_io_refillBufferValid),
    .io_bankHitWay_valid(comparator_io_bankHitWay_valid),
    .io_bankHitWay_bits(comparator_io_bankHitWay_bits),
    .io_hitInRefillBuffer(comparator_io_hitInRefillBuffer)
  );
  AXIReadPort axi ( // @[InstrCache.scala 33:19]
    .clock(axi_clock),
    .reset(axi_reset),
    .io_axi_ar_ready(axi_io_axi_ar_ready),
    .io_axi_ar_valid(axi_io_axi_ar_valid),
    .io_axi_ar_bits_addr(axi_io_axi_ar_bits_addr),
    .io_axi_r_ready(axi_io_axi_r_ready),
    .io_axi_r_valid(axi_io_axi_r_valid),
    .io_axi_r_bits_data(axi_io_axi_r_bits_data),
    .io_axi_r_bits_last(axi_io_axi_r_bits_last),
    .io_addrReq_valid(axi_io_addrReq_valid),
    .io_addrReq_bits(axi_io_addrReq_bits),
    .io_transferData_valid(axi_io_transferData_valid),
    .io_transferData_bits(axi_io_transferData_bits),
    .io_finishTransfer(axi_io_finishTransfer)
  );
  ReFillBuffer refillBuffer ( // @[InstrCache.scala 34:28]
    .clock(refillBuffer_clock),
    .reset(refillBuffer_reset),
    .io_addr_valid(refillBuffer_io_addr_valid),
    .io_addr_bits(refillBuffer_io_addr_bits),
    .io_inputData_valid(refillBuffer_io_inputData_valid),
    .io_inputData_bits(refillBuffer_io_inputData_bits),
    .io_finish(refillBuffer_io_finish),
    .io_queryResult_valid(refillBuffer_io_queryResult_valid),
    .io_queryResult_bits(refillBuffer_io_queryResult_bits),
    .io_allData_0(refillBuffer_io_allData_0),
    .io_allData_1(refillBuffer_io_allData_1),
    .io_allData_2(refillBuffer_io_allData_2),
    .io_allData_3(refillBuffer_io_allData_3),
    .io_allData_4(refillBuffer_io_allData_4),
    .io_allData_5(refillBuffer_io_allData_5),
    .io_allData_6(refillBuffer_io_allData_6),
    .io_allData_7(refillBuffer_io_allData_7),
    .io_allData_8(refillBuffer_io_allData_8),
    .io_allData_9(refillBuffer_io_allData_9),
    .io_allData_10(refillBuffer_io_allData_10),
    .io_allData_11(refillBuffer_io_allData_11),
    .io_allData_12(refillBuffer_io_allData_12),
    .io_allData_13(refillBuffer_io_allData_13),
    .io_allData_14(refillBuffer_io_allData_14),
    .io_allData_15(refillBuffer_io_allData_15)
  );
  CachePipelineStage fetch_query ( // @[InstrCache.scala 36:27]
    .clock(fetch_query_clock),
    .reset(fetch_query_reset),
    .io_stall(fetch_query_io_stall),
    .io_in_tagValid_0_tag(fetch_query_io_in_tagValid_0_tag),
    .io_in_tagValid_0_valid(fetch_query_io_in_tagValid_0_valid),
    .io_in_tagValid_1_tag(fetch_query_io_in_tagValid_1_tag),
    .io_in_tagValid_1_valid(fetch_query_io_in_tagValid_1_valid),
    .io_in_tagValid_2_tag(fetch_query_io_in_tagValid_2_tag),
    .io_in_tagValid_2_valid(fetch_query_io_in_tagValid_2_valid),
    .io_in_tagValid_3_tag(fetch_query_io_in_tagValid_3_tag),
    .io_in_tagValid_3_valid(fetch_query_io_in_tagValid_3_valid),
    .io_in_phyTag(fetch_query_io_in_phyTag),
    .io_in_index(fetch_query_io_in_index),
    .io_in_bankIndex(fetch_query_io_in_bankIndex),
    .io_in_valid(fetch_query_io_in_valid),
    .io_out_tagValid_0_tag(fetch_query_io_out_tagValid_0_tag),
    .io_out_tagValid_0_valid(fetch_query_io_out_tagValid_0_valid),
    .io_out_tagValid_1_tag(fetch_query_io_out_tagValid_1_tag),
    .io_out_tagValid_1_valid(fetch_query_io_out_tagValid_1_valid),
    .io_out_tagValid_2_tag(fetch_query_io_out_tagValid_2_tag),
    .io_out_tagValid_2_valid(fetch_query_io_out_tagValid_2_valid),
    .io_out_tagValid_3_tag(fetch_query_io_out_tagValid_3_tag),
    .io_out_tagValid_3_valid(fetch_query_io_out_tagValid_3_valid),
    .io_out_phyTag(fetch_query_io_out_phyTag),
    .io_out_index(fetch_query_io_out_index),
    .io_out_bankIndex(fetch_query_io_out_bankIndex),
    .io_out_valid(fetch_query_io_out_valid)
  );
  InstBanks instrBanks ( // @[InstrCache.scala 37:26]
    .clock(instrBanks_clock),
    .io_way_bank_0_0_addr(instrBanks_io_way_bank_0_0_addr),
    .io_way_bank_0_0_writeEnable(instrBanks_io_way_bank_0_0_writeEnable),
    .io_way_bank_0_0_writeData(instrBanks_io_way_bank_0_0_writeData),
    .io_way_bank_0_0_readData(instrBanks_io_way_bank_0_0_readData),
    .io_way_bank_0_1_addr(instrBanks_io_way_bank_0_1_addr),
    .io_way_bank_0_1_writeEnable(instrBanks_io_way_bank_0_1_writeEnable),
    .io_way_bank_0_1_writeData(instrBanks_io_way_bank_0_1_writeData),
    .io_way_bank_0_1_readData(instrBanks_io_way_bank_0_1_readData),
    .io_way_bank_0_2_addr(instrBanks_io_way_bank_0_2_addr),
    .io_way_bank_0_2_writeEnable(instrBanks_io_way_bank_0_2_writeEnable),
    .io_way_bank_0_2_writeData(instrBanks_io_way_bank_0_2_writeData),
    .io_way_bank_0_2_readData(instrBanks_io_way_bank_0_2_readData),
    .io_way_bank_0_3_addr(instrBanks_io_way_bank_0_3_addr),
    .io_way_bank_0_3_writeEnable(instrBanks_io_way_bank_0_3_writeEnable),
    .io_way_bank_0_3_writeData(instrBanks_io_way_bank_0_3_writeData),
    .io_way_bank_0_3_readData(instrBanks_io_way_bank_0_3_readData),
    .io_way_bank_0_4_addr(instrBanks_io_way_bank_0_4_addr),
    .io_way_bank_0_4_writeEnable(instrBanks_io_way_bank_0_4_writeEnable),
    .io_way_bank_0_4_writeData(instrBanks_io_way_bank_0_4_writeData),
    .io_way_bank_0_4_readData(instrBanks_io_way_bank_0_4_readData),
    .io_way_bank_0_5_addr(instrBanks_io_way_bank_0_5_addr),
    .io_way_bank_0_5_writeEnable(instrBanks_io_way_bank_0_5_writeEnable),
    .io_way_bank_0_5_writeData(instrBanks_io_way_bank_0_5_writeData),
    .io_way_bank_0_5_readData(instrBanks_io_way_bank_0_5_readData),
    .io_way_bank_0_6_addr(instrBanks_io_way_bank_0_6_addr),
    .io_way_bank_0_6_writeEnable(instrBanks_io_way_bank_0_6_writeEnable),
    .io_way_bank_0_6_writeData(instrBanks_io_way_bank_0_6_writeData),
    .io_way_bank_0_6_readData(instrBanks_io_way_bank_0_6_readData),
    .io_way_bank_0_7_addr(instrBanks_io_way_bank_0_7_addr),
    .io_way_bank_0_7_writeEnable(instrBanks_io_way_bank_0_7_writeEnable),
    .io_way_bank_0_7_writeData(instrBanks_io_way_bank_0_7_writeData),
    .io_way_bank_0_7_readData(instrBanks_io_way_bank_0_7_readData),
    .io_way_bank_0_8_addr(instrBanks_io_way_bank_0_8_addr),
    .io_way_bank_0_8_writeEnable(instrBanks_io_way_bank_0_8_writeEnable),
    .io_way_bank_0_8_writeData(instrBanks_io_way_bank_0_8_writeData),
    .io_way_bank_0_8_readData(instrBanks_io_way_bank_0_8_readData),
    .io_way_bank_0_9_addr(instrBanks_io_way_bank_0_9_addr),
    .io_way_bank_0_9_writeEnable(instrBanks_io_way_bank_0_9_writeEnable),
    .io_way_bank_0_9_writeData(instrBanks_io_way_bank_0_9_writeData),
    .io_way_bank_0_9_readData(instrBanks_io_way_bank_0_9_readData),
    .io_way_bank_0_10_addr(instrBanks_io_way_bank_0_10_addr),
    .io_way_bank_0_10_writeEnable(instrBanks_io_way_bank_0_10_writeEnable),
    .io_way_bank_0_10_writeData(instrBanks_io_way_bank_0_10_writeData),
    .io_way_bank_0_10_readData(instrBanks_io_way_bank_0_10_readData),
    .io_way_bank_0_11_addr(instrBanks_io_way_bank_0_11_addr),
    .io_way_bank_0_11_writeEnable(instrBanks_io_way_bank_0_11_writeEnable),
    .io_way_bank_0_11_writeData(instrBanks_io_way_bank_0_11_writeData),
    .io_way_bank_0_11_readData(instrBanks_io_way_bank_0_11_readData),
    .io_way_bank_0_12_addr(instrBanks_io_way_bank_0_12_addr),
    .io_way_bank_0_12_writeEnable(instrBanks_io_way_bank_0_12_writeEnable),
    .io_way_bank_0_12_writeData(instrBanks_io_way_bank_0_12_writeData),
    .io_way_bank_0_12_readData(instrBanks_io_way_bank_0_12_readData),
    .io_way_bank_0_13_addr(instrBanks_io_way_bank_0_13_addr),
    .io_way_bank_0_13_writeEnable(instrBanks_io_way_bank_0_13_writeEnable),
    .io_way_bank_0_13_writeData(instrBanks_io_way_bank_0_13_writeData),
    .io_way_bank_0_13_readData(instrBanks_io_way_bank_0_13_readData),
    .io_way_bank_0_14_addr(instrBanks_io_way_bank_0_14_addr),
    .io_way_bank_0_14_writeEnable(instrBanks_io_way_bank_0_14_writeEnable),
    .io_way_bank_0_14_writeData(instrBanks_io_way_bank_0_14_writeData),
    .io_way_bank_0_14_readData(instrBanks_io_way_bank_0_14_readData),
    .io_way_bank_0_15_addr(instrBanks_io_way_bank_0_15_addr),
    .io_way_bank_0_15_writeEnable(instrBanks_io_way_bank_0_15_writeEnable),
    .io_way_bank_0_15_writeData(instrBanks_io_way_bank_0_15_writeData),
    .io_way_bank_0_15_readData(instrBanks_io_way_bank_0_15_readData),
    .io_way_bank_1_0_addr(instrBanks_io_way_bank_1_0_addr),
    .io_way_bank_1_0_writeEnable(instrBanks_io_way_bank_1_0_writeEnable),
    .io_way_bank_1_0_writeData(instrBanks_io_way_bank_1_0_writeData),
    .io_way_bank_1_0_readData(instrBanks_io_way_bank_1_0_readData),
    .io_way_bank_1_1_addr(instrBanks_io_way_bank_1_1_addr),
    .io_way_bank_1_1_writeEnable(instrBanks_io_way_bank_1_1_writeEnable),
    .io_way_bank_1_1_writeData(instrBanks_io_way_bank_1_1_writeData),
    .io_way_bank_1_1_readData(instrBanks_io_way_bank_1_1_readData),
    .io_way_bank_1_2_addr(instrBanks_io_way_bank_1_2_addr),
    .io_way_bank_1_2_writeEnable(instrBanks_io_way_bank_1_2_writeEnable),
    .io_way_bank_1_2_writeData(instrBanks_io_way_bank_1_2_writeData),
    .io_way_bank_1_2_readData(instrBanks_io_way_bank_1_2_readData),
    .io_way_bank_1_3_addr(instrBanks_io_way_bank_1_3_addr),
    .io_way_bank_1_3_writeEnable(instrBanks_io_way_bank_1_3_writeEnable),
    .io_way_bank_1_3_writeData(instrBanks_io_way_bank_1_3_writeData),
    .io_way_bank_1_3_readData(instrBanks_io_way_bank_1_3_readData),
    .io_way_bank_1_4_addr(instrBanks_io_way_bank_1_4_addr),
    .io_way_bank_1_4_writeEnable(instrBanks_io_way_bank_1_4_writeEnable),
    .io_way_bank_1_4_writeData(instrBanks_io_way_bank_1_4_writeData),
    .io_way_bank_1_4_readData(instrBanks_io_way_bank_1_4_readData),
    .io_way_bank_1_5_addr(instrBanks_io_way_bank_1_5_addr),
    .io_way_bank_1_5_writeEnable(instrBanks_io_way_bank_1_5_writeEnable),
    .io_way_bank_1_5_writeData(instrBanks_io_way_bank_1_5_writeData),
    .io_way_bank_1_5_readData(instrBanks_io_way_bank_1_5_readData),
    .io_way_bank_1_6_addr(instrBanks_io_way_bank_1_6_addr),
    .io_way_bank_1_6_writeEnable(instrBanks_io_way_bank_1_6_writeEnable),
    .io_way_bank_1_6_writeData(instrBanks_io_way_bank_1_6_writeData),
    .io_way_bank_1_6_readData(instrBanks_io_way_bank_1_6_readData),
    .io_way_bank_1_7_addr(instrBanks_io_way_bank_1_7_addr),
    .io_way_bank_1_7_writeEnable(instrBanks_io_way_bank_1_7_writeEnable),
    .io_way_bank_1_7_writeData(instrBanks_io_way_bank_1_7_writeData),
    .io_way_bank_1_7_readData(instrBanks_io_way_bank_1_7_readData),
    .io_way_bank_1_8_addr(instrBanks_io_way_bank_1_8_addr),
    .io_way_bank_1_8_writeEnable(instrBanks_io_way_bank_1_8_writeEnable),
    .io_way_bank_1_8_writeData(instrBanks_io_way_bank_1_8_writeData),
    .io_way_bank_1_8_readData(instrBanks_io_way_bank_1_8_readData),
    .io_way_bank_1_9_addr(instrBanks_io_way_bank_1_9_addr),
    .io_way_bank_1_9_writeEnable(instrBanks_io_way_bank_1_9_writeEnable),
    .io_way_bank_1_9_writeData(instrBanks_io_way_bank_1_9_writeData),
    .io_way_bank_1_9_readData(instrBanks_io_way_bank_1_9_readData),
    .io_way_bank_1_10_addr(instrBanks_io_way_bank_1_10_addr),
    .io_way_bank_1_10_writeEnable(instrBanks_io_way_bank_1_10_writeEnable),
    .io_way_bank_1_10_writeData(instrBanks_io_way_bank_1_10_writeData),
    .io_way_bank_1_10_readData(instrBanks_io_way_bank_1_10_readData),
    .io_way_bank_1_11_addr(instrBanks_io_way_bank_1_11_addr),
    .io_way_bank_1_11_writeEnable(instrBanks_io_way_bank_1_11_writeEnable),
    .io_way_bank_1_11_writeData(instrBanks_io_way_bank_1_11_writeData),
    .io_way_bank_1_11_readData(instrBanks_io_way_bank_1_11_readData),
    .io_way_bank_1_12_addr(instrBanks_io_way_bank_1_12_addr),
    .io_way_bank_1_12_writeEnable(instrBanks_io_way_bank_1_12_writeEnable),
    .io_way_bank_1_12_writeData(instrBanks_io_way_bank_1_12_writeData),
    .io_way_bank_1_12_readData(instrBanks_io_way_bank_1_12_readData),
    .io_way_bank_1_13_addr(instrBanks_io_way_bank_1_13_addr),
    .io_way_bank_1_13_writeEnable(instrBanks_io_way_bank_1_13_writeEnable),
    .io_way_bank_1_13_writeData(instrBanks_io_way_bank_1_13_writeData),
    .io_way_bank_1_13_readData(instrBanks_io_way_bank_1_13_readData),
    .io_way_bank_1_14_addr(instrBanks_io_way_bank_1_14_addr),
    .io_way_bank_1_14_writeEnable(instrBanks_io_way_bank_1_14_writeEnable),
    .io_way_bank_1_14_writeData(instrBanks_io_way_bank_1_14_writeData),
    .io_way_bank_1_14_readData(instrBanks_io_way_bank_1_14_readData),
    .io_way_bank_1_15_addr(instrBanks_io_way_bank_1_15_addr),
    .io_way_bank_1_15_writeEnable(instrBanks_io_way_bank_1_15_writeEnable),
    .io_way_bank_1_15_writeData(instrBanks_io_way_bank_1_15_writeData),
    .io_way_bank_1_15_readData(instrBanks_io_way_bank_1_15_readData),
    .io_way_bank_2_0_addr(instrBanks_io_way_bank_2_0_addr),
    .io_way_bank_2_0_writeEnable(instrBanks_io_way_bank_2_0_writeEnable),
    .io_way_bank_2_0_writeData(instrBanks_io_way_bank_2_0_writeData),
    .io_way_bank_2_0_readData(instrBanks_io_way_bank_2_0_readData),
    .io_way_bank_2_1_addr(instrBanks_io_way_bank_2_1_addr),
    .io_way_bank_2_1_writeEnable(instrBanks_io_way_bank_2_1_writeEnable),
    .io_way_bank_2_1_writeData(instrBanks_io_way_bank_2_1_writeData),
    .io_way_bank_2_1_readData(instrBanks_io_way_bank_2_1_readData),
    .io_way_bank_2_2_addr(instrBanks_io_way_bank_2_2_addr),
    .io_way_bank_2_2_writeEnable(instrBanks_io_way_bank_2_2_writeEnable),
    .io_way_bank_2_2_writeData(instrBanks_io_way_bank_2_2_writeData),
    .io_way_bank_2_2_readData(instrBanks_io_way_bank_2_2_readData),
    .io_way_bank_2_3_addr(instrBanks_io_way_bank_2_3_addr),
    .io_way_bank_2_3_writeEnable(instrBanks_io_way_bank_2_3_writeEnable),
    .io_way_bank_2_3_writeData(instrBanks_io_way_bank_2_3_writeData),
    .io_way_bank_2_3_readData(instrBanks_io_way_bank_2_3_readData),
    .io_way_bank_2_4_addr(instrBanks_io_way_bank_2_4_addr),
    .io_way_bank_2_4_writeEnable(instrBanks_io_way_bank_2_4_writeEnable),
    .io_way_bank_2_4_writeData(instrBanks_io_way_bank_2_4_writeData),
    .io_way_bank_2_4_readData(instrBanks_io_way_bank_2_4_readData),
    .io_way_bank_2_5_addr(instrBanks_io_way_bank_2_5_addr),
    .io_way_bank_2_5_writeEnable(instrBanks_io_way_bank_2_5_writeEnable),
    .io_way_bank_2_5_writeData(instrBanks_io_way_bank_2_5_writeData),
    .io_way_bank_2_5_readData(instrBanks_io_way_bank_2_5_readData),
    .io_way_bank_2_6_addr(instrBanks_io_way_bank_2_6_addr),
    .io_way_bank_2_6_writeEnable(instrBanks_io_way_bank_2_6_writeEnable),
    .io_way_bank_2_6_writeData(instrBanks_io_way_bank_2_6_writeData),
    .io_way_bank_2_6_readData(instrBanks_io_way_bank_2_6_readData),
    .io_way_bank_2_7_addr(instrBanks_io_way_bank_2_7_addr),
    .io_way_bank_2_7_writeEnable(instrBanks_io_way_bank_2_7_writeEnable),
    .io_way_bank_2_7_writeData(instrBanks_io_way_bank_2_7_writeData),
    .io_way_bank_2_7_readData(instrBanks_io_way_bank_2_7_readData),
    .io_way_bank_2_8_addr(instrBanks_io_way_bank_2_8_addr),
    .io_way_bank_2_8_writeEnable(instrBanks_io_way_bank_2_8_writeEnable),
    .io_way_bank_2_8_writeData(instrBanks_io_way_bank_2_8_writeData),
    .io_way_bank_2_8_readData(instrBanks_io_way_bank_2_8_readData),
    .io_way_bank_2_9_addr(instrBanks_io_way_bank_2_9_addr),
    .io_way_bank_2_9_writeEnable(instrBanks_io_way_bank_2_9_writeEnable),
    .io_way_bank_2_9_writeData(instrBanks_io_way_bank_2_9_writeData),
    .io_way_bank_2_9_readData(instrBanks_io_way_bank_2_9_readData),
    .io_way_bank_2_10_addr(instrBanks_io_way_bank_2_10_addr),
    .io_way_bank_2_10_writeEnable(instrBanks_io_way_bank_2_10_writeEnable),
    .io_way_bank_2_10_writeData(instrBanks_io_way_bank_2_10_writeData),
    .io_way_bank_2_10_readData(instrBanks_io_way_bank_2_10_readData),
    .io_way_bank_2_11_addr(instrBanks_io_way_bank_2_11_addr),
    .io_way_bank_2_11_writeEnable(instrBanks_io_way_bank_2_11_writeEnable),
    .io_way_bank_2_11_writeData(instrBanks_io_way_bank_2_11_writeData),
    .io_way_bank_2_11_readData(instrBanks_io_way_bank_2_11_readData),
    .io_way_bank_2_12_addr(instrBanks_io_way_bank_2_12_addr),
    .io_way_bank_2_12_writeEnable(instrBanks_io_way_bank_2_12_writeEnable),
    .io_way_bank_2_12_writeData(instrBanks_io_way_bank_2_12_writeData),
    .io_way_bank_2_12_readData(instrBanks_io_way_bank_2_12_readData),
    .io_way_bank_2_13_addr(instrBanks_io_way_bank_2_13_addr),
    .io_way_bank_2_13_writeEnable(instrBanks_io_way_bank_2_13_writeEnable),
    .io_way_bank_2_13_writeData(instrBanks_io_way_bank_2_13_writeData),
    .io_way_bank_2_13_readData(instrBanks_io_way_bank_2_13_readData),
    .io_way_bank_2_14_addr(instrBanks_io_way_bank_2_14_addr),
    .io_way_bank_2_14_writeEnable(instrBanks_io_way_bank_2_14_writeEnable),
    .io_way_bank_2_14_writeData(instrBanks_io_way_bank_2_14_writeData),
    .io_way_bank_2_14_readData(instrBanks_io_way_bank_2_14_readData),
    .io_way_bank_2_15_addr(instrBanks_io_way_bank_2_15_addr),
    .io_way_bank_2_15_writeEnable(instrBanks_io_way_bank_2_15_writeEnable),
    .io_way_bank_2_15_writeData(instrBanks_io_way_bank_2_15_writeData),
    .io_way_bank_2_15_readData(instrBanks_io_way_bank_2_15_readData),
    .io_way_bank_3_0_addr(instrBanks_io_way_bank_3_0_addr),
    .io_way_bank_3_0_writeEnable(instrBanks_io_way_bank_3_0_writeEnable),
    .io_way_bank_3_0_writeData(instrBanks_io_way_bank_3_0_writeData),
    .io_way_bank_3_0_readData(instrBanks_io_way_bank_3_0_readData),
    .io_way_bank_3_1_addr(instrBanks_io_way_bank_3_1_addr),
    .io_way_bank_3_1_writeEnable(instrBanks_io_way_bank_3_1_writeEnable),
    .io_way_bank_3_1_writeData(instrBanks_io_way_bank_3_1_writeData),
    .io_way_bank_3_1_readData(instrBanks_io_way_bank_3_1_readData),
    .io_way_bank_3_2_addr(instrBanks_io_way_bank_3_2_addr),
    .io_way_bank_3_2_writeEnable(instrBanks_io_way_bank_3_2_writeEnable),
    .io_way_bank_3_2_writeData(instrBanks_io_way_bank_3_2_writeData),
    .io_way_bank_3_2_readData(instrBanks_io_way_bank_3_2_readData),
    .io_way_bank_3_3_addr(instrBanks_io_way_bank_3_3_addr),
    .io_way_bank_3_3_writeEnable(instrBanks_io_way_bank_3_3_writeEnable),
    .io_way_bank_3_3_writeData(instrBanks_io_way_bank_3_3_writeData),
    .io_way_bank_3_3_readData(instrBanks_io_way_bank_3_3_readData),
    .io_way_bank_3_4_addr(instrBanks_io_way_bank_3_4_addr),
    .io_way_bank_3_4_writeEnable(instrBanks_io_way_bank_3_4_writeEnable),
    .io_way_bank_3_4_writeData(instrBanks_io_way_bank_3_4_writeData),
    .io_way_bank_3_4_readData(instrBanks_io_way_bank_3_4_readData),
    .io_way_bank_3_5_addr(instrBanks_io_way_bank_3_5_addr),
    .io_way_bank_3_5_writeEnable(instrBanks_io_way_bank_3_5_writeEnable),
    .io_way_bank_3_5_writeData(instrBanks_io_way_bank_3_5_writeData),
    .io_way_bank_3_5_readData(instrBanks_io_way_bank_3_5_readData),
    .io_way_bank_3_6_addr(instrBanks_io_way_bank_3_6_addr),
    .io_way_bank_3_6_writeEnable(instrBanks_io_way_bank_3_6_writeEnable),
    .io_way_bank_3_6_writeData(instrBanks_io_way_bank_3_6_writeData),
    .io_way_bank_3_6_readData(instrBanks_io_way_bank_3_6_readData),
    .io_way_bank_3_7_addr(instrBanks_io_way_bank_3_7_addr),
    .io_way_bank_3_7_writeEnable(instrBanks_io_way_bank_3_7_writeEnable),
    .io_way_bank_3_7_writeData(instrBanks_io_way_bank_3_7_writeData),
    .io_way_bank_3_7_readData(instrBanks_io_way_bank_3_7_readData),
    .io_way_bank_3_8_addr(instrBanks_io_way_bank_3_8_addr),
    .io_way_bank_3_8_writeEnable(instrBanks_io_way_bank_3_8_writeEnable),
    .io_way_bank_3_8_writeData(instrBanks_io_way_bank_3_8_writeData),
    .io_way_bank_3_8_readData(instrBanks_io_way_bank_3_8_readData),
    .io_way_bank_3_9_addr(instrBanks_io_way_bank_3_9_addr),
    .io_way_bank_3_9_writeEnable(instrBanks_io_way_bank_3_9_writeEnable),
    .io_way_bank_3_9_writeData(instrBanks_io_way_bank_3_9_writeData),
    .io_way_bank_3_9_readData(instrBanks_io_way_bank_3_9_readData),
    .io_way_bank_3_10_addr(instrBanks_io_way_bank_3_10_addr),
    .io_way_bank_3_10_writeEnable(instrBanks_io_way_bank_3_10_writeEnable),
    .io_way_bank_3_10_writeData(instrBanks_io_way_bank_3_10_writeData),
    .io_way_bank_3_10_readData(instrBanks_io_way_bank_3_10_readData),
    .io_way_bank_3_11_addr(instrBanks_io_way_bank_3_11_addr),
    .io_way_bank_3_11_writeEnable(instrBanks_io_way_bank_3_11_writeEnable),
    .io_way_bank_3_11_writeData(instrBanks_io_way_bank_3_11_writeData),
    .io_way_bank_3_11_readData(instrBanks_io_way_bank_3_11_readData),
    .io_way_bank_3_12_addr(instrBanks_io_way_bank_3_12_addr),
    .io_way_bank_3_12_writeEnable(instrBanks_io_way_bank_3_12_writeEnable),
    .io_way_bank_3_12_writeData(instrBanks_io_way_bank_3_12_writeData),
    .io_way_bank_3_12_readData(instrBanks_io_way_bank_3_12_readData),
    .io_way_bank_3_13_addr(instrBanks_io_way_bank_3_13_addr),
    .io_way_bank_3_13_writeEnable(instrBanks_io_way_bank_3_13_writeEnable),
    .io_way_bank_3_13_writeData(instrBanks_io_way_bank_3_13_writeData),
    .io_way_bank_3_13_readData(instrBanks_io_way_bank_3_13_readData),
    .io_way_bank_3_14_addr(instrBanks_io_way_bank_3_14_addr),
    .io_way_bank_3_14_writeEnable(instrBanks_io_way_bank_3_14_writeEnable),
    .io_way_bank_3_14_writeData(instrBanks_io_way_bank_3_14_writeData),
    .io_way_bank_3_14_readData(instrBanks_io_way_bank_3_14_readData),
    .io_way_bank_3_15_addr(instrBanks_io_way_bank_3_15_addr),
    .io_way_bank_3_15_writeEnable(instrBanks_io_way_bank_3_15_writeEnable),
    .io_way_bank_3_15_writeData(instrBanks_io_way_bank_3_15_writeData),
    .io_way_bank_3_15_readData(instrBanks_io_way_bank_3_15_readData)
  );
  assign io_addr_ready = _T_65 & _T_66; // @[InstrCache.scala 50:17]
  assign io_data_valid = hit & _T_716; // @[InstrCache.scala 122:17]
  assign io_data_bits = comparator_io_hitInRefillBuffer ? refillBuffer_io_queryResult_bits : _GEN_1291; // @[InstrCache.scala 123:16]
  assign io_axi_ar_valid = axi_io_axi_ar_valid; // @[InstrCache.scala 52:10]
  assign io_axi_ar_bits_id = 4'h0; // @[InstrCache.scala 52:10]
  assign io_axi_ar_bits_addr = axi_io_axi_ar_bits_addr; // @[InstrCache.scala 52:10]
  assign io_axi_ar_bits_len = 4'hf; // @[InstrCache.scala 52:10]
  assign io_axi_ar_bits_size = 3'h2; // @[InstrCache.scala 52:10]
  assign io_axi_ar_bits_burst = 2'h2; // @[InstrCache.scala 52:10]
  assign io_axi_ar_bits_lock = 2'h0; // @[InstrCache.scala 52:10]
  assign io_axi_ar_bits_cache = 4'h0; // @[InstrCache.scala 52:10]
  assign io_axi_ar_bits_prot = 3'h0; // @[InstrCache.scala 52:10]
  assign io_axi_r_ready = axi_io_axi_r_ready; // @[InstrCache.scala 52:10]
  assign io_axi_aw_valid = 1'h0; // @[InstrCache.scala 52:10]
  assign io_axi_aw_bits_id = 4'h0; // @[InstrCache.scala 52:10]
  assign io_axi_aw_bits_addr = 32'h0; // @[InstrCache.scala 52:10]
  assign io_axi_aw_bits_len = 4'h0; // @[InstrCache.scala 52:10]
  assign io_axi_aw_bits_size = 3'h0; // @[InstrCache.scala 52:10]
  assign io_axi_aw_bits_burst = 2'h0; // @[InstrCache.scala 52:10]
  assign io_axi_aw_bits_lock = 2'h0; // @[InstrCache.scala 52:10]
  assign io_axi_aw_bits_cache = 4'h0; // @[InstrCache.scala 52:10]
  assign io_axi_aw_bits_prot = 3'h0; // @[InstrCache.scala 52:10]
  assign io_axi_w_valid = 1'h0; // @[InstrCache.scala 52:10]
  assign io_axi_w_bits_id = 4'h0; // @[InstrCache.scala 52:10]
  assign io_axi_w_bits_data = 32'h0; // @[InstrCache.scala 52:10]
  assign io_axi_w_bits_strb = 4'h0; // @[InstrCache.scala 52:10]
  assign io_axi_w_bits_last = 1'h0; // @[InstrCache.scala 52:10]
  assign io_axi_b_ready = 1'h0; // @[InstrCache.scala 52:10]
  assign fetch_clock = clock;
  assign fetch_reset = reset;
  assign fetch_io_addr = io_addr_bits; // @[InstrCache.scala 54:17]
  assign fetch_io_writeTagValid_valid = mshr_io_writeBack; // @[InstrCache.scala 55:32]
  assign fetch_io_writeTagValid_bits_waySelection = _T_71 ? 2'h3 : _T_73; // @[InstrCache.scala 58:44]
  assign fetch_io_writeTagValid_bits_tagValid_tag = mshr_io_mshrInfo_tag; // @[InstrCache.scala 56:44]
  assign mshr_clock = clock;
  assign mshr_reset = reset;
  assign mshr_io_missAddr_valid = _T_715 & _T_716; // @[InstrCache.scala 111:26]
  assign mshr_io_missAddr_bits_tag = fetch_query_io_out_phyTag; // @[InstrCache.scala 112:29]
  assign mshr_io_missAddr_bits_index = fetch_query_io_out_index; // @[InstrCache.scala 113:31]
  assign mshr_io_missAddr_bits_bankIndex = fetch_query_io_out_bankIndex; // @[InstrCache.scala 114:35]
  assign mshr_io_readyForWB = axi_io_finishTransfer; // @[InstrCache.scala 115:22]
  assign comparator_io_tagValid_0_tag = fetch_query_io_out_tagValid_0_tag; // @[InstrCache.scala 91:26]
  assign comparator_io_tagValid_0_valid = fetch_query_io_out_tagValid_0_valid; // @[InstrCache.scala 91:26]
  assign comparator_io_tagValid_1_tag = fetch_query_io_out_tagValid_1_tag; // @[InstrCache.scala 91:26]
  assign comparator_io_tagValid_1_valid = fetch_query_io_out_tagValid_1_valid; // @[InstrCache.scala 91:26]
  assign comparator_io_tagValid_2_tag = fetch_query_io_out_tagValid_2_tag; // @[InstrCache.scala 91:26]
  assign comparator_io_tagValid_2_valid = fetch_query_io_out_tagValid_2_valid; // @[InstrCache.scala 91:26]
  assign comparator_io_tagValid_3_tag = fetch_query_io_out_tagValid_3_tag; // @[InstrCache.scala 91:26]
  assign comparator_io_tagValid_3_valid = fetch_query_io_out_tagValid_3_valid; // @[InstrCache.scala 91:26]
  assign comparator_io_phyTag = fetch_query_io_out_phyTag; // @[InstrCache.scala 92:24]
  assign comparator_io_index = fetch_query_io_out_index; // @[InstrCache.scala 93:23]
  assign comparator_io_mshr_valid = ~mshr_io_missAddr_ready; // @[InstrCache.scala 95:28]
  assign comparator_io_mshr_bits_tag = mshr_io_mshrInfo_tag; // @[InstrCache.scala 94:27]
  assign comparator_io_mshr_bits_index = mshr_io_mshrInfo_index; // @[InstrCache.scala 94:27]
  assign comparator_io_refillBufferValid = refillBuffer_io_queryResult_valid; // @[InstrCache.scala 96:35]
  assign axi_clock = clock;
  assign axi_reset = reset;
  assign axi_io_axi_ar_ready = io_axi_ar_ready; // @[InstrCache.scala 52:10]
  assign axi_io_axi_r_valid = io_axi_r_valid; // @[InstrCache.scala 52:10]
  assign axi_io_axi_r_bits_data = io_axi_r_bits_data; // @[InstrCache.scala 52:10]
  assign axi_io_axi_r_bits_last = io_axi_r_bits_last; // @[InstrCache.scala 52:10]
  assign axi_io_addrReq_valid = newMiss | _T_722; // @[InstrCache.scala 103:24]
  assign axi_io_addrReq_bits = {{2'd0}, _T_727}; // @[InstrCache.scala 98:23]
  assign refillBuffer_clock = clock;
  assign refillBuffer_reset = reset;
  assign refillBuffer_io_addr_valid = mshr_io_missAddr_ready & mshr_io_missAddr_valid; // @[InstrCache.scala 105:30]
  assign refillBuffer_io_addr_bits = fetch_query_io_out_bankIndex; // @[InstrCache.scala 106:29]
  assign refillBuffer_io_inputData_valid = axi_io_transferData_valid; // @[InstrCache.scala 107:29]
  assign refillBuffer_io_inputData_bits = axi_io_transferData_bits; // @[InstrCache.scala 107:29]
  assign refillBuffer_io_finish = axi_io_finishTransfer; // @[InstrCache.scala 108:26]
  assign fetch_query_clock = clock;
  assign fetch_query_reset = reset;
  assign fetch_query_io_stall = _T_715 & _T_716; // @[InstrCache.scala 76:24]
  assign fetch_query_io_in_tagValid_0_tag = fetch_io_tagValid_0_tag; // @[InstrCache.scala 78:30]
  assign fetch_query_io_in_tagValid_0_valid = fetch_io_tagValid_0_valid; // @[InstrCache.scala 78:30]
  assign fetch_query_io_in_tagValid_1_tag = fetch_io_tagValid_1_tag; // @[InstrCache.scala 78:30]
  assign fetch_query_io_in_tagValid_1_valid = fetch_io_tagValid_1_valid; // @[InstrCache.scala 78:30]
  assign fetch_query_io_in_tagValid_2_tag = fetch_io_tagValid_2_tag; // @[InstrCache.scala 78:30]
  assign fetch_query_io_in_tagValid_2_valid = fetch_io_tagValid_2_valid; // @[InstrCache.scala 78:30]
  assign fetch_query_io_in_tagValid_3_tag = fetch_io_tagValid_3_tag; // @[InstrCache.scala 78:30]
  assign fetch_query_io_in_tagValid_3_valid = fetch_io_tagValid_3_valid; // @[InstrCache.scala 78:30]
  assign fetch_query_io_in_phyTag = fetch_io_phyTag; // @[InstrCache.scala 79:28]
  assign fetch_query_io_in_index = fetch_io_index; // @[InstrCache.scala 77:27]
  assign fetch_query_io_in_bankIndex = fetch_io_bankIndex; // @[InstrCache.scala 80:31]
  assign fetch_query_io_in_valid = io_addr_valid; // @[InstrCache.scala 81:27]
  assign instrBanks_clock = clock;
  assign instrBanks_io_way_bank_0_0_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_0_0_writeEnable = mshr_io_writeBack & _T_83; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_0_0_writeData = refillBuffer_io_allData_0; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_0_1_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_0_1_writeEnable = mshr_io_writeBack & _T_83; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_0_1_writeData = refillBuffer_io_allData_1; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_0_2_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_0_2_writeEnable = mshr_io_writeBack & _T_83; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_0_2_writeData = refillBuffer_io_allData_2; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_0_3_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_0_3_writeEnable = mshr_io_writeBack & _T_83; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_0_3_writeData = refillBuffer_io_allData_3; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_0_4_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_0_4_writeEnable = mshr_io_writeBack & _T_83; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_0_4_writeData = refillBuffer_io_allData_4; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_0_5_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_0_5_writeEnable = mshr_io_writeBack & _T_83; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_0_5_writeData = refillBuffer_io_allData_5; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_0_6_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_0_6_writeEnable = mshr_io_writeBack & _T_83; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_0_6_writeData = refillBuffer_io_allData_6; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_0_7_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_0_7_writeEnable = mshr_io_writeBack & _T_83; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_0_7_writeData = refillBuffer_io_allData_7; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_0_8_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_0_8_writeEnable = mshr_io_writeBack & _T_83; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_0_8_writeData = refillBuffer_io_allData_8; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_0_9_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_0_9_writeEnable = mshr_io_writeBack & _T_83; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_0_9_writeData = refillBuffer_io_allData_9; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_0_10_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_0_10_writeEnable = mshr_io_writeBack & _T_83; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_0_10_writeData = refillBuffer_io_allData_10; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_0_11_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_0_11_writeEnable = mshr_io_writeBack & _T_83; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_0_11_writeData = refillBuffer_io_allData_11; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_0_12_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_0_12_writeEnable = mshr_io_writeBack & _T_83; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_0_12_writeData = refillBuffer_io_allData_12; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_0_13_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_0_13_writeEnable = mshr_io_writeBack & _T_83; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_0_13_writeData = refillBuffer_io_allData_13; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_0_14_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_0_14_writeEnable = mshr_io_writeBack & _T_83; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_0_14_writeData = refillBuffer_io_allData_14; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_0_15_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_0_15_writeEnable = mshr_io_writeBack & _T_83; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_0_15_writeData = refillBuffer_io_allData_15; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_1_0_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_1_0_writeEnable = mshr_io_writeBack & _T_243; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_1_0_writeData = refillBuffer_io_allData_0; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_1_1_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_1_1_writeEnable = mshr_io_writeBack & _T_243; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_1_1_writeData = refillBuffer_io_allData_1; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_1_2_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_1_2_writeEnable = mshr_io_writeBack & _T_243; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_1_2_writeData = refillBuffer_io_allData_2; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_1_3_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_1_3_writeEnable = mshr_io_writeBack & _T_243; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_1_3_writeData = refillBuffer_io_allData_3; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_1_4_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_1_4_writeEnable = mshr_io_writeBack & _T_243; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_1_4_writeData = refillBuffer_io_allData_4; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_1_5_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_1_5_writeEnable = mshr_io_writeBack & _T_243; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_1_5_writeData = refillBuffer_io_allData_5; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_1_6_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_1_6_writeEnable = mshr_io_writeBack & _T_243; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_1_6_writeData = refillBuffer_io_allData_6; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_1_7_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_1_7_writeEnable = mshr_io_writeBack & _T_243; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_1_7_writeData = refillBuffer_io_allData_7; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_1_8_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_1_8_writeEnable = mshr_io_writeBack & _T_243; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_1_8_writeData = refillBuffer_io_allData_8; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_1_9_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_1_9_writeEnable = mshr_io_writeBack & _T_243; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_1_9_writeData = refillBuffer_io_allData_9; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_1_10_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_1_10_writeEnable = mshr_io_writeBack & _T_243; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_1_10_writeData = refillBuffer_io_allData_10; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_1_11_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_1_11_writeEnable = mshr_io_writeBack & _T_243; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_1_11_writeData = refillBuffer_io_allData_11; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_1_12_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_1_12_writeEnable = mshr_io_writeBack & _T_243; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_1_12_writeData = refillBuffer_io_allData_12; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_1_13_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_1_13_writeEnable = mshr_io_writeBack & _T_243; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_1_13_writeData = refillBuffer_io_allData_13; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_1_14_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_1_14_writeEnable = mshr_io_writeBack & _T_243; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_1_14_writeData = refillBuffer_io_allData_14; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_1_15_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_1_15_writeEnable = mshr_io_writeBack & _T_243; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_1_15_writeData = refillBuffer_io_allData_15; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_2_0_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_2_0_writeEnable = mshr_io_writeBack & _T_403; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_2_0_writeData = refillBuffer_io_allData_0; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_2_1_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_2_1_writeEnable = mshr_io_writeBack & _T_403; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_2_1_writeData = refillBuffer_io_allData_1; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_2_2_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_2_2_writeEnable = mshr_io_writeBack & _T_403; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_2_2_writeData = refillBuffer_io_allData_2; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_2_3_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_2_3_writeEnable = mshr_io_writeBack & _T_403; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_2_3_writeData = refillBuffer_io_allData_3; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_2_4_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_2_4_writeEnable = mshr_io_writeBack & _T_403; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_2_4_writeData = refillBuffer_io_allData_4; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_2_5_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_2_5_writeEnable = mshr_io_writeBack & _T_403; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_2_5_writeData = refillBuffer_io_allData_5; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_2_6_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_2_6_writeEnable = mshr_io_writeBack & _T_403; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_2_6_writeData = refillBuffer_io_allData_6; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_2_7_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_2_7_writeEnable = mshr_io_writeBack & _T_403; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_2_7_writeData = refillBuffer_io_allData_7; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_2_8_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_2_8_writeEnable = mshr_io_writeBack & _T_403; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_2_8_writeData = refillBuffer_io_allData_8; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_2_9_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_2_9_writeEnable = mshr_io_writeBack & _T_403; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_2_9_writeData = refillBuffer_io_allData_9; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_2_10_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_2_10_writeEnable = mshr_io_writeBack & _T_403; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_2_10_writeData = refillBuffer_io_allData_10; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_2_11_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_2_11_writeEnable = mshr_io_writeBack & _T_403; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_2_11_writeData = refillBuffer_io_allData_11; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_2_12_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_2_12_writeEnable = mshr_io_writeBack & _T_403; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_2_12_writeData = refillBuffer_io_allData_12; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_2_13_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_2_13_writeEnable = mshr_io_writeBack & _T_403; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_2_13_writeData = refillBuffer_io_allData_13; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_2_14_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_2_14_writeEnable = mshr_io_writeBack & _T_403; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_2_14_writeData = refillBuffer_io_allData_14; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_2_15_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_2_15_writeEnable = mshr_io_writeBack & _T_403; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_2_15_writeData = refillBuffer_io_allData_15; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_3_0_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_3_0_writeEnable = mshr_io_writeBack & _T_563; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_3_0_writeData = refillBuffer_io_allData_0; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_3_1_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_3_1_writeEnable = mshr_io_writeBack & _T_563; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_3_1_writeData = refillBuffer_io_allData_1; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_3_2_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_3_2_writeEnable = mshr_io_writeBack & _T_563; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_3_2_writeData = refillBuffer_io_allData_2; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_3_3_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_3_3_writeEnable = mshr_io_writeBack & _T_563; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_3_3_writeData = refillBuffer_io_allData_3; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_3_4_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_3_4_writeEnable = mshr_io_writeBack & _T_563; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_3_4_writeData = refillBuffer_io_allData_4; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_3_5_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_3_5_writeEnable = mshr_io_writeBack & _T_563; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_3_5_writeData = refillBuffer_io_allData_5; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_3_6_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_3_6_writeEnable = mshr_io_writeBack & _T_563; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_3_6_writeData = refillBuffer_io_allData_6; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_3_7_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_3_7_writeEnable = mshr_io_writeBack & _T_563; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_3_7_writeData = refillBuffer_io_allData_7; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_3_8_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_3_8_writeEnable = mshr_io_writeBack & _T_563; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_3_8_writeData = refillBuffer_io_allData_8; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_3_9_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_3_9_writeEnable = mshr_io_writeBack & _T_563; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_3_9_writeData = refillBuffer_io_allData_9; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_3_10_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_3_10_writeEnable = mshr_io_writeBack & _T_563; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_3_10_writeData = refillBuffer_io_allData_10; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_3_11_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_3_11_writeEnable = mshr_io_writeBack & _T_563; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_3_11_writeData = refillBuffer_io_allData_11; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_3_12_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_3_12_writeEnable = mshr_io_writeBack & _T_563; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_3_12_writeData = refillBuffer_io_allData_12; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_3_13_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_3_13_writeEnable = mshr_io_writeBack & _T_563; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_3_13_writeData = refillBuffer_io_allData_13; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_3_14_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_3_14_writeEnable = mshr_io_writeBack & _T_563; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_3_14_writeData = refillBuffer_io_allData_14; // @[InstrCache.scala 67:46]
  assign instrBanks_io_way_bank_3_15_addr = mshr_io_writeBack ? mshr_io_mshrInfo_index : fetch_io_index; // @[InstrCache.scala 64:41]
  assign instrBanks_io_way_bank_3_15_writeEnable = mshr_io_writeBack & _T_563; // @[InstrCache.scala 65:48]
  assign instrBanks_io_way_bank_3_15_writeData = refillBuffer_io_allData_15; // @[InstrCache.scala 67:46]
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
  lru_lruReg_0_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  lru_lruReg_0_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  lru_lruReg_0_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  lru_lruReg_0_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  lru_lruReg_1_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  lru_lruReg_1_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  lru_lruReg_1_2 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  lru_lruReg_1_3 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  lru_lruReg_2_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  lru_lruReg_2_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  lru_lruReg_2_2 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  lru_lruReg_2_3 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  lru_lruReg_3_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  lru_lruReg_3_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  lru_lruReg_3_2 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  lru_lruReg_3_3 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  lru_lruReg_4_0 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  lru_lruReg_4_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  lru_lruReg_4_2 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  lru_lruReg_4_3 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  lru_lruReg_5_0 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  lru_lruReg_5_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  lru_lruReg_5_2 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  lru_lruReg_5_3 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  lru_lruReg_6_0 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  lru_lruReg_6_1 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  lru_lruReg_6_2 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  lru_lruReg_6_3 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  lru_lruReg_7_0 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  lru_lruReg_7_1 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  lru_lruReg_7_2 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  lru_lruReg_7_3 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  lru_lruReg_8_0 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  lru_lruReg_8_1 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  lru_lruReg_8_2 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  lru_lruReg_8_3 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  lru_lruReg_9_0 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  lru_lruReg_9_1 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  lru_lruReg_9_2 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  lru_lruReg_9_3 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  lru_lruReg_10_0 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  lru_lruReg_10_1 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  lru_lruReg_10_2 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  lru_lruReg_10_3 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  lru_lruReg_11_0 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  lru_lruReg_11_1 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  lru_lruReg_11_2 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  lru_lruReg_11_3 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  lru_lruReg_12_0 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  lru_lruReg_12_1 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  lru_lruReg_12_2 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  lru_lruReg_12_3 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  lru_lruReg_13_0 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  lru_lruReg_13_1 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  lru_lruReg_13_2 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  lru_lruReg_13_3 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  lru_lruReg_14_0 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  lru_lruReg_14_1 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  lru_lruReg_14_2 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  lru_lruReg_14_3 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  lru_lruReg_15_0 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  lru_lruReg_15_1 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  lru_lruReg_15_2 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  lru_lruReg_15_3 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  lru_lruReg_16_0 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  lru_lruReg_16_1 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  lru_lruReg_16_2 = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  lru_lruReg_16_3 = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  lru_lruReg_17_0 = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  lru_lruReg_17_1 = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  lru_lruReg_17_2 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  lru_lruReg_17_3 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  lru_lruReg_18_0 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  lru_lruReg_18_1 = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  lru_lruReg_18_2 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  lru_lruReg_18_3 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  lru_lruReg_19_0 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  lru_lruReg_19_1 = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  lru_lruReg_19_2 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  lru_lruReg_19_3 = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  lru_lruReg_20_0 = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  lru_lruReg_20_1 = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  lru_lruReg_20_2 = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  lru_lruReg_20_3 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  lru_lruReg_21_0 = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  lru_lruReg_21_1 = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  lru_lruReg_21_2 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  lru_lruReg_21_3 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  lru_lruReg_22_0 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  lru_lruReg_22_1 = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  lru_lruReg_22_2 = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  lru_lruReg_22_3 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  lru_lruReg_23_0 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  lru_lruReg_23_1 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  lru_lruReg_23_2 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  lru_lruReg_23_3 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  lru_lruReg_24_0 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  lru_lruReg_24_1 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  lru_lruReg_24_2 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  lru_lruReg_24_3 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  lru_lruReg_25_0 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  lru_lruReg_25_1 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  lru_lruReg_25_2 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  lru_lruReg_25_3 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  lru_lruReg_26_0 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  lru_lruReg_26_1 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  lru_lruReg_26_2 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  lru_lruReg_26_3 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  lru_lruReg_27_0 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  lru_lruReg_27_1 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  lru_lruReg_27_2 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  lru_lruReg_27_3 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  lru_lruReg_28_0 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  lru_lruReg_28_1 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  lru_lruReg_28_2 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  lru_lruReg_28_3 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  lru_lruReg_29_0 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  lru_lruReg_29_1 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  lru_lruReg_29_2 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  lru_lruReg_29_3 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  lru_lruReg_30_0 = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  lru_lruReg_30_1 = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  lru_lruReg_30_2 = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  lru_lruReg_30_3 = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  lru_lruReg_31_0 = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  lru_lruReg_31_1 = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  lru_lruReg_31_2 = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  lru_lruReg_31_3 = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  lru_lruReg_32_0 = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  lru_lruReg_32_1 = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  lru_lruReg_32_2 = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  lru_lruReg_32_3 = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  lru_lruReg_33_0 = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  lru_lruReg_33_1 = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  lru_lruReg_33_2 = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  lru_lruReg_33_3 = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  lru_lruReg_34_0 = _RAND_136[0:0];
  _RAND_137 = {1{`RANDOM}};
  lru_lruReg_34_1 = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  lru_lruReg_34_2 = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  lru_lruReg_34_3 = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  lru_lruReg_35_0 = _RAND_140[0:0];
  _RAND_141 = {1{`RANDOM}};
  lru_lruReg_35_1 = _RAND_141[0:0];
  _RAND_142 = {1{`RANDOM}};
  lru_lruReg_35_2 = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  lru_lruReg_35_3 = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  lru_lruReg_36_0 = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  lru_lruReg_36_1 = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  lru_lruReg_36_2 = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  lru_lruReg_36_3 = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  lru_lruReg_37_0 = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  lru_lruReg_37_1 = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  lru_lruReg_37_2 = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  lru_lruReg_37_3 = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  lru_lruReg_38_0 = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  lru_lruReg_38_1 = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  lru_lruReg_38_2 = _RAND_154[0:0];
  _RAND_155 = {1{`RANDOM}};
  lru_lruReg_38_3 = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  lru_lruReg_39_0 = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  lru_lruReg_39_1 = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  lru_lruReg_39_2 = _RAND_158[0:0];
  _RAND_159 = {1{`RANDOM}};
  lru_lruReg_39_3 = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  lru_lruReg_40_0 = _RAND_160[0:0];
  _RAND_161 = {1{`RANDOM}};
  lru_lruReg_40_1 = _RAND_161[0:0];
  _RAND_162 = {1{`RANDOM}};
  lru_lruReg_40_2 = _RAND_162[0:0];
  _RAND_163 = {1{`RANDOM}};
  lru_lruReg_40_3 = _RAND_163[0:0];
  _RAND_164 = {1{`RANDOM}};
  lru_lruReg_41_0 = _RAND_164[0:0];
  _RAND_165 = {1{`RANDOM}};
  lru_lruReg_41_1 = _RAND_165[0:0];
  _RAND_166 = {1{`RANDOM}};
  lru_lruReg_41_2 = _RAND_166[0:0];
  _RAND_167 = {1{`RANDOM}};
  lru_lruReg_41_3 = _RAND_167[0:0];
  _RAND_168 = {1{`RANDOM}};
  lru_lruReg_42_0 = _RAND_168[0:0];
  _RAND_169 = {1{`RANDOM}};
  lru_lruReg_42_1 = _RAND_169[0:0];
  _RAND_170 = {1{`RANDOM}};
  lru_lruReg_42_2 = _RAND_170[0:0];
  _RAND_171 = {1{`RANDOM}};
  lru_lruReg_42_3 = _RAND_171[0:0];
  _RAND_172 = {1{`RANDOM}};
  lru_lruReg_43_0 = _RAND_172[0:0];
  _RAND_173 = {1{`RANDOM}};
  lru_lruReg_43_1 = _RAND_173[0:0];
  _RAND_174 = {1{`RANDOM}};
  lru_lruReg_43_2 = _RAND_174[0:0];
  _RAND_175 = {1{`RANDOM}};
  lru_lruReg_43_3 = _RAND_175[0:0];
  _RAND_176 = {1{`RANDOM}};
  lru_lruReg_44_0 = _RAND_176[0:0];
  _RAND_177 = {1{`RANDOM}};
  lru_lruReg_44_1 = _RAND_177[0:0];
  _RAND_178 = {1{`RANDOM}};
  lru_lruReg_44_2 = _RAND_178[0:0];
  _RAND_179 = {1{`RANDOM}};
  lru_lruReg_44_3 = _RAND_179[0:0];
  _RAND_180 = {1{`RANDOM}};
  lru_lruReg_45_0 = _RAND_180[0:0];
  _RAND_181 = {1{`RANDOM}};
  lru_lruReg_45_1 = _RAND_181[0:0];
  _RAND_182 = {1{`RANDOM}};
  lru_lruReg_45_2 = _RAND_182[0:0];
  _RAND_183 = {1{`RANDOM}};
  lru_lruReg_45_3 = _RAND_183[0:0];
  _RAND_184 = {1{`RANDOM}};
  lru_lruReg_46_0 = _RAND_184[0:0];
  _RAND_185 = {1{`RANDOM}};
  lru_lruReg_46_1 = _RAND_185[0:0];
  _RAND_186 = {1{`RANDOM}};
  lru_lruReg_46_2 = _RAND_186[0:0];
  _RAND_187 = {1{`RANDOM}};
  lru_lruReg_46_3 = _RAND_187[0:0];
  _RAND_188 = {1{`RANDOM}};
  lru_lruReg_47_0 = _RAND_188[0:0];
  _RAND_189 = {1{`RANDOM}};
  lru_lruReg_47_1 = _RAND_189[0:0];
  _RAND_190 = {1{`RANDOM}};
  lru_lruReg_47_2 = _RAND_190[0:0];
  _RAND_191 = {1{`RANDOM}};
  lru_lruReg_47_3 = _RAND_191[0:0];
  _RAND_192 = {1{`RANDOM}};
  lru_lruReg_48_0 = _RAND_192[0:0];
  _RAND_193 = {1{`RANDOM}};
  lru_lruReg_48_1 = _RAND_193[0:0];
  _RAND_194 = {1{`RANDOM}};
  lru_lruReg_48_2 = _RAND_194[0:0];
  _RAND_195 = {1{`RANDOM}};
  lru_lruReg_48_3 = _RAND_195[0:0];
  _RAND_196 = {1{`RANDOM}};
  lru_lruReg_49_0 = _RAND_196[0:0];
  _RAND_197 = {1{`RANDOM}};
  lru_lruReg_49_1 = _RAND_197[0:0];
  _RAND_198 = {1{`RANDOM}};
  lru_lruReg_49_2 = _RAND_198[0:0];
  _RAND_199 = {1{`RANDOM}};
  lru_lruReg_49_3 = _RAND_199[0:0];
  _RAND_200 = {1{`RANDOM}};
  lru_lruReg_50_0 = _RAND_200[0:0];
  _RAND_201 = {1{`RANDOM}};
  lru_lruReg_50_1 = _RAND_201[0:0];
  _RAND_202 = {1{`RANDOM}};
  lru_lruReg_50_2 = _RAND_202[0:0];
  _RAND_203 = {1{`RANDOM}};
  lru_lruReg_50_3 = _RAND_203[0:0];
  _RAND_204 = {1{`RANDOM}};
  lru_lruReg_51_0 = _RAND_204[0:0];
  _RAND_205 = {1{`RANDOM}};
  lru_lruReg_51_1 = _RAND_205[0:0];
  _RAND_206 = {1{`RANDOM}};
  lru_lruReg_51_2 = _RAND_206[0:0];
  _RAND_207 = {1{`RANDOM}};
  lru_lruReg_51_3 = _RAND_207[0:0];
  _RAND_208 = {1{`RANDOM}};
  lru_lruReg_52_0 = _RAND_208[0:0];
  _RAND_209 = {1{`RANDOM}};
  lru_lruReg_52_1 = _RAND_209[0:0];
  _RAND_210 = {1{`RANDOM}};
  lru_lruReg_52_2 = _RAND_210[0:0];
  _RAND_211 = {1{`RANDOM}};
  lru_lruReg_52_3 = _RAND_211[0:0];
  _RAND_212 = {1{`RANDOM}};
  lru_lruReg_53_0 = _RAND_212[0:0];
  _RAND_213 = {1{`RANDOM}};
  lru_lruReg_53_1 = _RAND_213[0:0];
  _RAND_214 = {1{`RANDOM}};
  lru_lruReg_53_2 = _RAND_214[0:0];
  _RAND_215 = {1{`RANDOM}};
  lru_lruReg_53_3 = _RAND_215[0:0];
  _RAND_216 = {1{`RANDOM}};
  lru_lruReg_54_0 = _RAND_216[0:0];
  _RAND_217 = {1{`RANDOM}};
  lru_lruReg_54_1 = _RAND_217[0:0];
  _RAND_218 = {1{`RANDOM}};
  lru_lruReg_54_2 = _RAND_218[0:0];
  _RAND_219 = {1{`RANDOM}};
  lru_lruReg_54_3 = _RAND_219[0:0];
  _RAND_220 = {1{`RANDOM}};
  lru_lruReg_55_0 = _RAND_220[0:0];
  _RAND_221 = {1{`RANDOM}};
  lru_lruReg_55_1 = _RAND_221[0:0];
  _RAND_222 = {1{`RANDOM}};
  lru_lruReg_55_2 = _RAND_222[0:0];
  _RAND_223 = {1{`RANDOM}};
  lru_lruReg_55_3 = _RAND_223[0:0];
  _RAND_224 = {1{`RANDOM}};
  lru_lruReg_56_0 = _RAND_224[0:0];
  _RAND_225 = {1{`RANDOM}};
  lru_lruReg_56_1 = _RAND_225[0:0];
  _RAND_226 = {1{`RANDOM}};
  lru_lruReg_56_2 = _RAND_226[0:0];
  _RAND_227 = {1{`RANDOM}};
  lru_lruReg_56_3 = _RAND_227[0:0];
  _RAND_228 = {1{`RANDOM}};
  lru_lruReg_57_0 = _RAND_228[0:0];
  _RAND_229 = {1{`RANDOM}};
  lru_lruReg_57_1 = _RAND_229[0:0];
  _RAND_230 = {1{`RANDOM}};
  lru_lruReg_57_2 = _RAND_230[0:0];
  _RAND_231 = {1{`RANDOM}};
  lru_lruReg_57_3 = _RAND_231[0:0];
  _RAND_232 = {1{`RANDOM}};
  lru_lruReg_58_0 = _RAND_232[0:0];
  _RAND_233 = {1{`RANDOM}};
  lru_lruReg_58_1 = _RAND_233[0:0];
  _RAND_234 = {1{`RANDOM}};
  lru_lruReg_58_2 = _RAND_234[0:0];
  _RAND_235 = {1{`RANDOM}};
  lru_lruReg_58_3 = _RAND_235[0:0];
  _RAND_236 = {1{`RANDOM}};
  lru_lruReg_59_0 = _RAND_236[0:0];
  _RAND_237 = {1{`RANDOM}};
  lru_lruReg_59_1 = _RAND_237[0:0];
  _RAND_238 = {1{`RANDOM}};
  lru_lruReg_59_2 = _RAND_238[0:0];
  _RAND_239 = {1{`RANDOM}};
  lru_lruReg_59_3 = _RAND_239[0:0];
  _RAND_240 = {1{`RANDOM}};
  lru_lruReg_60_0 = _RAND_240[0:0];
  _RAND_241 = {1{`RANDOM}};
  lru_lruReg_60_1 = _RAND_241[0:0];
  _RAND_242 = {1{`RANDOM}};
  lru_lruReg_60_2 = _RAND_242[0:0];
  _RAND_243 = {1{`RANDOM}};
  lru_lruReg_60_3 = _RAND_243[0:0];
  _RAND_244 = {1{`RANDOM}};
  lru_lruReg_61_0 = _RAND_244[0:0];
  _RAND_245 = {1{`RANDOM}};
  lru_lruReg_61_1 = _RAND_245[0:0];
  _RAND_246 = {1{`RANDOM}};
  lru_lruReg_61_2 = _RAND_246[0:0];
  _RAND_247 = {1{`RANDOM}};
  lru_lruReg_61_3 = _RAND_247[0:0];
  _RAND_248 = {1{`RANDOM}};
  lru_lruReg_62_0 = _RAND_248[0:0];
  _RAND_249 = {1{`RANDOM}};
  lru_lruReg_62_1 = _RAND_249[0:0];
  _RAND_250 = {1{`RANDOM}};
  lru_lruReg_62_2 = _RAND_250[0:0];
  _RAND_251 = {1{`RANDOM}};
  lru_lruReg_62_3 = _RAND_251[0:0];
  _RAND_252 = {1{`RANDOM}};
  lru_lruReg_63_0 = _RAND_252[0:0];
  _RAND_253 = {1{`RANDOM}};
  lru_lruReg_63_1 = _RAND_253[0:0];
  _RAND_254 = {1{`RANDOM}};
  lru_lruReg_63_2 = _RAND_254[0:0];
  _RAND_255 = {1{`RANDOM}};
  lru_lruReg_63_3 = _RAND_255[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      lru_lruReg_0_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h0 == fetch_query_io_out_index) begin
        if (_T_737) begin
          lru_lruReg_0_0 <= _GEN_1292;
        end else begin
          lru_lruReg_0_0 <= setMRUWire_65_0;
        end
      end
    end
    if (reset) begin
      lru_lruReg_0_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h0 == fetch_query_io_out_index) begin
        if (_T_737) begin
          lru_lruReg_0_1 <= _GEN_1293;
        end else begin
          lru_lruReg_0_1 <= setMRUWire_65_1;
        end
      end
    end
    if (reset) begin
      lru_lruReg_0_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h0 == fetch_query_io_out_index) begin
        if (_T_737) begin
          lru_lruReg_0_2 <= _GEN_1294;
        end else begin
          lru_lruReg_0_2 <= setMRUWire_65_2;
        end
      end
    end
    if (reset) begin
      lru_lruReg_0_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h0 == fetch_query_io_out_index) begin
        if (_T_737) begin
          lru_lruReg_0_3 <= _GEN_1295;
        end else begin
          lru_lruReg_0_3 <= setMRUWire_65_3;
        end
      end
    end
    if (reset) begin
      lru_lruReg_1_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1 == fetch_query_io_out_index) begin
        if (_T_737) begin
          lru_lruReg_1_0 <= _GEN_1292;
        end else begin
          lru_lruReg_1_0 <= setMRUWire_65_0;
        end
      end
    end
    if (reset) begin
      lru_lruReg_1_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1 == fetch_query_io_out_index) begin
        if (_T_737) begin
          lru_lruReg_1_1 <= _GEN_1293;
        end else begin
          lru_lruReg_1_1 <= setMRUWire_65_1;
        end
      end
    end
    if (reset) begin
      lru_lruReg_1_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1 == fetch_query_io_out_index) begin
        if (_T_737) begin
          lru_lruReg_1_2 <= _GEN_1294;
        end else begin
          lru_lruReg_1_2 <= setMRUWire_65_2;
        end
      end
    end
    if (reset) begin
      lru_lruReg_1_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1 == fetch_query_io_out_index) begin
        if (_T_737) begin
          lru_lruReg_1_3 <= _GEN_1295;
        end else begin
          lru_lruReg_1_3 <= setMRUWire_65_3;
        end
      end
    end
    if (reset) begin
      lru_lruReg_2_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2 == fetch_query_io_out_index) begin
        if (_T_737) begin
          lru_lruReg_2_0 <= _GEN_1292;
        end else begin
          lru_lruReg_2_0 <= setMRUWire_65_0;
        end
      end
    end
    if (reset) begin
      lru_lruReg_2_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2 == fetch_query_io_out_index) begin
        if (_T_737) begin
          lru_lruReg_2_1 <= _GEN_1293;
        end else begin
          lru_lruReg_2_1 <= setMRUWire_65_1;
        end
      end
    end
    if (reset) begin
      lru_lruReg_2_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2 == fetch_query_io_out_index) begin
        if (_T_737) begin
          lru_lruReg_2_2 <= _GEN_1294;
        end else begin
          lru_lruReg_2_2 <= setMRUWire_65_2;
        end
      end
    end
    if (reset) begin
      lru_lruReg_2_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2 == fetch_query_io_out_index) begin
        if (_T_737) begin
          lru_lruReg_2_3 <= _GEN_1295;
        end else begin
          lru_lruReg_2_3 <= setMRUWire_65_3;
        end
      end
    end
    if (reset) begin
      lru_lruReg_3_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3 == fetch_query_io_out_index) begin
        if (_T_737) begin
          lru_lruReg_3_0 <= _GEN_1292;
        end else begin
          lru_lruReg_3_0 <= setMRUWire_65_0;
        end
      end
    end
    if (reset) begin
      lru_lruReg_3_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3 == fetch_query_io_out_index) begin
        if (_T_737) begin
          lru_lruReg_3_1 <= _GEN_1293;
        end else begin
          lru_lruReg_3_1 <= setMRUWire_65_1;
        end
      end
    end
    if (reset) begin
      lru_lruReg_3_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3 == fetch_query_io_out_index) begin
        if (_T_737) begin
          lru_lruReg_3_2 <= _GEN_1294;
        end else begin
          lru_lruReg_3_2 <= setMRUWire_65_2;
        end
      end
    end
    if (reset) begin
      lru_lruReg_3_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3 == fetch_query_io_out_index) begin
        if (_T_737) begin
          lru_lruReg_3_3 <= _GEN_1295;
        end else begin
          lru_lruReg_3_3 <= setMRUWire_65_3;
        end
      end
    end
    if (reset) begin
      lru_lruReg_4_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h4 == fetch_query_io_out_index) begin
        lru_lruReg_4_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_4_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h4 == fetch_query_io_out_index) begin
        lru_lruReg_4_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_4_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h4 == fetch_query_io_out_index) begin
        lru_lruReg_4_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_4_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h4 == fetch_query_io_out_index) begin
        lru_lruReg_4_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_5_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h5 == fetch_query_io_out_index) begin
        lru_lruReg_5_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_5_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h5 == fetch_query_io_out_index) begin
        lru_lruReg_5_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_5_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h5 == fetch_query_io_out_index) begin
        lru_lruReg_5_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_5_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h5 == fetch_query_io_out_index) begin
        lru_lruReg_5_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_6_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h6 == fetch_query_io_out_index) begin
        lru_lruReg_6_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_6_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h6 == fetch_query_io_out_index) begin
        lru_lruReg_6_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_6_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h6 == fetch_query_io_out_index) begin
        lru_lruReg_6_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_6_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h6 == fetch_query_io_out_index) begin
        lru_lruReg_6_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_7_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h7 == fetch_query_io_out_index) begin
        lru_lruReg_7_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_7_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h7 == fetch_query_io_out_index) begin
        lru_lruReg_7_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_7_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h7 == fetch_query_io_out_index) begin
        lru_lruReg_7_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_7_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h7 == fetch_query_io_out_index) begin
        lru_lruReg_7_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_8_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h8 == fetch_query_io_out_index) begin
        lru_lruReg_8_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_8_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h8 == fetch_query_io_out_index) begin
        lru_lruReg_8_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_8_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h8 == fetch_query_io_out_index) begin
        lru_lruReg_8_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_8_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h8 == fetch_query_io_out_index) begin
        lru_lruReg_8_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_9_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h9 == fetch_query_io_out_index) begin
        lru_lruReg_9_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_9_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h9 == fetch_query_io_out_index) begin
        lru_lruReg_9_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_9_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h9 == fetch_query_io_out_index) begin
        lru_lruReg_9_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_9_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h9 == fetch_query_io_out_index) begin
        lru_lruReg_9_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_10_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'ha == fetch_query_io_out_index) begin
        lru_lruReg_10_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_10_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'ha == fetch_query_io_out_index) begin
        lru_lruReg_10_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_10_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'ha == fetch_query_io_out_index) begin
        lru_lruReg_10_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_10_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'ha == fetch_query_io_out_index) begin
        lru_lruReg_10_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_11_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'hb == fetch_query_io_out_index) begin
        lru_lruReg_11_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_11_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'hb == fetch_query_io_out_index) begin
        lru_lruReg_11_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_11_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'hb == fetch_query_io_out_index) begin
        lru_lruReg_11_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_11_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'hb == fetch_query_io_out_index) begin
        lru_lruReg_11_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_12_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'hc == fetch_query_io_out_index) begin
        lru_lruReg_12_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_12_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'hc == fetch_query_io_out_index) begin
        lru_lruReg_12_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_12_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'hc == fetch_query_io_out_index) begin
        lru_lruReg_12_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_12_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'hc == fetch_query_io_out_index) begin
        lru_lruReg_12_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_13_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'hd == fetch_query_io_out_index) begin
        lru_lruReg_13_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_13_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'hd == fetch_query_io_out_index) begin
        lru_lruReg_13_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_13_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'hd == fetch_query_io_out_index) begin
        lru_lruReg_13_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_13_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'hd == fetch_query_io_out_index) begin
        lru_lruReg_13_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_14_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'he == fetch_query_io_out_index) begin
        lru_lruReg_14_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_14_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'he == fetch_query_io_out_index) begin
        lru_lruReg_14_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_14_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'he == fetch_query_io_out_index) begin
        lru_lruReg_14_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_14_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'he == fetch_query_io_out_index) begin
        lru_lruReg_14_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_15_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'hf == fetch_query_io_out_index) begin
        lru_lruReg_15_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_15_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'hf == fetch_query_io_out_index) begin
        lru_lruReg_15_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_15_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'hf == fetch_query_io_out_index) begin
        lru_lruReg_15_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_15_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'hf == fetch_query_io_out_index) begin
        lru_lruReg_15_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_16_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h10 == fetch_query_io_out_index) begin
        lru_lruReg_16_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_16_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h10 == fetch_query_io_out_index) begin
        lru_lruReg_16_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_16_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h10 == fetch_query_io_out_index) begin
        lru_lruReg_16_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_16_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h10 == fetch_query_io_out_index) begin
        lru_lruReg_16_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_17_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h11 == fetch_query_io_out_index) begin
        lru_lruReg_17_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_17_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h11 == fetch_query_io_out_index) begin
        lru_lruReg_17_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_17_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h11 == fetch_query_io_out_index) begin
        lru_lruReg_17_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_17_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h11 == fetch_query_io_out_index) begin
        lru_lruReg_17_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_18_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h12 == fetch_query_io_out_index) begin
        lru_lruReg_18_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_18_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h12 == fetch_query_io_out_index) begin
        lru_lruReg_18_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_18_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h12 == fetch_query_io_out_index) begin
        lru_lruReg_18_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_18_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h12 == fetch_query_io_out_index) begin
        lru_lruReg_18_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_19_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h13 == fetch_query_io_out_index) begin
        lru_lruReg_19_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_19_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h13 == fetch_query_io_out_index) begin
        lru_lruReg_19_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_19_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h13 == fetch_query_io_out_index) begin
        lru_lruReg_19_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_19_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h13 == fetch_query_io_out_index) begin
        lru_lruReg_19_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_20_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h14 == fetch_query_io_out_index) begin
        lru_lruReg_20_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_20_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h14 == fetch_query_io_out_index) begin
        lru_lruReg_20_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_20_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h14 == fetch_query_io_out_index) begin
        lru_lruReg_20_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_20_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h14 == fetch_query_io_out_index) begin
        lru_lruReg_20_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_21_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h15 == fetch_query_io_out_index) begin
        lru_lruReg_21_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_21_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h15 == fetch_query_io_out_index) begin
        lru_lruReg_21_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_21_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h15 == fetch_query_io_out_index) begin
        lru_lruReg_21_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_21_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h15 == fetch_query_io_out_index) begin
        lru_lruReg_21_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_22_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h16 == fetch_query_io_out_index) begin
        lru_lruReg_22_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_22_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h16 == fetch_query_io_out_index) begin
        lru_lruReg_22_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_22_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h16 == fetch_query_io_out_index) begin
        lru_lruReg_22_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_22_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h16 == fetch_query_io_out_index) begin
        lru_lruReg_22_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_23_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h17 == fetch_query_io_out_index) begin
        lru_lruReg_23_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_23_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h17 == fetch_query_io_out_index) begin
        lru_lruReg_23_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_23_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h17 == fetch_query_io_out_index) begin
        lru_lruReg_23_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_23_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h17 == fetch_query_io_out_index) begin
        lru_lruReg_23_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_24_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h18 == fetch_query_io_out_index) begin
        lru_lruReg_24_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_24_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h18 == fetch_query_io_out_index) begin
        lru_lruReg_24_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_24_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h18 == fetch_query_io_out_index) begin
        lru_lruReg_24_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_24_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h18 == fetch_query_io_out_index) begin
        lru_lruReg_24_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_25_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h19 == fetch_query_io_out_index) begin
        lru_lruReg_25_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_25_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h19 == fetch_query_io_out_index) begin
        lru_lruReg_25_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_25_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h19 == fetch_query_io_out_index) begin
        lru_lruReg_25_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_25_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h19 == fetch_query_io_out_index) begin
        lru_lruReg_25_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_26_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1a == fetch_query_io_out_index) begin
        lru_lruReg_26_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_26_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1a == fetch_query_io_out_index) begin
        lru_lruReg_26_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_26_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1a == fetch_query_io_out_index) begin
        lru_lruReg_26_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_26_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1a == fetch_query_io_out_index) begin
        lru_lruReg_26_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_27_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1b == fetch_query_io_out_index) begin
        lru_lruReg_27_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_27_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1b == fetch_query_io_out_index) begin
        lru_lruReg_27_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_27_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1b == fetch_query_io_out_index) begin
        lru_lruReg_27_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_27_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1b == fetch_query_io_out_index) begin
        lru_lruReg_27_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_28_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1c == fetch_query_io_out_index) begin
        lru_lruReg_28_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_28_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1c == fetch_query_io_out_index) begin
        lru_lruReg_28_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_28_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1c == fetch_query_io_out_index) begin
        lru_lruReg_28_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_28_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1c == fetch_query_io_out_index) begin
        lru_lruReg_28_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_29_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1d == fetch_query_io_out_index) begin
        lru_lruReg_29_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_29_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1d == fetch_query_io_out_index) begin
        lru_lruReg_29_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_29_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1d == fetch_query_io_out_index) begin
        lru_lruReg_29_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_29_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1d == fetch_query_io_out_index) begin
        lru_lruReg_29_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_30_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1e == fetch_query_io_out_index) begin
        lru_lruReg_30_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_30_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1e == fetch_query_io_out_index) begin
        lru_lruReg_30_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_30_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1e == fetch_query_io_out_index) begin
        lru_lruReg_30_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_30_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1e == fetch_query_io_out_index) begin
        lru_lruReg_30_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_31_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1f == fetch_query_io_out_index) begin
        lru_lruReg_31_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_31_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1f == fetch_query_io_out_index) begin
        lru_lruReg_31_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_31_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1f == fetch_query_io_out_index) begin
        lru_lruReg_31_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_31_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h1f == fetch_query_io_out_index) begin
        lru_lruReg_31_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_32_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h20 == fetch_query_io_out_index) begin
        lru_lruReg_32_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_32_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h20 == fetch_query_io_out_index) begin
        lru_lruReg_32_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_32_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h20 == fetch_query_io_out_index) begin
        lru_lruReg_32_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_32_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h20 == fetch_query_io_out_index) begin
        lru_lruReg_32_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_33_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h21 == fetch_query_io_out_index) begin
        lru_lruReg_33_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_33_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h21 == fetch_query_io_out_index) begin
        lru_lruReg_33_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_33_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h21 == fetch_query_io_out_index) begin
        lru_lruReg_33_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_33_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h21 == fetch_query_io_out_index) begin
        lru_lruReg_33_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_34_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h22 == fetch_query_io_out_index) begin
        lru_lruReg_34_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_34_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h22 == fetch_query_io_out_index) begin
        lru_lruReg_34_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_34_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h22 == fetch_query_io_out_index) begin
        lru_lruReg_34_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_34_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h22 == fetch_query_io_out_index) begin
        lru_lruReg_34_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_35_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h23 == fetch_query_io_out_index) begin
        lru_lruReg_35_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_35_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h23 == fetch_query_io_out_index) begin
        lru_lruReg_35_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_35_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h23 == fetch_query_io_out_index) begin
        lru_lruReg_35_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_35_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h23 == fetch_query_io_out_index) begin
        lru_lruReg_35_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_36_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h24 == fetch_query_io_out_index) begin
        lru_lruReg_36_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_36_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h24 == fetch_query_io_out_index) begin
        lru_lruReg_36_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_36_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h24 == fetch_query_io_out_index) begin
        lru_lruReg_36_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_36_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h24 == fetch_query_io_out_index) begin
        lru_lruReg_36_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_37_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h25 == fetch_query_io_out_index) begin
        lru_lruReg_37_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_37_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h25 == fetch_query_io_out_index) begin
        lru_lruReg_37_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_37_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h25 == fetch_query_io_out_index) begin
        lru_lruReg_37_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_37_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h25 == fetch_query_io_out_index) begin
        lru_lruReg_37_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_38_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h26 == fetch_query_io_out_index) begin
        lru_lruReg_38_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_38_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h26 == fetch_query_io_out_index) begin
        lru_lruReg_38_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_38_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h26 == fetch_query_io_out_index) begin
        lru_lruReg_38_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_38_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h26 == fetch_query_io_out_index) begin
        lru_lruReg_38_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_39_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h27 == fetch_query_io_out_index) begin
        lru_lruReg_39_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_39_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h27 == fetch_query_io_out_index) begin
        lru_lruReg_39_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_39_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h27 == fetch_query_io_out_index) begin
        lru_lruReg_39_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_39_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h27 == fetch_query_io_out_index) begin
        lru_lruReg_39_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_40_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h28 == fetch_query_io_out_index) begin
        lru_lruReg_40_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_40_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h28 == fetch_query_io_out_index) begin
        lru_lruReg_40_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_40_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h28 == fetch_query_io_out_index) begin
        lru_lruReg_40_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_40_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h28 == fetch_query_io_out_index) begin
        lru_lruReg_40_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_41_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h29 == fetch_query_io_out_index) begin
        lru_lruReg_41_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_41_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h29 == fetch_query_io_out_index) begin
        lru_lruReg_41_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_41_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h29 == fetch_query_io_out_index) begin
        lru_lruReg_41_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_41_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h29 == fetch_query_io_out_index) begin
        lru_lruReg_41_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_42_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2a == fetch_query_io_out_index) begin
        lru_lruReg_42_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_42_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2a == fetch_query_io_out_index) begin
        lru_lruReg_42_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_42_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2a == fetch_query_io_out_index) begin
        lru_lruReg_42_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_42_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2a == fetch_query_io_out_index) begin
        lru_lruReg_42_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_43_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2b == fetch_query_io_out_index) begin
        lru_lruReg_43_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_43_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2b == fetch_query_io_out_index) begin
        lru_lruReg_43_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_43_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2b == fetch_query_io_out_index) begin
        lru_lruReg_43_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_43_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2b == fetch_query_io_out_index) begin
        lru_lruReg_43_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_44_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2c == fetch_query_io_out_index) begin
        lru_lruReg_44_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_44_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2c == fetch_query_io_out_index) begin
        lru_lruReg_44_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_44_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2c == fetch_query_io_out_index) begin
        lru_lruReg_44_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_44_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2c == fetch_query_io_out_index) begin
        lru_lruReg_44_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_45_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2d == fetch_query_io_out_index) begin
        lru_lruReg_45_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_45_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2d == fetch_query_io_out_index) begin
        lru_lruReg_45_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_45_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2d == fetch_query_io_out_index) begin
        lru_lruReg_45_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_45_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2d == fetch_query_io_out_index) begin
        lru_lruReg_45_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_46_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2e == fetch_query_io_out_index) begin
        lru_lruReg_46_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_46_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2e == fetch_query_io_out_index) begin
        lru_lruReg_46_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_46_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2e == fetch_query_io_out_index) begin
        lru_lruReg_46_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_46_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2e == fetch_query_io_out_index) begin
        lru_lruReg_46_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_47_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2f == fetch_query_io_out_index) begin
        lru_lruReg_47_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_47_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2f == fetch_query_io_out_index) begin
        lru_lruReg_47_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_47_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2f == fetch_query_io_out_index) begin
        lru_lruReg_47_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_47_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h2f == fetch_query_io_out_index) begin
        lru_lruReg_47_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_48_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h30 == fetch_query_io_out_index) begin
        lru_lruReg_48_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_48_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h30 == fetch_query_io_out_index) begin
        lru_lruReg_48_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_48_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h30 == fetch_query_io_out_index) begin
        lru_lruReg_48_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_48_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h30 == fetch_query_io_out_index) begin
        lru_lruReg_48_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_49_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h31 == fetch_query_io_out_index) begin
        lru_lruReg_49_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_49_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h31 == fetch_query_io_out_index) begin
        lru_lruReg_49_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_49_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h31 == fetch_query_io_out_index) begin
        lru_lruReg_49_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_49_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h31 == fetch_query_io_out_index) begin
        lru_lruReg_49_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_50_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h32 == fetch_query_io_out_index) begin
        lru_lruReg_50_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_50_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h32 == fetch_query_io_out_index) begin
        lru_lruReg_50_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_50_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h32 == fetch_query_io_out_index) begin
        lru_lruReg_50_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_50_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h32 == fetch_query_io_out_index) begin
        lru_lruReg_50_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_51_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h33 == fetch_query_io_out_index) begin
        lru_lruReg_51_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_51_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h33 == fetch_query_io_out_index) begin
        lru_lruReg_51_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_51_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h33 == fetch_query_io_out_index) begin
        lru_lruReg_51_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_51_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h33 == fetch_query_io_out_index) begin
        lru_lruReg_51_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_52_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h34 == fetch_query_io_out_index) begin
        lru_lruReg_52_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_52_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h34 == fetch_query_io_out_index) begin
        lru_lruReg_52_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_52_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h34 == fetch_query_io_out_index) begin
        lru_lruReg_52_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_52_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h34 == fetch_query_io_out_index) begin
        lru_lruReg_52_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_53_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h35 == fetch_query_io_out_index) begin
        lru_lruReg_53_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_53_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h35 == fetch_query_io_out_index) begin
        lru_lruReg_53_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_53_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h35 == fetch_query_io_out_index) begin
        lru_lruReg_53_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_53_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h35 == fetch_query_io_out_index) begin
        lru_lruReg_53_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_54_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h36 == fetch_query_io_out_index) begin
        lru_lruReg_54_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_54_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h36 == fetch_query_io_out_index) begin
        lru_lruReg_54_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_54_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h36 == fetch_query_io_out_index) begin
        lru_lruReg_54_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_54_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h36 == fetch_query_io_out_index) begin
        lru_lruReg_54_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_55_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h37 == fetch_query_io_out_index) begin
        lru_lruReg_55_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_55_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h37 == fetch_query_io_out_index) begin
        lru_lruReg_55_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_55_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h37 == fetch_query_io_out_index) begin
        lru_lruReg_55_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_55_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h37 == fetch_query_io_out_index) begin
        lru_lruReg_55_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_56_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h38 == fetch_query_io_out_index) begin
        lru_lruReg_56_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_56_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h38 == fetch_query_io_out_index) begin
        lru_lruReg_56_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_56_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h38 == fetch_query_io_out_index) begin
        lru_lruReg_56_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_56_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h38 == fetch_query_io_out_index) begin
        lru_lruReg_56_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_57_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h39 == fetch_query_io_out_index) begin
        lru_lruReg_57_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_57_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h39 == fetch_query_io_out_index) begin
        lru_lruReg_57_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_57_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h39 == fetch_query_io_out_index) begin
        lru_lruReg_57_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_57_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h39 == fetch_query_io_out_index) begin
        lru_lruReg_57_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_58_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3a == fetch_query_io_out_index) begin
        lru_lruReg_58_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_58_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3a == fetch_query_io_out_index) begin
        lru_lruReg_58_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_58_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3a == fetch_query_io_out_index) begin
        lru_lruReg_58_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_58_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3a == fetch_query_io_out_index) begin
        lru_lruReg_58_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_59_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3b == fetch_query_io_out_index) begin
        lru_lruReg_59_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_59_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3b == fetch_query_io_out_index) begin
        lru_lruReg_59_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_59_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3b == fetch_query_io_out_index) begin
        lru_lruReg_59_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_59_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3b == fetch_query_io_out_index) begin
        lru_lruReg_59_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_60_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3c == fetch_query_io_out_index) begin
        lru_lruReg_60_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_60_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3c == fetch_query_io_out_index) begin
        lru_lruReg_60_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_60_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3c == fetch_query_io_out_index) begin
        lru_lruReg_60_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_60_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3c == fetch_query_io_out_index) begin
        lru_lruReg_60_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_61_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3d == fetch_query_io_out_index) begin
        lru_lruReg_61_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_61_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3d == fetch_query_io_out_index) begin
        lru_lruReg_61_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_61_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3d == fetch_query_io_out_index) begin
        lru_lruReg_61_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_61_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3d == fetch_query_io_out_index) begin
        lru_lruReg_61_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_62_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3e == fetch_query_io_out_index) begin
        lru_lruReg_62_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_62_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3e == fetch_query_io_out_index) begin
        lru_lruReg_62_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_62_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3e == fetch_query_io_out_index) begin
        lru_lruReg_62_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_62_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3e == fetch_query_io_out_index) begin
        lru_lruReg_62_3 <= _T_738_3;
      end
    end
    if (reset) begin
      lru_lruReg_63_0 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3f == fetch_query_io_out_index) begin
        lru_lruReg_63_0 <= _T_738_0;
      end
    end
    if (reset) begin
      lru_lruReg_63_1 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3f == fetch_query_io_out_index) begin
        lru_lruReg_63_1 <= _T_738_1;
      end
    end
    if (reset) begin
      lru_lruReg_63_2 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3f == fetch_query_io_out_index) begin
        lru_lruReg_63_2 <= _T_738_2;
      end
    end
    if (reset) begin
      lru_lruReg_63_3 <= 1'h0;
    end else if (hitInBank) begin
      if (6'h3f == fetch_query_io_out_index) begin
        lru_lruReg_63_3 <= _T_738_3;
      end
    end
  end
endmodule
