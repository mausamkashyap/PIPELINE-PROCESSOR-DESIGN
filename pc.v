module pc(input clk, input reset, output reg [3:0] pc_out);

always @(posedge clk) begin
    if (reset)
        pc_out <= 0;
    else
        pc_out <= pc_out + 1;
end

endmodule
