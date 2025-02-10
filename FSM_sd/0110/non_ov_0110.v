`timescale 1ns/1ps

module non_ov_0110(
    input clk,
    input rst,
    input in,
    output reg out
    );

    // parameter s0 = 1b'00, s1 = 1b'01, s2 = 1b'10, s3 = 1b'11;
    parameter s0 = 0, s1 = 1, s2 = 2, s3 = 3;
    reg [1:0] state;

    always @(posedge clk) begin
        if(rst == 1'b1) begin
            state <= s0;
            out <= 1'b0;
        end
        else begin
            case(state)
                s0: begin
                    state <= in ? s0 : s1;
                    out <= 0;
                end 
                s1: begin
                    state <= in ? s2 : s1;
                    out <= 0;
                end
                s2: begin
                    state <= in ? s3 : s1;
                    out <= 0;
                end
                s3: begin
                    state <= in ? s0 : s0;
                    out <= in ? 0 : 1;
                end
                default: begin
                    state <= s0;
                    out <= 0;
                end
            endcase
        end
    end

endmodule