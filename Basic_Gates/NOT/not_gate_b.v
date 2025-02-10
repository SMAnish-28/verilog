// NOT gate using behavioural modeling
module not_gate_b(a, y);
input a;
output reg y;

always @ (a)
y = ~a;

endmodule