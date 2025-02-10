//OR gate using behavioural modeling
module or_gate_b(a,b,y);
input a;
output y;

always @ (a,b)
y = a | b;
                
endmodule