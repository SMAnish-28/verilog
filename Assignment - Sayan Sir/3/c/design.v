module UpDown_Ripple_Counter (
    input clk, reset, up_down,
    output reg [2:0] count
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 3'b000;
        else if (up_down)
            count <= count + 1;
        else
            count <= count - 1;
    end
endmodule
