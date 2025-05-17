module fa (
    input a, b, cin,
    output Sum, Cout
);
    assign Sum = a ^ b ^ cin;
    assign Cout = (a & b) | (b & cin) | (cin & a);
endmodule

module fa4 (
    input [3:0] a, b,
    input cin,
    output [3:0] Sum,
    output Cout
);
    wire [2:0] carry;

    fa Fa0(a[0], b[0], cin, Sum[0], carry[0]);
    fa Fa1(a[1], b[1], carry[0], Sum[1], carry[1]);
    fa Fa2(a[2], b[2], carry[1], Sum[2], carry[2]);
    fa Fa3(a[3], b[3], carry[2], Sum[3], Cout);
endmodule
