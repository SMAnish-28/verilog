`timescale 1ns/1ps
`include "design.v"

module tb;
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;

    cla DUT (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

    initial begin
        $dumpfile("tb.vcd");
        $dumpvars(0, tb);
    end

    initial begin
        A = 4'b0110; B = 4'b0010; Cin = 0; 
        #10;
        A = 4'b0101; B = 4'b1101; Cin = 1; 
        #10;
        A = 4'b1111; B = 4'b0001; Cin = 0; 
        #10;
        A = 4'b1001; B = 4'b0011; Cin = 1; 
        #10;
        $finish;
    end
endmodule
