module Mod32Bit(
	output [31:0] result,
	input [31:0] a,
	input [31:0] b,
	input reset,
	input CLK
);

wire wx, wwe, ws; // x, we, s wires respectively (x for result of comparison in FSM)

ModControlUnit control(
	reset,
	CLK,
	wx,
	wwe,
	ws
);

ModDataPathWithSUBAndSLT datapath(
	CLK,
	ws,
	wwe,
	a,
	b,
	wx,
	result
);

endmodule
