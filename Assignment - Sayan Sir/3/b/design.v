module Pulse_Generator (
    input clk, reset,
    output reg pulse
);
    reg [2:0] count;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 0;
            pulse <= 0;
        end else begin
            count <= count + 1;
            pulse <= (count == 3'd4); // Pulse every 5 clocks
        end
    end
endmodule
