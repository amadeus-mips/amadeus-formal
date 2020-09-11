module InstructionFIFO(
  input         clock,
  input         reset,
  input         io_enqueue_0_valid,
  input  [31:0] io_enqueue_0_bits,
  input         io_enqueue_1_valid,
  input  [31:0] io_enqueue_1_bits,
  output        io_readyForEnqueue,
  input         io_dequeue_0_ready,
  output        io_dequeue_0_valid,
  output [31:0] io_dequeue_0_bits,
  input         io_dequeue_1_ready,
  output        io_dequeue_1_valid,
  output [31:0] io_dequeue_1_bits
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] dataArray [0:3]; // @[InstructionFIFO.scala 44:23]
  wire [31:0] dataArray__T_17_data; // @[InstructionFIFO.scala 44:23]
  wire [1:0] dataArray__T_17_addr; // @[InstructionFIFO.scala 44:23]
  wire [31:0] dataArray__T_20_data; // @[InstructionFIFO.scala 44:23]
  wire [1:0] dataArray__T_20_addr; // @[InstructionFIFO.scala 44:23]
  wire [31:0] dataArray__T_24_data; // @[InstructionFIFO.scala 44:23]
  wire [1:0] dataArray__T_24_addr; // @[InstructionFIFO.scala 44:23]
  wire  dataArray__T_24_mask; // @[InstructionFIFO.scala 44:23]
  wire  dataArray__T_24_en; // @[InstructionFIFO.scala 44:23]
  wire [31:0] dataArray__T_39_data; // @[InstructionFIFO.scala 44:23]
  wire [1:0] dataArray__T_39_addr; // @[InstructionFIFO.scala 44:23]
  wire  dataArray__T_39_mask; // @[InstructionFIFO.scala 44:23]
  wire  dataArray__T_39_en; // @[InstructionFIFO.scala 44:23]
  reg [2:0] size; // @[InstructionFIFO.scala 40:24]
  reg [1:0] headPTR; // @[InstructionFIFO.scala 41:24]
  reg [1:0] tailPTR; // @[InstructionFIFO.scala 42:24]
  reg  validArray_0; // @[InstructionFIFO.scala 45:27]
  reg  validArray_1; // @[InstructionFIFO.scala 45:27]
  reg  validArray_2; // @[InstructionFIFO.scala 45:27]
  reg  validArray_3; // @[InstructionFIFO.scala 45:27]
  wire [1:0] _T_2 = {io_enqueue_1_valid,io_enqueue_0_valid}; // @[InstructionFIFO.scala 54:38]
  wire  numOfEnqueueRequests = _T_2[0] + _T_2[1]; // @[InstructionFIFO.scala 54:87]
  wire [2:0] spaceLeft = 3'h4 - size; // @[InstructionFIFO.scala 57:30]
  wire [2:0] _GEN_59 = {{2'd0}, numOfEnqueueRequests}; // @[InstructionFIFO.scala 60:44]
  wire  enqueueReady = spaceLeft >= _GEN_59; // @[InstructionFIFO.scala 60:44]
  wire [1:0] _T_52 = headPTR - 2'h0; // @[InstructionFIFO.scala 93:56]
  wire  _GEN_35 = 2'h1 == _T_52 ? validArray_1 : validArray_0; // @[InstructionFIFO.scala 93:34]
  wire  _GEN_36 = 2'h2 == _T_52 ? validArray_2 : _GEN_35; // @[InstructionFIFO.scala 93:34]
  wire  dequeueResponseValidArray_0 = 2'h3 == _T_52 ? validArray_3 : _GEN_36; // @[InstructionFIFO.scala 93:34]
  wire  _T_9 = dequeueResponseValidArray_0 & io_dequeue_0_ready; // @[InstructionFIFO.scala 68:182]
  wire [1:0] _T_57 = headPTR - 2'h1; // @[InstructionFIFO.scala 93:56]
  wire  _GEN_47 = 2'h1 == _T_57 ? validArray_1 : validArray_0; // @[InstructionFIFO.scala 93:34]
  wire  _GEN_48 = 2'h2 == _T_57 ? validArray_2 : _GEN_47; // @[InstructionFIFO.scala 93:34]
  wire  dequeueResponseValidArray_1 = 2'h3 == _T_57 ? validArray_3 : _GEN_48; // @[InstructionFIFO.scala 93:34]
  wire  _T_10 = dequeueResponseValidArray_1 & io_dequeue_1_ready; // @[InstructionFIFO.scala 68:182]
  wire [1:0] _T_11 = {{1'd0}, _T_9}; // @[InstructionFIFO.scala 68:229]
  wire  _T_14 = _T_11[0] + _T_10; // @[InstructionFIFO.scala 68:229]
  wire  _T_21 = io_enqueue_0_valid & enqueueReady; // @[InstructionFIFO.scala 84:38]
  wire [1:0] _T_23 = tailPTR - 2'h0; // @[InstructionFIFO.scala 85:25]
  wire  _GEN_1 = 2'h1 == _T_23 ? validArray_1 : validArray_0; // @[InstructionFIFO.scala 86:14]
  wire  _GEN_2 = 2'h2 == _T_23 ? validArray_2 : _GEN_1; // @[InstructionFIFO.scala 86:14]
  wire  _GEN_3 = 2'h3 == _T_23 ? validArray_3 : _GEN_2; // @[InstructionFIFO.scala 86:14]
  wire  _T_27 = ~_GEN_3; // @[InstructionFIFO.scala 86:14]
  wire  _T_29 = _T_27 | reset; // @[InstructionFIFO.scala 86:13]
  wire  _T_30 = ~_T_29; // @[InstructionFIFO.scala 86:13]
  wire  _T_32 = io_enqueue_0_valid | reset; // @[InstructionFIFO.scala 87:13]
  wire  _T_33 = ~_T_32; // @[InstructionFIFO.scala 87:13]
  wire  _GEN_60 = 2'h0 == _T_23; // @[InstructionFIFO.scala 88:33]
  wire  _GEN_4 = _GEN_60 | validArray_0; // @[InstructionFIFO.scala 88:33]
  wire  _GEN_61 = 2'h1 == _T_23; // @[InstructionFIFO.scala 88:33]
  wire  _GEN_5 = _GEN_61 | validArray_1; // @[InstructionFIFO.scala 88:33]
  wire  _GEN_62 = 2'h2 == _T_23; // @[InstructionFIFO.scala 88:33]
  wire  _GEN_6 = _GEN_62 | validArray_2; // @[InstructionFIFO.scala 88:33]
  wire  _GEN_63 = 2'h3 == _T_23; // @[InstructionFIFO.scala 88:33]
  wire  _GEN_7 = _GEN_63 | validArray_3; // @[InstructionFIFO.scala 88:33]
  wire  _GEN_13 = _T_21 ? _GEN_4 : validArray_0; // @[InstructionFIFO.scala 84:55]
  wire  _GEN_14 = _T_21 ? _GEN_5 : validArray_1; // @[InstructionFIFO.scala 84:55]
  wire  _GEN_15 = _T_21 ? _GEN_6 : validArray_2; // @[InstructionFIFO.scala 84:55]
  wire  _GEN_16 = _T_21 ? _GEN_7 : validArray_3; // @[InstructionFIFO.scala 84:55]
  wire  _T_36 = io_enqueue_1_valid & enqueueReady; // @[InstructionFIFO.scala 84:38]
  wire [1:0] _T_38 = tailPTR - 2'h1; // @[InstructionFIFO.scala 85:25]
  wire  _GEN_18 = 2'h1 == _T_38 ? validArray_1 : validArray_0; // @[InstructionFIFO.scala 86:14]
  wire  _GEN_19 = 2'h2 == _T_38 ? validArray_2 : _GEN_18; // @[InstructionFIFO.scala 86:14]
  wire  _GEN_20 = 2'h3 == _T_38 ? validArray_3 : _GEN_19; // @[InstructionFIFO.scala 86:14]
  wire  _T_42 = ~_GEN_20; // @[InstructionFIFO.scala 86:14]
  wire  _T_44 = _T_42 | reset; // @[InstructionFIFO.scala 86:13]
  wire  _T_45 = ~_T_44; // @[InstructionFIFO.scala 86:13]
  wire  _T_47 = io_enqueue_1_valid | reset; // @[InstructionFIFO.scala 87:13]
  wire  _T_48 = ~_T_47; // @[InstructionFIFO.scala 87:13]
  wire  _GEN_64 = 2'h0 == _T_38; // @[InstructionFIFO.scala 88:33]
  wire  _GEN_21 = _GEN_64 | _GEN_13; // @[InstructionFIFO.scala 88:33]
  wire  _GEN_65 = 2'h1 == _T_38; // @[InstructionFIFO.scala 88:33]
  wire  _GEN_22 = _GEN_65 | _GEN_14; // @[InstructionFIFO.scala 88:33]
  wire  _GEN_66 = 2'h2 == _T_38; // @[InstructionFIFO.scala 88:33]
  wire  _GEN_23 = _GEN_66 | _GEN_15; // @[InstructionFIFO.scala 88:33]
  wire  _GEN_67 = 2'h3 == _T_38; // @[InstructionFIFO.scala 88:33]
  wire  _GEN_24 = _GEN_67 | _GEN_16; // @[InstructionFIFO.scala 88:33]
  wire  _T_53 = io_dequeue_0_ready & dequeueResponseValidArray_0; // @[InstructionFIFO.scala 94:30]
  wire  _T_58 = io_dequeue_1_ready & dequeueResponseValidArray_1; // @[InstructionFIFO.scala 94:30]
  wire [1:0] _GEN_68 = {{1'd0}, numOfEnqueueRequests}; // @[InstructionFIFO.scala 100:24]
  wire [1:0] _T_62 = tailPTR - _GEN_68; // @[InstructionFIFO.scala 100:24]
  wire [3:0] numOfDequeueElements = {{3'd0}, _T_14}; // @[InstructionFIFO.scala 67:34 InstructionFIFO.scala 68:24]
  wire [3:0] _GEN_69 = {{2'd0}, headPTR}; // @[InstructionFIFO.scala 103:22]
  wire [3:0] _T_64 = _GEN_69 - numOfDequeueElements; // @[InstructionFIFO.scala 103:22]
  wire [3:0] _GEN_70 = {{1'd0}, size}; // @[InstructionFIFO.scala 107:11]
  wire [3:0] _T_66 = _GEN_70 - numOfDequeueElements; // @[InstructionFIFO.scala 107:11]
  wire [3:0] _GEN_71 = {{3'd0}, numOfEnqueueRequests}; // @[InstructionFIFO.scala 107:34]
  wire [3:0] _T_68 = _T_66 + _GEN_71; // @[InstructionFIFO.scala 107:34]
  wire [3:0] _T_71 = enqueueReady ? _T_68 : _T_66; // @[InstructionFIFO.scala 105:14]
  assign dataArray__T_17_addr = headPTR - 2'h0;
  assign dataArray__T_17_data = dataArray[dataArray__T_17_addr]; // @[InstructionFIFO.scala 44:23]
  assign dataArray__T_20_addr = headPTR - 2'h1;
  assign dataArray__T_20_data = dataArray[dataArray__T_20_addr]; // @[InstructionFIFO.scala 44:23]
  assign dataArray__T_24_data = io_enqueue_0_bits;
  assign dataArray__T_24_addr = tailPTR - 2'h0;
  assign dataArray__T_24_mask = 1'h1;
  assign dataArray__T_24_en = io_enqueue_0_valid & enqueueReady;
  assign dataArray__T_39_data = io_enqueue_1_bits;
  assign dataArray__T_39_addr = tailPTR - 2'h1;
  assign dataArray__T_39_mask = 1'h1;
  assign dataArray__T_39_en = io_enqueue_1_valid & enqueueReady;
  assign io_readyForEnqueue = spaceLeft >= _GEN_59; // @[InstructionFIFO.scala 71:22]
  assign io_dequeue_0_valid = 2'h3 == _T_52 ? validArray_3 : _GEN_36; // @[InstructionFIFO.scala 74:25]
  assign io_dequeue_0_bits = dataArray__T_17_data; // @[InstructionFIFO.scala 75:25]
  assign io_dequeue_1_valid = 2'h3 == _T_57 ? validArray_3 : _GEN_48; // @[InstructionFIFO.scala 74:25]
  assign io_dequeue_1_bits = dataArray__T_20_data; // @[InstructionFIFO.scala 75:25]
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
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    dataArray[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  size = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  headPTR = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  tailPTR = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  validArray_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  validArray_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  validArray_2 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  validArray_3 = _RAND_7[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(dataArray__T_24_en & dataArray__T_24_mask) begin
      dataArray[dataArray__T_24_addr] <= dataArray__T_24_data; // @[InstructionFIFO.scala 44:23]
    end
    if(dataArray__T_39_en & dataArray__T_39_mask) begin
      dataArray[dataArray__T_39_addr] <= dataArray__T_39_data; // @[InstructionFIFO.scala 44:23]
    end
    if (reset) begin
      size <= 3'h0;
    end else begin
      size <= _T_71[2:0];
    end
    if (reset) begin
      headPTR <= 2'h0;
    end else begin
      headPTR <= _T_64[1:0];
    end
    if (reset) begin
      tailPTR <= 2'h0;
    end else if (enqueueReady) begin
      tailPTR <= _T_62;
    end
    if (reset) begin
      validArray_0 <= 1'h0;
    end else if (_T_58) begin
      if (2'h0 == _T_57) begin
        validArray_0 <= 1'h0;
      end else if (_T_53) begin
        if (2'h0 == _T_52) begin
          validArray_0 <= 1'h0;
        end else if (_T_36) begin
          validArray_0 <= _GEN_21;
        end else if (_T_21) begin
          validArray_0 <= _GEN_4;
        end
      end else if (_T_36) begin
        validArray_0 <= _GEN_21;
      end else if (_T_21) begin
        validArray_0 <= _GEN_4;
      end
    end else if (_T_53) begin
      if (2'h0 == _T_52) begin
        validArray_0 <= 1'h0;
      end else if (_T_36) begin
        validArray_0 <= _GEN_21;
      end else if (_T_21) begin
        validArray_0 <= _GEN_4;
      end
    end else if (_T_36) begin
      validArray_0 <= _GEN_21;
    end else if (_T_21) begin
      validArray_0 <= _GEN_4;
    end
    if (reset) begin
      validArray_1 <= 1'h0;
    end else if (_T_58) begin
      if (2'h1 == _T_57) begin
        validArray_1 <= 1'h0;
      end else if (_T_53) begin
        if (2'h1 == _T_52) begin
          validArray_1 <= 1'h0;
        end else if (_T_36) begin
          validArray_1 <= _GEN_22;
        end else if (_T_21) begin
          validArray_1 <= _GEN_5;
        end
      end else if (_T_36) begin
        validArray_1 <= _GEN_22;
      end else if (_T_21) begin
        validArray_1 <= _GEN_5;
      end
    end else if (_T_53) begin
      if (2'h1 == _T_52) begin
        validArray_1 <= 1'h0;
      end else if (_T_36) begin
        validArray_1 <= _GEN_22;
      end else if (_T_21) begin
        validArray_1 <= _GEN_5;
      end
    end else if (_T_36) begin
      validArray_1 <= _GEN_22;
    end else if (_T_21) begin
      validArray_1 <= _GEN_5;
    end
    if (reset) begin
      validArray_2 <= 1'h0;
    end else if (_T_58) begin
      if (2'h2 == _T_57) begin
        validArray_2 <= 1'h0;
      end else if (_T_53) begin
        if (2'h2 == _T_52) begin
          validArray_2 <= 1'h0;
        end else if (_T_36) begin
          validArray_2 <= _GEN_23;
        end else if (_T_21) begin
          validArray_2 <= _GEN_6;
        end
      end else if (_T_36) begin
        validArray_2 <= _GEN_23;
      end else if (_T_21) begin
        validArray_2 <= _GEN_6;
      end
    end else if (_T_53) begin
      if (2'h2 == _T_52) begin
        validArray_2 <= 1'h0;
      end else if (_T_36) begin
        validArray_2 <= _GEN_23;
      end else if (_T_21) begin
        validArray_2 <= _GEN_6;
      end
    end else if (_T_36) begin
      validArray_2 <= _GEN_23;
    end else if (_T_21) begin
      validArray_2 <= _GEN_6;
    end
    if (reset) begin
      validArray_3 <= 1'h0;
    end else if (_T_58) begin
      if (2'h3 == _T_57) begin
        validArray_3 <= 1'h0;
      end else if (_T_53) begin
        if (2'h3 == _T_52) begin
          validArray_3 <= 1'h0;
        end else if (_T_36) begin
          validArray_3 <= _GEN_24;
        end else if (_T_21) begin
          validArray_3 <= _GEN_7;
        end
      end else if (_T_36) begin
        validArray_3 <= _GEN_24;
      end else if (_T_21) begin
        validArray_3 <= _GEN_7;
      end
    end else if (_T_53) begin
      if (2'h3 == _T_52) begin
        validArray_3 <= 1'h0;
      end else if (_T_36) begin
        validArray_3 <= _GEN_24;
      end else if (_T_21) begin
        validArray_3 <= _GEN_7;
      end
    end else if (_T_36) begin
      validArray_3 <= _GEN_24;
    end else if (_T_21) begin
      validArray_3 <= _GEN_7;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_21 & _T_30) begin
          $fwrite(32'h80000002,"Assertion failed\n    at InstructionFIFO.scala:86 assert(!validArray(tailPTR - i.U))\n"); // @[InstructionFIFO.scala 86:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_21 & _T_30) begin
          $fatal; // @[InstructionFIFO.scala 86:13]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_21 & _T_33) begin
          $fwrite(32'h80000002,"Assertion failed\n    at InstructionFIFO.scala:87 assert(io.enqueue(i).valid)\n"); // @[InstructionFIFO.scala 87:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_21 & _T_33) begin
          $fatal; // @[InstructionFIFO.scala 87:13]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_36 & _T_45) begin
          $fwrite(32'h80000002,"Assertion failed\n    at InstructionFIFO.scala:86 assert(!validArray(tailPTR - i.U))\n"); // @[InstructionFIFO.scala 86:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_36 & _T_45) begin
          $fatal; // @[InstructionFIFO.scala 86:13]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_36 & _T_48) begin
          $fwrite(32'h80000002,"Assertion failed\n    at InstructionFIFO.scala:87 assert(io.enqueue(i).valid)\n"); // @[InstructionFIFO.scala 87:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_36 & _T_48) begin
          $fatal; // @[InstructionFIFO.scala 87:13]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
