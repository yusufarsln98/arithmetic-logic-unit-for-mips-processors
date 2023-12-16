module CarryLookaheadAdder4BitTestBench();

    // this is the test bench for the full adder
    wire[3:0] result;
    wire c_out;
    reg[3:0] a;
    reg[3:0] b;
    reg c_in;

    CarryLookaheadAdder4Bit carryLookaheadAdder4Bit(result, c_out, a, b, c_in);

    initial begin
    
      #0 a = 1; b = 2; c_in = 1'b0;
      #10 $display("time: %0t -> %d + %d + %d = %d", $time, a, b, c_in, result);
      #10 a = 3; b = 11; c_in = 1'b1;
      #10 $display("time: %0t -> %d + %d + %d = %d", $time, a, b, c_in, result);

    end

endmodule
