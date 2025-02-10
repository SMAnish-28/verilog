//NOR gate using behavioural modeling
module nor_gate_b(a,b,y);
input a;
output reg y;

always @ (a,b)
y = ~(a | b);
                
endmodule