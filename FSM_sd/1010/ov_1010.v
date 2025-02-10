`timescale 1ns/1ps

module ov_1010(
    input clk,
    input rst,
    input in,
    output reg out
    );

parameter s0 = 0, s1 = 1, s10 = 2, s101 = 3, s1010 = 4;
// parameter s0 = 0, s1 = 1, s2 = 2, s3 = 3, s4 = 4;
// parameter s0 = 3b'000, s1 = 3b'001, s2 = 3b'010, s3 = 3b'011, s4 = 3b'100;
reg [2:0] ps, ns;

// reset logic
always @(posedge clk) begin
    if(rst == 1) begin
        out <= 0;
        ps <= s0;
    end
    else ps <= ns;
end

// out + state decode logic
always @(ps, in) begin
    case(ps)
        s0: begin
            out = 0;
            ns = in ? s1 : s0;
        end
        s1: begin
            out = 0;
            ns = in ? s1 : s10;
        end
        s10: begin
            out = 0;
            ns = in ? s101 : s0;
        end
        s101: begin
            out = 0;
            ns = in ? s1 : s1010;
        end
        s1010: begin
            out = 1;
            ns = in ? s101 : s0;
        end
        default: begin
            out = 0;
            ns = s0;
        end
    endcase
end

endmodule