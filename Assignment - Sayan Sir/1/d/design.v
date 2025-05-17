`timescale 1ns/1ps

module cla (
    input [3:0] A, B,
    input Cin,
    output [3:0] Sum,
    output Cout
);
    wire [3:0] P, G;
    wire [3:0] C;

    assign P = A ^ B;    // Propagate
    assign G = A & B;    // Generate

    assign C[0] = Cin;
    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & C[1]);
    assign C[3] = G[2] | (P[2] & C[2]);
    assign Cout = G[3] | (P[3] & C[3]);

    assign Sum = P ^ C;
endmodule
