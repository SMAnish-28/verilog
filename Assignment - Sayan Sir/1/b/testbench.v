`timescale 1ns/1ps
`include "design.v"

module tb;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] Sum;
    wire Cout;

    fa4 DUT (.a(a), .b(b), .cin(cin), .Sum(Sum), .Cout(Cout));

    initial begin
        $dumpfile("tb.vcd");
        $dumpvars(0, tb);
    end

    initial begin
        a = 4'b0001; b = 4'b0010; cin = 0; 
        #10;
        a = 4'b0101; b = 4'b1101; cin = 1; 
        #10;
        a = 4'b1111; b = 4'b0001; cin = 0; 
        #10;
        a = 4'b1010; b = 4'b0110; cin = 1; 
        #10;
        $finish;
    end
endmodule
