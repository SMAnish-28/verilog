`timescale 1ns/1ps
`include "design.v"

module tb;
    reg [3:0] A, B;
    wire A_gt_B, A_lt_B, A_eq_B;

    mag_comp DUT (.A(A), .B(B), .A_gt_B(A_gt_B), .A_lt_B(A_lt_B), .A_eq_B(A_eq_B));

    initial begin
        $dumpfile("tb.vcd");
        $dumpvars(0, tb);
    end

    initial begin
        A = 4'b1001; B = 4'b0101; #10;  // A > B
        A = 4'b0010; B = 4'b1000; #10;  // A < B
        A = 4'b1100; B = 4'b1100; #10;  // A == B
        $finish;
    end
endmodule
