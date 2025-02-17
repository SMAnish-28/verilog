`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Create Date: 02/15/2025 07:54:58 PM
// Creator Name: Sk Mahamamd Anish
// Module Name: bin2bcd
// Project Name: Code Converter
// 
// Dependencies: 
// 
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////

module gray2bin_tb;
    reg [3:0] gray;
    wire [3:0] binary;

    gray2bin g2b (
        .gray(gray),
        .binary(binary)
    );

    initial begin
        $monitor("%t	| gray = %b, binary = %b", $time, gray, binary);
	$dumpfile("gray2bin.vcd");
	$dumpvars(0, gray2bin_tb);	

        gray = 4'b0000; #10;
        gray = 4'b0001; #10;
        gray = 4'b0011; #10;
        gray = 4'b0010; #10;
        gray = 4'b0110; #10;
        gray = 4'b0111; #10;
        gray = 4'b0101; #10;
        gray = 4'b0100; #10;
        gray = 4'b1100; #10;
        gray = 4'b1101; #10;
        gray = 4'b1111; #10;
        gray = 4'b1110; #10;
        gray = 4'b1010; #10;
        gray = 4'b1011; #10;
        gray = 4'b1001; #10;
        gray = 4'b1000; #10;

        $finish;
    end
endmodule