`include "Opcode.vh"
`include "ImmCode.vh"

module ImmDec(
	input [6:0] opcode,

	output reg [2:0] ImmSel
);

always@(*) begin
  case(opcode)
    `OPC_ARI_RTYPE:	ImmSel <= `IMM_R_TYPE;
    `OPC_LOAD:		ImmSel <= `IMM_I_TYPE;
    `OPC_ARI_ITYPE:	ImmSel <= `IMM_I_TYPE;
    `OPC_STORE:		ImmSel <= `IMM_S_TYPE;
    `OPC_BRANCH:	ImmSel <= `IMM_B_TYPE;
    `OPC_AUIPC,`OPC_LUI:ImmSel <= `IMM_U_TYPE;
    `OPC_JAL:		ImmSel <= `IMM_JAL;
    `OPC_JALR:		ImmSel <= `IMM_JALR;
    `OPC_CSR:		ImmSel <= `IMM_CSR;
  endcase
end

endmodule
