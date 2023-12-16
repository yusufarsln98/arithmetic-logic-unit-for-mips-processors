module SetLessThen32BitTestBench();

    // this is the test bench for the set less then
    wire[31:0] result;
    reg[31:0] a;
    reg[31:0] b;

    SetLessThen32Bit setLessThen32Bit(result, a, b);

    initial begin
    
      #0 a = 4294000000; b = 4294000001;
      #10 $display("time: %0t -> %d < %d = %d", $time, a, b, result[0]);
      #10 a = 4294000001; b = 4294000000;
      #10 $display("time: %0t -> %d < %d = %d", $time, a, b, result[0]);
		#10 a = 12; b = 21;
      #10 $display("time: %0t -> %d < %d = %d", $time, a, b, result[0]);
      #10 a = 21; b = 12;
      #10 $display("time: %0t -> %d < %d = %d", $time, a, b, result[0]);

    end

endmodule 