module SetLessThen32Bit(output result, input [31:0] a, b);

	wire[31:0] subResult;

	Subtractor32Bit subtractor32Bit(subResult, a, b);

	and and1(result, subResult[31], 1'b1); // to save result 
	
endmodule
