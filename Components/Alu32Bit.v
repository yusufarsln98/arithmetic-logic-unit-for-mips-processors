module Alu32Bit(output[31:0] result,
					 output c_out, // to get carry out bit of adder
					 input[31:0] a,
					 input[31:0] b,
					 input[2:0] aluOp,
					 input c_in, // to provide carry in to the adder
					 input reset,
					 input CLK
					 );
					 
	wire[31:0] andResult;
	wire[31:0] orResult;
	wire[31:0] xorResult;
	wire[31:0] norResult;
	wire[31:0] sltResult;
	wire[31:0] addResult;
	wire[31:0] subResult;
	wire[31:0] modResult;
	
	And32Bit and32Bit(andResult, a, b); 				// 000
	Or32Bit or32Bit(orResult, a, b); 					// 001
	Xor32Bit xor32Bit(xorResult, a, b); 				// 010
	Nor32Bit nor32Bit(norResult, a, b); 				// 011
	SetLessThen32Bit setLessThen32Bit(sltResult, a, b); // 100
	CarryLookaheadAdder32Bit carryLookaheadAdder32Bit(addResult, c_out, a, b, c_in); // 101
	Subtractor32Bit subtractor32Bit(subResult, a, b); 	// 110
	Mod32Bit mod32Bit(modResult, a, b, reset, CLK);	 	// 111

	
	Mux8x1_32Bit mux8x1_32Bit(result, 
							  andResult, 
							  orResult, 
							  xorResult, 
							  norResult, 
							  sltResult, 
							  addResult, 
							  subResult, 
							  modResult, 
							  aluOp);
endmodule 