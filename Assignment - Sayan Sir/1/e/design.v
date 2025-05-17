`timescale 1ns/1ps

module parity (
    input [3:0] data,
    output parity_out,
    input parity_in,
    output error
);
    assign parity_out = ^data;  // XOR all bits for parity generation
    assign error = (parity_in != parity_out);
endmodule
