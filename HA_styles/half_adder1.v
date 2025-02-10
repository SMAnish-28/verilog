module half_adder(input wire A, B, output wire S, C);

// structural design

xor_gate U1(.A, .B, .S);
and_gate U2(.A, .B, .C);

endmodule

module xor_gate(input wire A, B, output wire S);

assign S = A ^ B;

endmodule
module and_gate(input wire A, B. output wire C);

assign C = A & B;

endmodule
