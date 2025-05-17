`timescale 1ns / 1ps
`include "design.v"

module tb;
    reg [3:0] a, b;
    reg mode;
    wire [3:0] Sum;
    wire Cout;

    add_sub DUT (.a(a), .b(b), .mode(mode), .Sum(Sum), .Cout(Cout));

    initial begin
        $dumpfile("tb.vcd");
        $dumpvars(0, tb);
    end

    initial begin
        // addition Mode=0; subtraction Mode=1
        a = 4'b0110; b = 4'b0010; mode = 0; 
        #10;
        a = 4'b1001; b = 4'b0011; mode = 1; 
        #10;
        a = 4'b1111; b = 4'b0001; mode = 0; 
        #10;
        a = 4'b1001; b = 4'b1100; mode = 1; 
        #10;
        $finish;
    end
endmodule
