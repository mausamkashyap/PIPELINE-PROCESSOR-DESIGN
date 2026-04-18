module alu(
    input [15:0] A, B,
    input [1:0] opcode,
    output reg [15:0] result
);

always @(*) begin
    case(opcode)
        2'b00: result = A + B; // ADD
        2'b01: result = A - B; // SUB
        default: result = 0;
    endcase
end

endmodule
