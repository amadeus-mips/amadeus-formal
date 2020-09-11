module verifyFIFO (
  input         clock,
  input         reset,
  input         io_enqueue_0_valid,
  input  [31:0] io_enqueue_0_bits,
  input         io_enqueue_1_valid,
  input  [31:0] io_enqueue_1_bits,
  input        io_readyForEnqueue,
  input         io_dequeue_0_ready,
  input        io_dequeue_0_valid,
  input [31:0] io_dequeue_0_bits,
  input         io_dequeue_1_ready,
  input        io_dequeue_1_valid,
  input [31:0] io_dequeue_1_bits,

  //DUT internal signals
  input [2:0] size,
  input [1:0] headPTR,
  input [1:0] tailPTR,
  input [3:0] numOfDequeueElements
);

	bind InstructionFIFO verifyFIFO veri (.*);

	// init reset and default clocking
default clocking @(posedge clock); endclocking
default disable iff(reset);
	
	bit first_cycle = 1;
	always @(posedge clock) begin
		if(first_cycle)
			assume(reset);
	end



	// cover queue is full
	fifo_can_be_full: cover property (size == 4);
	// cover queue is empty
	fifo_can_be_empty: cover property (size == 0);

	ordered_valid_enqueue: assume property (io_enqueue_1_valid |-> io_enqueue_0_valid);
	ordered_not_valid_enqueue: assume property (!io_enqueue_0_valid |-> !io_enqueue_1_valid);

	ordered_ready_dequeue: assume property (io_dequeue_1_ready |-> io_dequeue_0_ready);
	ordered_not_ready_dequeue: assume property (!io_dequeue_0_ready |-> !io_dequeue_1_ready);

	// size of the fifo should never be larger than 4
	fifo_cannot_have_more_than_capacity: assert property (size <= 4 && size >=0);

	// when head meets tail, it should either be empty or full
	head_meets_tail: assert property (headPTR == tailPTR |-> size == 0 || size == 4);

	// when size is less than 2, cannot dequeue both elements
	error_cannot_dequeue_more_than_size: assert property(size < 2 |-> !(io_dequeue_0_valid && io_dequeue_1_valid));

	// when fifo is full, don't enqueue anymore
	error_when_full_dont_enqueue: assert property (size == 4 |-> io_readyForEnqueue);

	// when fifo is empty, don't dequeue anymore
	error_when_empty_dont_dequeue: assert property (size == 0 |-> !(io_dequeue_1_valid || io_dequeue_0_valid));

	// tail pointer never overtakes head pointer
	tail_dont_overtake_head: assert property (tailPTR >= headPTR |-> ##1 tailPTR >= headPTR);


	// dequeued elements must be less than size
	dequeue_less_than_size: assert property (numOfDequeueElements <= size);

	// ordered input

endmodule
