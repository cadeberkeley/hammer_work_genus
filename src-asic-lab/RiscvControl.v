`include "Opcode.vh"
`include "ALUop.vh"
`include "LoadOp.vh"
`include "StoreOp.vh"

module RiscvControl(
	input [31:0] inst,
	input BrEq,
	input BrLt,

	output reg PCSel,
	output reg isBranch,
	output reg [2:0] ImmSel,
	output reg RegWEn,
	output reg BrUn,
	output reg BSel,
	output reg ASel,
	output reg [3:0] ALUSel,
	output reg MemRW,
	output reg [1:0] WBSel,

	output reg [1:0] load_sel,
	output reg load_unsigned,

	output reg [1:0] store_sel,
	output reg [3:0] store_mask,

	output stall,

	output reg CSRSel,
	output reg CSRWEn

	//input [31:0] dx_inst,
	//input [31:0] mw_inst
);
/*
reg jmp_stall, hazard_stall;

// Detect Hazard --> stall
  StallControl DATA_HAZARD_STALL (
      .f_inst(inst),
      .dx_inst(dx_inst),
      .mw_inst(mw_inst),

      .hazard_stall(hazard_stall)
  );

  assign stall = jmp_stall || hazard_stall;
*/

reg jmp_stall;
assign stall = jmp_stall;

wire [6:0] opcode;
wire [2:0] funct3;
wire [6:0] funct7;
assign opcode = inst[6:0];
assign funct3 = inst[14:12];
assign funct7 = inst[31:25];

ALUdec ALU_DEC (
	.opcode(opcode),
	.funct(funct3),
	.add_rshift_type(funct7[5]),

	.ALUop(ALUSel)
);

ImmDec IMM_DEC (
	.opcode(opcode),

	.ImmSel(ImmSel)
);

always@(*) begin

  case(opcode)
    `OPC_ARI_RTYPE: begin
        PCSel <= 1'b0;
	isBranch <= 1'b0;
	RegWEn <= 1'b1;
        BrUn <= 1'bx;
        ASel <= 1'b0;
        BSel <= 1'b0;
        MemRW <= 1'b0;
	WBSel <= 2'b01;
        CSRSel <= 1'b0;
        CSRWEn <= 1'b0;
	load_sel <= 2'bxx;
	load_unsigned <= 1'bx;
	store_mask <= 4'b0000;
	jmp_stall <= 0;
    end
    `OPC_LOAD: begin
        PCSel <= 1'b0;
	isBranch <= 1'b0;
	RegWEn <= 1'b1;
	BrUn <= 1'bx;
	ASel <= 1'b0;
	BSel <= 1'b1;
	MemRW <= 1'b0;
	WBSel <= 2'b00;
	CSRWEn <= 1'b0;
	CSRSel <= 1'b0;
	case (funct3)
	  `FUNCT3_LW, `FUNCT3_LWU: load_sel <= `SEL_LW;
	  `FUNCT3_LH, `FUNCT3_LHU: load_sel <= `SEL_LH;
	  `FUNCT3_LB, `FUNCT3_LBU: load_sel <= `SEL_LB;
	endcase
	case (funct3)
	  `FUNCT3_LW, `FUNCT3_LH, `FUNCT3_LB: load_unsigned <= 1'b0;
	  `FUNCT3_LWU, `FUNCT3_LHU, `FUNCT3_LBU: load_unsigned <= 1'b1;
	endcase
	store_mask <= 4'b0000;
	store_sel <= 2'bxx;
	jmp_stall <= 0;
    end
    `OPC_ARI_ITYPE: begin
        PCSel <= 1'b0;
	isBranch <= 1'b0;
	RegWEn <= 1'b1;
	BrUn <= 1'bx;
	ASel <= 1'b0;
	BSel <= 1'b1;
	MemRW <= 1'b0;
	WBSel <= 2'b01;
	CSRWEn <= 1'b0;
	CSRSel <= 1'b0;
	load_sel <= 2'bxx;
	load_unsigned <= 1'bx;
	store_mask <= 4'b0000;
	store_sel <= 2'bxx;
	jmp_stall <= 0;
    end
    `OPC_STORE: begin
        PCSel <= 1'b0;
		isBranch <= 1'b0;
		RegWEn <= 1'b0;
		BrUn <= 1'bx;
		ASel <= 1'b0;
		BSel <= 1'b1;
		MemRW <= 1'b1;
		WBSel <= 2'b01;
		CSRWEn <= 1'b0;
		CSRSel <= 1'b0;
		load_sel <= 2'bxx;
		load_unsigned <= 1'bx;
		case (funct3)
		3'b010: begin
				store_mask <= 4'b1111;
				store_sel  <= 2'b10;
			end
		3'b001: begin
				store_mask <= 4'b0011;
				store_sel <= 2'b01;
			end
		3'b000: begin
				store_mask <= 4'b0001;
				store_sel <= 2'b00;
			end
		endcase
		jmp_stall <= 0;
    end
    `OPC_BRANCH: begin
        PCSel <= 1'b0;
		isBranch <= 1'b1;
		RegWEn <= 1'b0;
		case(funct3)
		`FNC_BLTU, `FNC_BGEU: BrUn <= 1'b1;
		default: 		BrUn <= 1'b0;
		endcase
		ASel <= 1'b1;
		BSel <= 1'b1;
		MemRW <= 1'b0;
		WBSel <= 2'b01;
		CSRWEn <= 1'b0;
		CSRSel <= 1'b0;
		load_sel <= 2'bxx;
		load_unsigned <= 1'bx;
		store_mask <= 4'b0000;
		store_sel <= 2'bxx;
		jmp_stall <= 1'b0;
    end
    `OPC_AUIPC: begin
        PCSel <= 1'b0;
		isBranch <= 1'b0;
		RegWEn <= 1'b1;
		BrUn <= 1'bx;
		ASel <= 1'b1;
		BSel <= 1'b1;
		MemRW <= 1'b0;
		WBSel <= 2'b01;
		CSRWEn <= 1'b0;
		CSRSel <= 1'b0;
		load_sel <= 2'bxx;
		load_unsigned <= 1'bx;
		store_mask <= 4'b0000;
		store_sel <= 2'bxx;
		jmp_stall <= 0;
    end
    `OPC_LUI: begin
        PCSel <= 1'b0;
		isBranch <= 1'b0;
		RegWEn <= 1'b1;
		BrUn <= 1'bx;
		ASel <= 1'b0;
		BSel <= 1'b1;
		MemRW <= 1'b1;
		WBSel <= 2'b01;
		CSRWEn <= 1'b0;
		CSRSel <= 1'b0;
		load_sel <= 2'bxx;
		load_unsigned <= 1'bx;
		store_mask <= 4'b0000;
		jmp_stall <= 0;
    end
    `OPC_JAL: begin
        PCSel <= 1'b1;
		isBranch <= 1'b0;
		RegWEn <= 1'b1;
		BrUn <= 1'bx;
		ASel <= 1'b1;
		BSel <= 1'b1;
		MemRW <= 1'b0;
		WBSel <= 2'b10;
		CSRWEn <= 1'b0;
		CSRSel <= 1'b0;
		load_sel <= 2'bxx;
		load_unsigned <= 1'bx;
		store_mask <= 4'b0000;
		store_sel <= 2'bxx; // you don't do this
		jmp_stall <= 1;
    end
    `OPC_JALR: begin
        PCSel <= 1'b1;
		isBranch <= 1'b0;
		RegWEn <= 1'b1;
		BrUn <= 1'bx;
		ASel <= 1'b0;
		BSel <= 1'b1;
		MemRW <= 1'b0;
		WBSel <= 2'b10;
		CSRWEn <= 1'b0;
		CSRSel <= 1'b0;
		load_sel <= 2'bxx;
		load_unsigned <= 1'bx;
		store_mask <= 4'b0000;
		store_sel <= 2'bxx;
		jmp_stall <= 1;
    end
    `OPC_CSR: begin
        PCSel <= 1'b0;
		isBranch <= 1'b0;
		RegWEn <= 1'b0;
		BrUn <= 1'b0;
		ASel <= 1'b0;
		BSel <= 1'b0;
		MemRW <= 1'b0;
		WBSel <= 2'b00;
		case(funct3)
		`FNC_RW:  CSRSel <= 1'b0;
		`FNC_RWI: CSRSel <= 1'b1;
		endcase
		CSRWEn <= 1'b1;
		load_sel <= 2'bxx;
		load_unsigned <= 1'bx;
		store_mask <= 4'b0000;
		store_sel <= 2'bxx;
		jmp_stall <= 0;
    end
	default: begin
		PCSel <= 1'b0;
		isBranch <= 1'b0;
		RegWEn <= 1'b0;
		BrUn <= 1'b0;
		ASel <= 1'b0;
		BSel <= 1'b0;
		MemRW <= 1'b0;
		WBSel <= 2'b00;
		CSRSel <= 1'b0;
		CSRWEn <= 1'b0;
		load_sel <= 2'b00;
		load_unsigned <= 1'b0;
		store_mask <= 4'b0000;
		store_sel <= 2'b00;
		jmp_stall <= 0;
	end
  endcase
end

endmodule
