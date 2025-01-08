`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/08/2025 10:57:52 PM
// Design Name: 
// Module Name: half_adder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module half_adder_tb();
reg t_a, t_b;
wire SUM, CARRY;

half_adder dut(.a(t_a), .b(t_b), .sum(SUM), .carry(CARRY));

initial begin
t_a = 0; t_b = 0;
#10
t_a = 0; t_b = 1;
#10
t_a = 1; t_b = 0;
#10
t_a = 1; t_b = 1;
#10
$stop;
end
endmodule
