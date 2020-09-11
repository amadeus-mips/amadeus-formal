module GoldenDCache(
  input         clock,
  input         reset,
  input  [31:0] io_addr,
  input         io_writeEnable,
  input  [3:0]  io_writeMask,
  input  [31:0] io_writeData,
  output [31:0] io_data
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
`endif // RANDOMIZE_REG_INIT
  reg [31:0] mem_0; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_1; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_2; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_3; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_4; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_5; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_6; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_7; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_8; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_9; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_10; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_11; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_12; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_13; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_14; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_15; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_16; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_17; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_18; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_19; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_20; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_21; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_22; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_23; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_24; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_25; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_26; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_27; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_28; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_29; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_30; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_31; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_32; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_33; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_34; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_35; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_36; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_37; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_38; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_39; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_40; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_41; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_42; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_43; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_44; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_45; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_46; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_47; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_48; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_49; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_50; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_51; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_52; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_53; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_54; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_55; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_56; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_57; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_58; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_59; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_60; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_61; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_62; // @[GoldenDCache.scala 17:20]
  reg [31:0] mem_63; // @[GoldenDCache.scala 17:20]
  wire [31:0] _GEN_1 = 6'h1 == io_addr[7:2] ? mem_1 : mem_0; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_2 = 6'h2 == io_addr[7:2] ? mem_2 : _GEN_1; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_3 = 6'h3 == io_addr[7:2] ? mem_3 : _GEN_2; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_4 = 6'h4 == io_addr[7:2] ? mem_4 : _GEN_3; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_5 = 6'h5 == io_addr[7:2] ? mem_5 : _GEN_4; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_6 = 6'h6 == io_addr[7:2] ? mem_6 : _GEN_5; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_7 = 6'h7 == io_addr[7:2] ? mem_7 : _GEN_6; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_8 = 6'h8 == io_addr[7:2] ? mem_8 : _GEN_7; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_9 = 6'h9 == io_addr[7:2] ? mem_9 : _GEN_8; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_10 = 6'ha == io_addr[7:2] ? mem_10 : _GEN_9; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_11 = 6'hb == io_addr[7:2] ? mem_11 : _GEN_10; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_12 = 6'hc == io_addr[7:2] ? mem_12 : _GEN_11; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_13 = 6'hd == io_addr[7:2] ? mem_13 : _GEN_12; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_14 = 6'he == io_addr[7:2] ? mem_14 : _GEN_13; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_15 = 6'hf == io_addr[7:2] ? mem_15 : _GEN_14; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_16 = 6'h10 == io_addr[7:2] ? mem_16 : _GEN_15; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_17 = 6'h11 == io_addr[7:2] ? mem_17 : _GEN_16; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_18 = 6'h12 == io_addr[7:2] ? mem_18 : _GEN_17; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_19 = 6'h13 == io_addr[7:2] ? mem_19 : _GEN_18; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_20 = 6'h14 == io_addr[7:2] ? mem_20 : _GEN_19; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_21 = 6'h15 == io_addr[7:2] ? mem_21 : _GEN_20; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_22 = 6'h16 == io_addr[7:2] ? mem_22 : _GEN_21; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_23 = 6'h17 == io_addr[7:2] ? mem_23 : _GEN_22; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_24 = 6'h18 == io_addr[7:2] ? mem_24 : _GEN_23; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_25 = 6'h19 == io_addr[7:2] ? mem_25 : _GEN_24; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_26 = 6'h1a == io_addr[7:2] ? mem_26 : _GEN_25; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_27 = 6'h1b == io_addr[7:2] ? mem_27 : _GEN_26; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_28 = 6'h1c == io_addr[7:2] ? mem_28 : _GEN_27; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_29 = 6'h1d == io_addr[7:2] ? mem_29 : _GEN_28; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_30 = 6'h1e == io_addr[7:2] ? mem_30 : _GEN_29; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_31 = 6'h1f == io_addr[7:2] ? mem_31 : _GEN_30; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_32 = 6'h20 == io_addr[7:2] ? mem_32 : _GEN_31; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_33 = 6'h21 == io_addr[7:2] ? mem_33 : _GEN_32; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_34 = 6'h22 == io_addr[7:2] ? mem_34 : _GEN_33; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_35 = 6'h23 == io_addr[7:2] ? mem_35 : _GEN_34; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_36 = 6'h24 == io_addr[7:2] ? mem_36 : _GEN_35; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_37 = 6'h25 == io_addr[7:2] ? mem_37 : _GEN_36; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_38 = 6'h26 == io_addr[7:2] ? mem_38 : _GEN_37; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_39 = 6'h27 == io_addr[7:2] ? mem_39 : _GEN_38; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_40 = 6'h28 == io_addr[7:2] ? mem_40 : _GEN_39; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_41 = 6'h29 == io_addr[7:2] ? mem_41 : _GEN_40; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_42 = 6'h2a == io_addr[7:2] ? mem_42 : _GEN_41; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_43 = 6'h2b == io_addr[7:2] ? mem_43 : _GEN_42; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_44 = 6'h2c == io_addr[7:2] ? mem_44 : _GEN_43; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_45 = 6'h2d == io_addr[7:2] ? mem_45 : _GEN_44; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_46 = 6'h2e == io_addr[7:2] ? mem_46 : _GEN_45; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_47 = 6'h2f == io_addr[7:2] ? mem_47 : _GEN_46; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_48 = 6'h30 == io_addr[7:2] ? mem_48 : _GEN_47; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_49 = 6'h31 == io_addr[7:2] ? mem_49 : _GEN_48; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_50 = 6'h32 == io_addr[7:2] ? mem_50 : _GEN_49; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_51 = 6'h33 == io_addr[7:2] ? mem_51 : _GEN_50; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_52 = 6'h34 == io_addr[7:2] ? mem_52 : _GEN_51; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_53 = 6'h35 == io_addr[7:2] ? mem_53 : _GEN_52; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_54 = 6'h36 == io_addr[7:2] ? mem_54 : _GEN_53; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_55 = 6'h37 == io_addr[7:2] ? mem_55 : _GEN_54; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_56 = 6'h38 == io_addr[7:2] ? mem_56 : _GEN_55; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_57 = 6'h39 == io_addr[7:2] ? mem_57 : _GEN_56; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_58 = 6'h3a == io_addr[7:2] ? mem_58 : _GEN_57; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_59 = 6'h3b == io_addr[7:2] ? mem_59 : _GEN_58; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_60 = 6'h3c == io_addr[7:2] ? mem_60 : _GEN_59; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_61 = 6'h3d == io_addr[7:2] ? mem_61 : _GEN_60; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_62 = 6'h3e == io_addr[7:2] ? mem_62 : _GEN_61; // @[GoldenDCache.scala 22:81]
  wire [31:0] _GEN_63 = 6'h3f == io_addr[7:2] ? mem_63 : _GEN_62; // @[GoldenDCache.scala 22:81]
  wire [7:0] _T_8 = io_writeMask[3] ? io_writeData[31:24] : _GEN_63[31:24]; // @[GoldenDCache.scala 22:12]
  wire [7:0] _T_14 = io_writeMask[2] ? io_writeData[23:16] : _GEN_63[23:16]; // @[GoldenDCache.scala 22:12]
  wire [7:0] _T_20 = io_writeMask[1] ? io_writeData[15:8] : _GEN_63[15:8]; // @[GoldenDCache.scala 22:12]
  wire [7:0] _T_26 = io_writeMask[0] ? io_writeData[7:0] : _GEN_63[7:0]; // @[GoldenDCache.scala 22:12]
  wire [31:0] _T_29 = {_T_8,_T_14,_T_20,_T_26}; // @[Cat.scala 29:58]
  assign io_data = 6'h3f == io_addr[7:2] ? mem_63 : _GEN_62; // @[GoldenDCache.scala 26:11]
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
    end else if (io_writeEnable) begin
      if (6'h0 == io_addr[7:2]) begin
        mem_0 <= _T_29;
      end
    end
    if (reset) begin
      mem_1 <= 32'h1;
    end else if (io_writeEnable) begin
      if (6'h1 == io_addr[7:2]) begin
        mem_1 <= _T_29;
      end
    end
    if (reset) begin
      mem_2 <= 32'h2;
    end else if (io_writeEnable) begin
      if (6'h2 == io_addr[7:2]) begin
        mem_2 <= _T_29;
      end
    end
    if (reset) begin
      mem_3 <= 32'h3;
    end else if (io_writeEnable) begin
      if (6'h3 == io_addr[7:2]) begin
        mem_3 <= _T_29;
      end
    end
    if (reset) begin
      mem_4 <= 32'h4;
    end else if (io_writeEnable) begin
      if (6'h4 == io_addr[7:2]) begin
        mem_4 <= _T_29;
      end
    end
    if (reset) begin
      mem_5 <= 32'h5;
    end else if (io_writeEnable) begin
      if (6'h5 == io_addr[7:2]) begin
        mem_5 <= _T_29;
      end
    end
    if (reset) begin
      mem_6 <= 32'h6;
    end else if (io_writeEnable) begin
      if (6'h6 == io_addr[7:2]) begin
        mem_6 <= _T_29;
      end
    end
    if (reset) begin
      mem_7 <= 32'h7;
    end else if (io_writeEnable) begin
      if (6'h7 == io_addr[7:2]) begin
        mem_7 <= _T_29;
      end
    end
    if (reset) begin
      mem_8 <= 32'h8;
    end else if (io_writeEnable) begin
      if (6'h8 == io_addr[7:2]) begin
        mem_8 <= _T_29;
      end
    end
    if (reset) begin
      mem_9 <= 32'h9;
    end else if (io_writeEnable) begin
      if (6'h9 == io_addr[7:2]) begin
        mem_9 <= _T_29;
      end
    end
    if (reset) begin
      mem_10 <= 32'ha;
    end else if (io_writeEnable) begin
      if (6'ha == io_addr[7:2]) begin
        mem_10 <= _T_29;
      end
    end
    if (reset) begin
      mem_11 <= 32'hb;
    end else if (io_writeEnable) begin
      if (6'hb == io_addr[7:2]) begin
        mem_11 <= _T_29;
      end
    end
    if (reset) begin
      mem_12 <= 32'hc;
    end else if (io_writeEnable) begin
      if (6'hc == io_addr[7:2]) begin
        mem_12 <= _T_29;
      end
    end
    if (reset) begin
      mem_13 <= 32'hd;
    end else if (io_writeEnable) begin
      if (6'hd == io_addr[7:2]) begin
        mem_13 <= _T_29;
      end
    end
    if (reset) begin
      mem_14 <= 32'he;
    end else if (io_writeEnable) begin
      if (6'he == io_addr[7:2]) begin
        mem_14 <= _T_29;
      end
    end
    if (reset) begin
      mem_15 <= 32'hf;
    end else if (io_writeEnable) begin
      if (6'hf == io_addr[7:2]) begin
        mem_15 <= _T_29;
      end
    end
    if (reset) begin
      mem_16 <= 32'h10;
    end else if (io_writeEnable) begin
      if (6'h10 == io_addr[7:2]) begin
        mem_16 <= _T_29;
      end
    end
    if (reset) begin
      mem_17 <= 32'h11;
    end else if (io_writeEnable) begin
      if (6'h11 == io_addr[7:2]) begin
        mem_17 <= _T_29;
      end
    end
    if (reset) begin
      mem_18 <= 32'h12;
    end else if (io_writeEnable) begin
      if (6'h12 == io_addr[7:2]) begin
        mem_18 <= _T_29;
      end
    end
    if (reset) begin
      mem_19 <= 32'h13;
    end else if (io_writeEnable) begin
      if (6'h13 == io_addr[7:2]) begin
        mem_19 <= _T_29;
      end
    end
    if (reset) begin
      mem_20 <= 32'h14;
    end else if (io_writeEnable) begin
      if (6'h14 == io_addr[7:2]) begin
        mem_20 <= _T_29;
      end
    end
    if (reset) begin
      mem_21 <= 32'h15;
    end else if (io_writeEnable) begin
      if (6'h15 == io_addr[7:2]) begin
        mem_21 <= _T_29;
      end
    end
    if (reset) begin
      mem_22 <= 32'h16;
    end else if (io_writeEnable) begin
      if (6'h16 == io_addr[7:2]) begin
        mem_22 <= _T_29;
      end
    end
    if (reset) begin
      mem_23 <= 32'h17;
    end else if (io_writeEnable) begin
      if (6'h17 == io_addr[7:2]) begin
        mem_23 <= _T_29;
      end
    end
    if (reset) begin
      mem_24 <= 32'h18;
    end else if (io_writeEnable) begin
      if (6'h18 == io_addr[7:2]) begin
        mem_24 <= _T_29;
      end
    end
    if (reset) begin
      mem_25 <= 32'h19;
    end else if (io_writeEnable) begin
      if (6'h19 == io_addr[7:2]) begin
        mem_25 <= _T_29;
      end
    end
    if (reset) begin
      mem_26 <= 32'h1a;
    end else if (io_writeEnable) begin
      if (6'h1a == io_addr[7:2]) begin
        mem_26 <= _T_29;
      end
    end
    if (reset) begin
      mem_27 <= 32'h1b;
    end else if (io_writeEnable) begin
      if (6'h1b == io_addr[7:2]) begin
        mem_27 <= _T_29;
      end
    end
    if (reset) begin
      mem_28 <= 32'h1c;
    end else if (io_writeEnable) begin
      if (6'h1c == io_addr[7:2]) begin
        mem_28 <= _T_29;
      end
    end
    if (reset) begin
      mem_29 <= 32'h1d;
    end else if (io_writeEnable) begin
      if (6'h1d == io_addr[7:2]) begin
        mem_29 <= _T_29;
      end
    end
    if (reset) begin
      mem_30 <= 32'h1e;
    end else if (io_writeEnable) begin
      if (6'h1e == io_addr[7:2]) begin
        mem_30 <= _T_29;
      end
    end
    if (reset) begin
      mem_31 <= 32'h1f;
    end else if (io_writeEnable) begin
      if (6'h1f == io_addr[7:2]) begin
        mem_31 <= _T_29;
      end
    end
    if (reset) begin
      mem_32 <= 32'h20;
    end else if (io_writeEnable) begin
      if (6'h20 == io_addr[7:2]) begin
        mem_32 <= _T_29;
      end
    end
    if (reset) begin
      mem_33 <= 32'h21;
    end else if (io_writeEnable) begin
      if (6'h21 == io_addr[7:2]) begin
        mem_33 <= _T_29;
      end
    end
    if (reset) begin
      mem_34 <= 32'h22;
    end else if (io_writeEnable) begin
      if (6'h22 == io_addr[7:2]) begin
        mem_34 <= _T_29;
      end
    end
    if (reset) begin
      mem_35 <= 32'h23;
    end else if (io_writeEnable) begin
      if (6'h23 == io_addr[7:2]) begin
        mem_35 <= _T_29;
      end
    end
    if (reset) begin
      mem_36 <= 32'h24;
    end else if (io_writeEnable) begin
      if (6'h24 == io_addr[7:2]) begin
        mem_36 <= _T_29;
      end
    end
    if (reset) begin
      mem_37 <= 32'h25;
    end else if (io_writeEnable) begin
      if (6'h25 == io_addr[7:2]) begin
        mem_37 <= _T_29;
      end
    end
    if (reset) begin
      mem_38 <= 32'h26;
    end else if (io_writeEnable) begin
      if (6'h26 == io_addr[7:2]) begin
        mem_38 <= _T_29;
      end
    end
    if (reset) begin
      mem_39 <= 32'h27;
    end else if (io_writeEnable) begin
      if (6'h27 == io_addr[7:2]) begin
        mem_39 <= _T_29;
      end
    end
    if (reset) begin
      mem_40 <= 32'h28;
    end else if (io_writeEnable) begin
      if (6'h28 == io_addr[7:2]) begin
        mem_40 <= _T_29;
      end
    end
    if (reset) begin
      mem_41 <= 32'h29;
    end else if (io_writeEnable) begin
      if (6'h29 == io_addr[7:2]) begin
        mem_41 <= _T_29;
      end
    end
    if (reset) begin
      mem_42 <= 32'h2a;
    end else if (io_writeEnable) begin
      if (6'h2a == io_addr[7:2]) begin
        mem_42 <= _T_29;
      end
    end
    if (reset) begin
      mem_43 <= 32'h2b;
    end else if (io_writeEnable) begin
      if (6'h2b == io_addr[7:2]) begin
        mem_43 <= _T_29;
      end
    end
    if (reset) begin
      mem_44 <= 32'h2c;
    end else if (io_writeEnable) begin
      if (6'h2c == io_addr[7:2]) begin
        mem_44 <= _T_29;
      end
    end
    if (reset) begin
      mem_45 <= 32'h2d;
    end else if (io_writeEnable) begin
      if (6'h2d == io_addr[7:2]) begin
        mem_45 <= _T_29;
      end
    end
    if (reset) begin
      mem_46 <= 32'h2e;
    end else if (io_writeEnable) begin
      if (6'h2e == io_addr[7:2]) begin
        mem_46 <= _T_29;
      end
    end
    if (reset) begin
      mem_47 <= 32'h2f;
    end else if (io_writeEnable) begin
      if (6'h2f == io_addr[7:2]) begin
        mem_47 <= _T_29;
      end
    end
    if (reset) begin
      mem_48 <= 32'h30;
    end else if (io_writeEnable) begin
      if (6'h30 == io_addr[7:2]) begin
        mem_48 <= _T_29;
      end
    end
    if (reset) begin
      mem_49 <= 32'h31;
    end else if (io_writeEnable) begin
      if (6'h31 == io_addr[7:2]) begin
        mem_49 <= _T_29;
      end
    end
    if (reset) begin
      mem_50 <= 32'h32;
    end else if (io_writeEnable) begin
      if (6'h32 == io_addr[7:2]) begin
        mem_50 <= _T_29;
      end
    end
    if (reset) begin
      mem_51 <= 32'h33;
    end else if (io_writeEnable) begin
      if (6'h33 == io_addr[7:2]) begin
        mem_51 <= _T_29;
      end
    end
    if (reset) begin
      mem_52 <= 32'h34;
    end else if (io_writeEnable) begin
      if (6'h34 == io_addr[7:2]) begin
        mem_52 <= _T_29;
      end
    end
    if (reset) begin
      mem_53 <= 32'h35;
    end else if (io_writeEnable) begin
      if (6'h35 == io_addr[7:2]) begin
        mem_53 <= _T_29;
      end
    end
    if (reset) begin
      mem_54 <= 32'h36;
    end else if (io_writeEnable) begin
      if (6'h36 == io_addr[7:2]) begin
        mem_54 <= _T_29;
      end
    end
    if (reset) begin
      mem_55 <= 32'h37;
    end else if (io_writeEnable) begin
      if (6'h37 == io_addr[7:2]) begin
        mem_55 <= _T_29;
      end
    end
    if (reset) begin
      mem_56 <= 32'h38;
    end else if (io_writeEnable) begin
      if (6'h38 == io_addr[7:2]) begin
        mem_56 <= _T_29;
      end
    end
    if (reset) begin
      mem_57 <= 32'h39;
    end else if (io_writeEnable) begin
      if (6'h39 == io_addr[7:2]) begin
        mem_57 <= _T_29;
      end
    end
    if (reset) begin
      mem_58 <= 32'h3a;
    end else if (io_writeEnable) begin
      if (6'h3a == io_addr[7:2]) begin
        mem_58 <= _T_29;
      end
    end
    if (reset) begin
      mem_59 <= 32'h3b;
    end else if (io_writeEnable) begin
      if (6'h3b == io_addr[7:2]) begin
        mem_59 <= _T_29;
      end
    end
    if (reset) begin
      mem_60 <= 32'h3c;
    end else if (io_writeEnable) begin
      if (6'h3c == io_addr[7:2]) begin
        mem_60 <= _T_29;
      end
    end
    if (reset) begin
      mem_61 <= 32'h3d;
    end else if (io_writeEnable) begin
      if (6'h3d == io_addr[7:2]) begin
        mem_61 <= _T_29;
      end
    end
    if (reset) begin
      mem_62 <= 32'h3e;
    end else if (io_writeEnable) begin
      if (6'h3e == io_addr[7:2]) begin
        mem_62 <= _T_29;
      end
    end
    if (reset) begin
      mem_63 <= 32'h3f;
    end else if (io_writeEnable) begin
      if (6'h3f == io_addr[7:2]) begin
        mem_63 <= _T_29;
      end
    end
  end
endmodule
