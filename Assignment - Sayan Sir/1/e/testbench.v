`timescale 1ns / 1ps
`include "design.v"

module tb;
    reg [3:0] data;
    reg parity_in;
    wire parity_out, error;

    parity DUT (
        .data(data), 
        .parity_out(parity_out), 
        .parity_in(parity_in), 
        .error(error)
    );

    initial begin
        $dumpfile("tb.vcd");
        $dumpvars(0, tb);
    end

    initial begin
        data = 4'b1101; parity_in = 1; #10;  // Correct parity
        data = 4'b1010; parity_in = 0; #10;  // Incorrect parity
        data = 4'b0000; parity_in = 0; #10;  // No error
        data = 4'b1111; parity_in = 1; #10;  // Error
        $finish;
    end
endmodule
