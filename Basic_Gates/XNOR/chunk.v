module xnor(input a, b, output reg y);
wire w1;
always @ (a, b)
begin
    if(a != b)
        w1 = 1
    else
        w1 = 0
    
    if(w1 == 0)
        y = 1
    else
        y = 0
end

endmodule