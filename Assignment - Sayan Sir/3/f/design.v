// Generic Mod-N Counter
module Mod_Counter #(parameter N = 2) (
    input clk, reset,
    output reg [$clog2(N)-1:0] count
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 0;
        else if (count == N-1)
            count <= 0;
        else
            count <= count + 1;
    end
endmodule
