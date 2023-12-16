module Subtractor32BitTestBench();

    // this is the test bench for the subtractor
    wire[31:0] result;
    reg[31:0] a;
    reg[31:0] b;

    Subtractor32Bit subtractor32Bit(result, a, b);

    initial begin
    
      #0 a = 4294000000; b = 967295;
      #10 $display("time: %0t -> %d - %d = %d", $time, a, b, result);
      #10 a = 4294967295; b = 967295;
      #10 $display("time: %0t -> %d - %d = %d", $time, a, b, result);

    end

endmodule 