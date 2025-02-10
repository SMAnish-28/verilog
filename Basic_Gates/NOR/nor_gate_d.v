//NOR gate using data flow modeling
module nor_gate_d(a,b,y);
input a,b;
output y;

assign y = ~(a | b);
                
endmodule