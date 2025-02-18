`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2025 02:11:20 AM
// Design Name: 
// Module Name: design
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


module main(
    input clk,
//    output led
    output [3:0] led
    );
    
    reg [7:0] counter = 0;
    always @(posedge clk) begin
        counter <= (counter < 100) ? (counter + 1) : 0;
    end
    
    // assign 20% duty cycle
    assign led[0] = (counter < 20) ? 1 : 0;
    
    // assign 40% duty cycle
    assign led[1] = (counter < 40) ? 1 : 0;
    
    // assign 60% duty cycle
    assign led[2] = (counter < 60) ? 1 : 0;
    
    // assign 80% duty cycle
    assign led[3] = (counter < 80) ? 1 : 0;
    
endmodule
