// 32 Bit AND Module Test Bench
module And32BitTestBench();
	
	wire[31:0] result;
	reg[31:0] a;
	reg[31:0] b;

  And32Bit and32Bit(result, a, b);

  initial begin
  
    #0 a = 32'b0000_0000_0000_0000_0000_0000_0000_0000; b = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
    #10 $display("time: %0t -> %b & %b = %b", $time, a, b, result);
    #10 a = 32'b1010_1010_1010_1010_1010_1010_1010_1010; b = 32'b1010_1010_1010_1010_1010_1010_1010_1010;
    #10 $display("time: %0t -> %b & %b = %b", $time, a, b, result);
    #10 a = 32'b1010_1010_1010_1010_1010_1010_1010_1010; b = 32'b0101_0101_0101_0101_0101_0101_0101_0101;
    #10 $display("time: %0t -> %b & %b = %b", $time, a, b, result);
    #10 a = 32'b1111_1111_1111_1111_1111_1111_1111_1111; b = 32'b1111_1111_1111_1111_1111_1111_1111_1111;
	 #10 $display("time: %0t -> %b & %b = %b", $time, a, b, result);
	 
	 end

endmodule
