module Alu32BitTestBench();

    // this is the test bench for the full adder
    wire[31:0] result;
	  wire c_out;
    reg[31:0] a;
    reg[31:0] b;
	  reg[2:0] aluOp;
	  reg c_in;
    reg reset, CLK;
	 

    Alu32Bit alu32Bit(result, c_out, a, b, aluOp, c_in, reset, CLK);
	
    initial begin
     

      #0  a = 12112455; b = 232112352; aluOp = 3'b000; c_in = 0;
      #10 $display("time: %0t AND -> %b & %b = %b", $time, a, b, result);

      #10 a = 12112455; b = 232112352; aluOp = 3'b001; c_in = 0;
      #10 $display("time: %0t OR -> %b | %b = %b", $time, a, b, result);

      #10 a = 1212152; b = 2121122; aluOp = 3'b010; c_in = 0;
      #10 $display("time: %0t XOR -> %b ^ %b = %b", $time, a, b, result);

      #10 a = 1212152; b = 2121122; aluOp = 3'b011; c_in = 0;
      #10 $display("time: %0t NOR -> ~(%b | %b) = %b", $time, a, b, result);

      #10 a = 15; b = 12; aluOp = 3'b100; c_in = 0;
      #10 $display("time: %0t LESS THAN -> %d < %d = %d", $time, a, b, result[0]);
		
		  #10 a = 12; b = 15; aluOp = 3'b100; c_in = 0;
      #10 $display("time: %0t LESS THAN -> %d < %d = %d", $time, a, b, result[0]);

      #10 a = 15; b = 12; aluOp = 3'b101; c_in = 0;
      #10 $display("time: %0t ADD -> %d + %d = %d", $time, a, b, result);

      #10 a = 15; b = 12; aluOp = 3'b110; c_in = 0;
      #10 $display("time: %0t SUB -> %d - %d = %d", $time, a, b, result);

      #10 CLK = 1'b0; reset = 1'b1; a = 15; b = 6; aluOp = 3'b111; c_in = 0;
      #5 reset = 1'b0;
      #100 $display("time: %0t MOD -> %d mod %d = %d", $time, a, b, result);
    end
    
  always
    begin
      #1
      CLK = ~CLK;
    end

endmodule 
