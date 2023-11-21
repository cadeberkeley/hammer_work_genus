`include "Opcode.vh"

module BranchControl (
	input [2:0] fnc,
	input BrLt,
	input BrEq,

	output reg branch_pc_sel
);

always @(*) begin
  case(fnc)
    `FNC_BEQ: branch_pc_sel <= BrEq;
    `FNC_BNE: branch_pc_sel <= ~BrEq;
    `FNC_BLT, `FNC_BLTU: branch_pc_sel <= BrLt;
    `FNC_BGE, `FNC_BGEU: branch_pc_sel <= ~BrLt;
  endcase
end

endmodule
