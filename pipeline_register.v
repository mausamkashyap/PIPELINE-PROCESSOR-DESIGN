module pipeline_registers(input clk,
    input [15:0] instr_in,
    output reg [15:0] instr_out
);

always @(posedge clk) begin
    instr_out <= instr_in;
end

endmodule
