module full_adder_mealy(
    input wire clk,
    input wire reset,
    input wire a,
    input wire b,
    input wire cin,
    output reg sum,
    output reg cout
);

    // Define State Encoding using `parameter` instead of `typedef enum`
    parameter S0 = 2'b00;  // No carry state
    parameter S1 = 2'b01;  // Carry state

    // State registers
    reg [1:0] current_state, next_state;

    // Sequential Block: State Transition
    always @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= S0;
        else
            current_state <= next_state;
    end

    // Combinational Block: Next State & Output Logic
    always @(*) begin
        // Default values
        next_state = current_state;
        sum = 0;
        cout = 0;

        case (current_state)
            S0: begin
                {cout, sum} = a + b + cin; // Compute sum and carry directly
                next_state = (cout) ? S1 : S0; // Move to carry state if cout = 1
            end
            S1: begin
                {cout, sum} = a + b + cin;
                next_state = (cout) ? S1 : S0; // Stay in carry state if cout = 1
            end
        endcase
    end

endmodule

