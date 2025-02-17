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

module bin2bcd(
	input  [7:0] bin_in,
	output [7:0] bcd_out
);

	reg [3:0] tens, ones;

	always @(*) begin
		tens = bin_in / 10;
		ones = bin_in % 10;
	end

	assign bcd_out = {tens, ones};

endmodule


