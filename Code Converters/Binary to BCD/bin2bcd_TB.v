`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Create Date: 02/15/2025 07:54:58 PM
// Creator Name: Sk Mahamamd Anish
// Module Name: bin2bcd_TB
// Project Name: Code Converter
// 
// Dependencies: 
// 
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////

module bin2bcd_TB;

	reg  [7:0] bin_in;
	wire [7:0] bcd_out;

	bin2bcd DUT(.bin_in(bin_in), .bcd_out(bcd_out));

	integer i;
	
	initial begin
		for(i = 0; i < 60; i = i + 1) begin
			bin_in = i;
			#2;
		end
	end

	initial begin
		$monitor("%t	|	bin_in = %b --> bcd_out = %b ", $time, bin_in, bcd_out);
		$dumpfile("bin2bcd_TB.vcd") ;
		$dumpvars(0, bin2bcd_TB) ;
    end

endmodule


