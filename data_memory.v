module data_memory(
    input [3:0] addr,
    output reg [15:0] data_out
);

reg [15:0] memory [0:15];

initial begin
    memory[0] = 10;
end

always @(*) begin
    data_out = memory[addr];
end

endmodule
