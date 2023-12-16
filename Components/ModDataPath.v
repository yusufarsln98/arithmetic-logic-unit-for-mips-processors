module ModDataPath(
    input CLK,
    input s,
    input we,
    input [31:0] a,
    input [31:0] b,
    output reg x,
    output reg [31:0] result
);
    reg [31:0] temp;    // Temporary storage register for subtraction
    reg [31:0] subtractionResult; // Result of subtraction

    // Register to store 'temp' value when 'we' is active
    always @(posedge CLK)
        begin
            if (!we && !s) 
                begin
                    temp <= a; 
                end
            if (we)
                begin
                    subtractionResult <= temp - b; // Subtract 'b' from 'temp' on clock edge
                    temp <= subtractionResult;     // Store the result in 'temp'
                end
        end

    // Output control logic
    always @(*)
        begin
            x = 1'b0; // Initialize 'x' to 0

            // If 'temp' is less than 'b', assign 'temp' to 'result' and set 'x' to 1
            if (temp < b)
                begin
                    result = temp; // Assign 'temp' to 'result'
                    x = 1'b1;      // Set 'x' to 1 to indicate completion
                end
        end

endmodule
