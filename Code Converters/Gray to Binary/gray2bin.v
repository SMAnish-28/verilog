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

module gray2bin (
    input [3:0] gray,
    output [3:0] binary
);
    assign binary[3] = gray[3];
    assign binary[2] = gray[3] ^ gray[2];
    assign binary[1] = gray[3] ^ gray[2] ^ gray[1];
    assign binary[0] = gray[3] ^ gray[2] ^ gray[1] ^ gray[0];
endmodule