`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Create Date: 02/15/2025 07:54:58 PM
// Creator Name: Sk Mahamamd Anish
// Module Name: byte2bcd
// Project Name: Code Converter
// 
// Dependencies: 
// 
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////

module byte2bcd(
	input  [7:0] byte_in,
	output [11:0] bcd_out
);

	reg [3:0] hundreds, tens, ones;
	reg [6:0] temp_reg;

	always @(*) begin
		hundreds = byte_in / 100;
		temp_reg = byte_in % 100;
		tens = temp_reg / 10;
		ones = temp_reg % 10;
	end

	assign bcd_out = {hundreds, tens, ones};

endmodule

