module Shift_Register (
    input clk, reset, dir, // dir = 1 for right, 0 for left
    input [2:0] data_in,
    output reg [2:0] out
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            out <= data_in;
        else if (dir)
            out <= {1'b0, out[2:1]};
        else
            out <= {out[1:0], 1'b0};
    end
endmodule
