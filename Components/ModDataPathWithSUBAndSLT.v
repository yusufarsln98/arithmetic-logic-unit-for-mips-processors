module ModDataPathWithSUBAndSLT(
    input CLK,
    input s,
    input we,
    input [31:0] a,
    input [31:0] b,
    output reg x,
    output reg [31:0] result
);
    // Subtractor32Bit and SetLessThen32Bit modules will be used

    wire[31:0] subtractionResult;
    wire[31:0] setLessThenResult;
    reg[31:0] temp;

    Subtractor32Bit subtractor32Bit(
        subtractionResult,
        temp,
        b
    );

    SetLessThen32Bit setLessThen32Bit(
        setLessThenResult,
        temp,
        b
    );

    always @(posedge CLK)
        begin
            if (!we && !s) 
                begin
                    temp <= a; 
                end
            else if (we && !s)
                if (!setLessThenResult[0])
                    begin
                        temp <= subtractionResult;
                    end
        end

    always @(*)
        begin
            x = 1'b0; // Initialize 'x' to 0

            // If 'temp' is less than 'b', assign 'temp' to 'result' and set 'x' to 1
            if (setLessThenResult[0])
                begin
                    result = temp; // Assign 'temp' to 'result'
                    x = 1'b1;      // Set 'x' to 1 to indicate completion
                end
        end


endmodule
