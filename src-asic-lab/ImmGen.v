`include "ImmCode.vh"
`include "Opcode.vh"

module ImmGen(
    input [2:0] ImmSel,
    input [31:0] inst,
    output [31:0] immOut
);

reg [31:0] imm;
assign immOut = imm;
wire [7:0] opcode = inst[7:0];

always@(*) begin
  case(ImmSel)
    `IMM_I_TYPE: begin
		   case(opcode)
			`OPC_LOAD: imm <= { {20{inst[29]}}, inst[31:20] };
			default: imm <= { {20{inst[31]}}, inst[31:20] };
		   endcase
		 end
    `IMM_S_TYPE: imm <= { {20{inst[31]}}, inst[31:25], inst[11:7] };
    `IMM_B_TYPE: imm <= { {19{inst[31]}}, inst[31], inst[7],
				inst[30:25], inst[11:8], 1'b0 };
    `IMM_U_TYPE: imm <= { inst[31:12], {12{1'b0}} };
    `IMM_JAL:    imm <= { {11{inst[31]}}, inst[31], inst[19:12],
				inst[20], inst[30:21], 1'b0 };
    `IMM_JALR:   imm <= { {20{inst[31]}}, inst[31:20] };
    `IMM_CSR:    imm <= { {27{1'b0}}, inst[4:0] };
    default: imm <= 32'b0;
  endcase
end

endmodule
