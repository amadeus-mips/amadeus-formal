
bind WriteQueue write_queue_fv wq_fv(.*);
	`define CAPACITY 2
	`define ENQ_HANDSHAKE io_enqueue_ready&&io_enqueue_valid
	`define DEQ_HANDSHAKE io_dequeueData_valid&&io_dequeueData_ready

module write_queue_fv (
	// default IO
  input         clock,
  input         reset,
  input        io_enqueue_ready,
  input         io_enqueue_valid,
  input  [27:0] io_enqueue_bits_addr_tag,
  input         io_enqueue_bits_addr_index,
  input  [31:0] io_enqueue_bits_data_0,
  input  [31:0] io_enqueue_bits_data_1,
  input         io_query_addr_phyTag,
  input         io_query_addr_index,
  input         io_query_addr_bankIndex,
  input  [31:0] io_query_data,
  input  [3:0]  io_query_writeMask,
  input        io_resp_valid,
  input [31:0] io_resp_bits,
  input        io_dequeueAddr_valid,
  input [27:0] io_dequeueAddr_bits_tag,
  input        io_dequeueAddr_bits_index,
  input         io_dequeueData_ready,
  input        io_dequeueData_valid,
  input [31:0] io_dequeueData_bits,
  input        io_dequeueLast,
  input io_holdOffNewMiss,
	
	// dut signals
	input [2:0] size,// @[WriteQueue.scala 44:21]
  input  headPTR,// @[WriteQueue.scala 47:24]
  input  tailPTR, // @[WriteQueue.scala 51:24]
  input  lineWritePTR // @[WriteQueue.scala 54:29]

);


	/** default clocking and reset */
	default clocking @(posedge clock); endclocking 
	default disable iff (reset);

	// cover different sizes for write queue, make sure it can reach these states
	for (genvar i = 0; i < `CAPACITY + 1; i++) begin
		cover_size: cover property (size == i);
	end

	for (genvar i = 0; i < `CAPACITY; i++) begin
		// make sure write queue can still accept input
		cover_notfull_accept_enqueue: cover property (size == i && io_enqueue_ready);
	end

	for (genvar i = 1; i <= `CAPACITY; i++) begin
		cover_not_empty_dequeue: cover property (size == i && io_dequeueData_valid);
	end

	cover_enqueue_while_dequeue: cover property ( `DEQ_HANDSHAKE && `ENQ_HANDSHAKE);
	cover_hold_off_new_miss: cover property (io_holdOffNewMiss);


	


	// make sure dequeue last is correct
	dequeue_last_signal_correct: assert property ((`DEQ_HANDSHAKE) && !io_dequeueLast |-> ##[1:$] `DEQ_HANDSHAKE && io_dequeueLast);
	error_dequeue_last_writePTR_not_last: assert property (io_dequeueLast |-> lineWritePTR == 1);
	error_enqueue_when_full: assert property (`ENQ_HANDSHAKE |-> size != 2);
	error_dequeue_when_empty: assert property (`DEQ_HANDSHAKE |-> size != 0);

	error_tail_head_meet: assert property (headPTR == tailPTR |-> size != 1);
	error_size_overflow: assert property (size <= 2);
endmodule
