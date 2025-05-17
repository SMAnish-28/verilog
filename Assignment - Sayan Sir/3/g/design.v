module Up_Counter_Async_Clear (
    input clk, clr,
    output reg [3:0] count
);
    always @(posedge clk or posedge clr) begin
        if (clr)
            count <= 4'b0000;
        else
            count <= count + 1;
    end
endmodule
