module register_file(
    input clk,
    input [3:0] rs, rt, rd,
    input [15:0] write_data,
    input reg_write,
    output [15:0] read_data1, read_data2
);

reg [15:0] regfile [0:15];

assign read_data1 = regfile[rs];
assign read_data2 = regfile[rt];

always @(posedge clk) begin
    if (reg_write)
        regfile[rd] <= write_data;
end

endmodule
