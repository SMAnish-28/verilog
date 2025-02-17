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

module bin2gray_tb;
    reg [3:0] binary;
    wire [3:0] gray;

    bin2gray b2g (
        .binary(binary),
        .gray(gray)
    );

    initial begin
        $monitor("%t	| binary = %b, gray = %b", $time, binary, gray);
	$dumpfile("bin2gray.vcd");
	$dumpvars(0, bin2gray_tb);

        binary = 4'b0000; #10;
        binary = 4'b0001; #10;
        binary = 4'b0010; #10;
        binary = 4'b0011; #10;
        binary = 4'b0100; #10;
        binary = 4'b0101; #10;
        binary = 4'b0110; #10;
        binary = 4'b0111; #10;
        binary = 4'b1000; #10;
        binary = 4'b1001; #10;
        binary = 4'b1010; #10;
        binary = 4'b1011; #10;
        binary = 4'b1100; #10;
        binary = 4'b1101; #10;
        binary = 4'b1110; #10;
        binary = 4'b1111; #10;

        $finish;
    end
endmodule