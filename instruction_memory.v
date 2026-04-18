module instruction_memory(input [3:0] addr, output reg [15:0] instr);

always @(*) begin
    case(addr)
        0: instr = 16'b0000_0001_0010_0011; // ADD
        1: instr = 16'b0001_0010_0011_0100; // SUB
        2: instr = 16'b0010_0001_0000_0000; // LOAD
        default: instr = 0;
    endcase
end

endmodule
