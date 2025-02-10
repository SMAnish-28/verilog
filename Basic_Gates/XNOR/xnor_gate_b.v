//EX-NOR gate using behavioural modeling
module xor_gate_b(a,b,y);
input a;
output reg y;

always @ (a,b)
y = ~(a ^ b);
                
endmodule