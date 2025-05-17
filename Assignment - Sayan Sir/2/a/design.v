`timescale 1ns/1ps

module mx2(input [1:0] a, input sel, output y);
    assign y = (sel == 1'b0) ? a[0] : a[1];
endmodule

module mx4(input [3:0] a, input [1:0] sel, output y);
    assign y = (sel == 2'b00) ? a[0] : (sel == 2'b01) ? a[1] : (sel == 2'b10) ? a[2] : a[3];
endmodule

module mux4(input [3:0] a, input [1:0] sel output reg y);
    always @(*) begin
        case (sel)
            2'b00 : y = a[0];
            2'b01 : y = a[1];
            2'b10 : y = a[2];
            2'b11 : y = a[3];
            // default: y = 1'bx;
        endcase
    end
endmodule 

module mx8(input [7:0] a, input [2:0] sel, output reg y);
    always @(*) begin
        case(sel)
            3'b000: y = a[0];
            3'b001: y = a[1];
            3'b010: y = a[2];
            3'b011: y = a[3];
            3'b100: y = a[4];
            3'b101: y = a[5];
            3'b110: y = a[6];
            3'b111: y = a[7];
            // default: y = 1'b0;
        endcase
    end
endmodule

module mx16(input [15:0] a, input [3:0] sel, output reg y);
    always @(*) begin
        case (sel)
            4'b0000: y = a[0];
            4'b0001: y = a[1];
            4'b0010: y = a[2];
            4'b0011: y = a[3];
            4'b0100: y = a[4];
            4'b0101: y = a[5];
            4'b0110: y = a[6];
            4'b0111: y = a[7];
            4'b1000: y = a[8];
            4'b1001: y = a[9];
            4'b1010: y = a[10];
            4'b1011: y = a[11];
            4'b1100: y = a[12];
            4'b1101: y = a[13];
            4'b1110: y = a[14];
            4'b1111: y = a[15]; 
            // default: y = 1'bx;
        endcase
    end
endmodule