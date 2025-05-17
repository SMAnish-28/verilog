`timescale 1ns/1ps
`include "design.v"

module tb();

reg[3:0] a, b;
wire [3:0] y_and, y_or, y_nand, y_nor, y_xor, y_xnor;

gates #(.n(4)) uut (
    .a(a),
    .b(b),
    .y_and(y_and),
    .y_or(y_or),
    .y_nand(y_nand),
    .y_nor(y_nor),
    .y_xor(y_xor),
    .y_xnor(y_xnor)
);

initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
end

initial begin
    a = 4'b1010; b = 4'b1100; 
    #10;
    a = 4'b0001; b = 4'b0011;
    #10;
    a = 4'b1111; b = 4'b0000;
    #10;
    a = 4'b1010; b = 4'b1010;
    #10;
    $finish;
end

endmodule