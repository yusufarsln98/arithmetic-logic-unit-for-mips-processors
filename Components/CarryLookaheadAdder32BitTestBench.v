module CarryLookaheadAdder32BitTestBench();

    // this is the test bench for the full adder
    wire[31:0] result;
	 wire c_out;
    reg[31:0] a;
    reg[31:0] b;
    reg c_in;

    CarryLookaheadAdder32Bit carryLookaheadAdder32Bit(result, c_out, a, b, c_in);

    initial begin
    
      #0 a = 4294000000; b = 967295; c_in = 1'b0;
      #10 $display("time: %0t -> %d + %d + %d = %d, cout = %d", $time, a, b, c_in, result, c_out);
      #10 a = 4294000000; b = 967295; c_in = 1'b1;
      #10 $display("time: %0t -> %d + %d + %d = %d, cout = %d", $time, a, b, c_in, result, c_out);

      end

endmodule 