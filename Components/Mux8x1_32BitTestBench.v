module Mux8x1_32BitTestBench();

	wire[31:0] result;
	reg[31:0] a;
	reg[31:0] b;
	reg[31:0] c;
	reg[31:0] d;
	reg[31:0] e;
	reg[31:0] f;
	reg[31:0] g;
	reg[31:0] h;
	reg[2:0] op;

  Mux8x1_32Bit mux8x1_32Bit(result, a, b, c, d, e, f, g, h, op);

  initial begin
  
	#0 a = 123; b = 456; c = 789; d = 101112; e = 131415; f = 161718; g = 192021; h = 222324; op = 0;
	#10 $display("result = %d", result);
	#10 a = 123; b = 456; c = 789; d = 101112; e = 131415; f = 161718; g = 192021; h = 222324; op = 1;
	#10 $display("result = %d", result);
	#10 a = 123; b = 456; c = 789; d = 101112; e = 131415; f = 161718; g = 192021; h = 222324; op = 2;
	#10 $display("result = %d", result);
	#10 a = 123; b = 456; c = 789; d = 101112; e = 131415; f = 161718; g = 192021; h = 222324; op = 3;
	#10 $display("result = %d", result);
	#10 a = 123; b = 456; c = 789; d = 101112; e = 131415; f = 161718; g = 192021; h = 222324; op = 4;
	#10 $display("result = %d", result);
	#10 a = 123; b = 456; c = 789; d = 101112; e = 131415; f = 161718; g = 192021; h = 222324; op = 5;
	#10 $display("result = %d", result);
	#10 a = 123; b = 456; c = 789; d = 101112; e = 131415; f = 161718; g = 192021; h = 222324; op = 6;
	#10 $display("result = %d", result);
	#10 a = 123; b = 456; c = 789; d = 101112; e = 131415; f = 161718; g = 192021; h = 222324; op = 7;
	#10 $display("result = %d", result);

  end

endmodule 
