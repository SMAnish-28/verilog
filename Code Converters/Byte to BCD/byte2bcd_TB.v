`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Create Date: 02/15/2025 07:54:58 PM
// Creator Name: Sk Mahamamd Anish
// Module Name: byte2bcd_TB
// Project Name: Code Converter
// 
// Dependencies: 
// 
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////

module byte2bcd_TB;

	reg  [7:0] byte_in;
	wire [11:0] bcd_out;

	byte2bcd DUT(.byte_in(byte_in), .bcd_out(bcd_out));

	integer i;
	
	initial begin
		for(i = 0; i < 256; i = i + 1) begin
			byte_in = i;
			#2;
		end
	end

	initial begin
		$monitor("%t	|	byte_in = %b --> bcd_out = %b ", $time, byte_in, bcd_out);
		$dumpfile("byte2bcd_TB.vcd") ;
		$dumpvars(0, byte2bcd_TB) ;
    	end

endmodule


