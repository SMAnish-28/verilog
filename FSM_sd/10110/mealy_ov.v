`timescale 1ns/1ps

module mealy_ov(
    input clk,
    input rst,
    input in,
    output reg out
    );

    parameter s0 = 0, s1 = 1, s10 = 2, s101 = 3, s1011 = 4;
    reg[2:0] state;
    
    always @(posedge clk) begin
        if(rst == 1'b1) begin
            state <= s0;
            out <= 1'b0;
        end
        else begin
            case(state)
                s0: begin
                    state <= in ? s1 : s0;
                    out <= 0;
                end
                s1: begin
                    state <= in ? s1 : s10;
                    out <= 0;
                end
                s10: begin
                    state <= in ? s101 : s0;
                    out <= 0;
                end
                s101: begin
                    state <= in ? s1011 : s101;
                    out <= 0;
                end
                s1011: begin
                    state <= in ? s1 : s10;
                    out <= in ? 0 : 1;
                end 
            endcase
        end
    end

endmodule