module ModControlUnit(
	input reset,
	input CLK,
	input x,
	output reg we,
	output reg s
);

	reg [1:0] currentState, nextState;

	// Define states for the FSM
	localparam 	START = 2'b00,
				SUBTRACT   = 2'b01,
				RESULT  = 2'b10;
				
	// State Registers
	always @(posedge CLK)
	begin
		if(reset)
			currentState <= START; // Initialize to START state on reset
			
		else
			currentState <= nextState; // Move to the next state
	end

	//Next State Logic
	always @(*)
		begin
			case(currentState)
				START: 
					begin
						nextState = SUBTRACT; // Transition to SUBTRACT state from START
					end
				SUBTRACT: 
					begin
						if(x)
                            nextState = RESULT; // Move to RESULT state if 'x' condition is met
						else
                            nextState = SUBTRACT; // Stay in SUBTRACT state if 'x' condition is not met
					end
				RESULT: 
					begin
						// No more states.
					end
			endcase
		end

	//Output Logic
	always @(*)
		begin
			s = 1'b0;
			we = 1'b0;
			case(currentState)
				START: 	
					begin
						s = 1'b0;
						we = 1'b0;
					end
				
				SUBTRACT: 
					begin
						s = 1'b0;
						we = 1'b1;
					end
				
				RESULT: 
					begin
						s = 1'b1;
						we = 1'b0;
					end
			endcase
		end
	
endmodule