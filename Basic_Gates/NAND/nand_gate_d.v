//NAND gate using data flow modeling
module nand_gate_d(a,b,y);
input a,b;
output y;

assign y = ~(a & b);
                
endmodule