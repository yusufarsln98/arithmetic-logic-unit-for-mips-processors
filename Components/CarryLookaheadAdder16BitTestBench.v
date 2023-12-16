module CarryLookaheadAdder16BitTestBench();

    // this is the test bench for the full adder
    wire[15:0] result;
    reg[15:0] a;
    reg[15:0] b;
    reg c_in;

    CarryLookaheadAdder16Bit carryLookaheadAdder16Bit(result, a, b, c_in);

    initial begin
    
      #0 a = 65000; b = 535; c_in = 1'b0;
      #10 $display("time: %0t -> %d + %d + %d = %d", $time, a, b, c_in, result);
      #10 a = 65000; b = 535; c_in = 1'b1;
      #10 $display("time: %0t -> %d + %d + %d = %d", $time, a, b, c_in, result);

      end

endmodule 