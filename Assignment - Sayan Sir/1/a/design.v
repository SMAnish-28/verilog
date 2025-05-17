`timescale 1ns/1ps

module gates #(parameter n = 4) (a, b, y_and, y_or, y_nand, y_nor, y_xor, y_xnor);

    input [n-1:0] a, b;
    output [n-1:0] y_and, y_or, y_nand, y_nor, y_xor, y_xnor;

    assign y_and = a & b;
    assign y_or = a | b;
    assign y_nand = ~(a & b);
    assign y_nor = ~(a | b);
    assign y_xor = a ^ b;
    assign y_xnor = ~(a ^ b);

endmodule