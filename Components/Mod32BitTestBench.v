module Mod32BitTestBench();

  // Test bench for MOD operation
  reg [31:0] a, b;
  reg reset, CLK;
  wire [31:0] result; 

  Mod32Bit mod32Bit(
    result,
    a,
    b,
    reset,
    CLK
  );

  initial 
    begin
      CLK = 1'b0;
      reset = 1'b1;
      a = 10;
      b = 4;
    
      #5
      reset = 1'b0;
      
      #100
      $display("Time=%0t a=%d, b=%d, result=%d", $time, a, b, result);
      
      #10
      reset = 1'b1;
        a = 74;
        b = 32'd7;
      
      #5
      reset = 1'b0;
      
      #100
      $display("Time=%0t %d MOD %d = %d", $time, a, b, result);
    end

  always
    begin
      #1 // Wait 1 time unit
      CLK = ~CLK;
    end
	
endmodule