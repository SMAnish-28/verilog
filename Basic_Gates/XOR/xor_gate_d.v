//EX-OR gate using data flow modeling
module xor_gate_d(a,b,y);
input a,b;
output y;

assign y = a ^ b;
                
endmodule