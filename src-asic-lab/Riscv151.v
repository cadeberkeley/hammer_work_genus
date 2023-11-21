module Riscv151 (

    input clk,
    input reset,

    // Memory system ports
    output [31:0] dcache_addr,
    output [31:0] icache_addr,
    output [3:0] dcache_we,
    output dcache_re,
    output icache_re,
    output [31:0] dcache_din,
    input [31:0] dcache_dout,
    input [31:0] icache_dout,
    input stall,
    output [31:0] csr

);

wire [31:0] f_pc, dx_pc, mw_pc;
wire [31:0] f_inst, dx_inst, mw_inst;
wire f_stall, dx_stall, mw_stall;
wire [31:0] dx_ALU_out, mw_ALU_out, mw_WBMux_out;
wire [31:0] dx_rf_out_B;
wire [3:0]  dx_store_mask;
wire BrEq, BrLt;
wire dx_branch_PCSel;
wire mw_isBranch, mw_branch_PCSel, mw_Ctrl_PCSel;
wire [4:0] mw_rd;
wire mw_regwe, mw_PCSel;
wire [1:0] dx_store_sel;
wire hazard_dx_ra, hazard_dx_rb, hazard_mw_ra, hazard_mw_rb;
wire hazard_mw_dx_ra, hazard_mw_dx_rb;
wire mw_ctrl_stall;

wire f_ctrl_stall;
wire dx_isJump;

wire dx_nop;

wire [31:0] next_pc;
wire [31:0] curr_pc;


wire dx_branch_taken, dx_isBranch;
assign dx_branch_taken = dx_isBranch && dx_branch_PCSel;

reg stall_next;
always @(posedge clk) stall_next <= stall;

assign icache_addr = curr_pc;
assign icache_re = 1'b1;

wire mw_branch_taken = mw_branch_PCSel && mw_isBranch;

PCGen PC_GEN (
    .clk(clk),
    .rst(reset),

    .pc_sel(dx_branch_taken ? 1'b1 : dx_PCSel),
    .stall(stall),

    .alu_pc(dx_ALU_out),
    .curr_pc(f_pc),

    .next_pc(curr_pc)
);


RiscvDataFetch DATA_F (
    .clk(clk),
    .rst(reset),

    .f_inst(icache_dout),
    .pc(curr_pc),

    .f_inst_out(f_inst),
    .f_pc_out(f_pc),
    .f_ctrl_stall(f_ctrl_stall)
);
    
    



wire [31:0] dx_rf_out_A;

RiscvDataDX DATA_DX (
    .clk(clk),
    .rst(reset),

    .f_inst(stall_next || dx_branch_taken || mw_branch_taken || dx_isJump || mw_PCSel/* || mw_ctrl_stall*/ ? 32'b0 : f_inst),
    .f_pc(f_pc),

    .mw_pc(mw_pc),
    .mw_ALU_out(mw_ALU_out),
    .mw_WBMux_out(mw_WBMux_out),
    .hazard_mw_dx_ra(hazard_mw_dx_ra),
    .hazard_mw_dx_rb(hazard_mw_dx_rb),

    .rf_write_data(mw_WBMux_out),
    .rf_rd(mw_rd),
    .rf_regwe(mw_regwe),

    .dx_BrEq(dx_BrEq),
    .dx_BrLt(dx_BrLt),

    .dx_inst(dx_inst),
    .dx_pc(dx_pc),
    .dx_ALU_out(dx_ALU_out),
    .dx_rf_out_A_forwarded(dx_rf_out_A),
    .dx_rf_out_B_forwarded(dx_rf_out_B),
    .dx_store_mask(dx_store_mask),
    .dx_branch_PCSel(dx_branch_PCSel),
    .dx_PCSel(dx_PCSel),
    .dx_isBranch(dx_isBranch),
    .dx_isJump(dx_isJump),

	.dx_MemRW(dx_MemRW),
	.dcache_dout(dcache_dout),
	.dx_store_sel(dx_store_sel)
);


RiscvDataMW DATA_MW (
    .clk(clk),
    .rst(reset),

    .dx_inst(dx_inst),
    .dx_pc(dx_pc),
    .dx_ALU_out(dx_ALU_out),
    .dx_rf_out_A(dx_rf_out_A),
    .dx_rf_out_B(dx_rf_out_B),
    .dx_store_mask(dx_store_mask),
    .dx_branch_PCSel(dx_branch_PCSel),

    .mw_inst(mw_inst),
    .mw_pc(mw_pc),
    .mw_stall(mw_stall),
    .mw_ctrl_stall(mw_ctrl_stall),

    .mw_rd(mw_rd),
    .mw_WBMux_out(mw_WBMux_out),
    .mw_regwe(mw_regwe),
    .mw_PCSel(mw_PCSel),
    .dx_isBranch(dx_isBranch),
	.mw_isBranch(mw_isBranch),
    .mw_branch_PCSel(mw_branch_PCSel),
    .mw_ALU_out(mw_ALU_out),

	.dx_MemRW(dx_MemRW),
	.dcache_dout(dcache_dout),
	.dx_store_sel(dx_store_sel),

    .mem_stall(stall),

    .dcache_addr(dcache_addr),
    .dcache_we(dcache_we),
    .dcache_re(dcache_re),
    .dcache_din(dcache_din),
    
    .csr(csr)
);

//============ Hazard Detection ===============//

// Detect Hazard --> stall
HazardDetect DATA_HAZARD (
    .next_inst(icache_dout),
    .dx_inst(dx_inst),
    .mw_inst(mw_inst),

    .hazard_dx_ra(hazard_dx_ra),
    .hazard_dx_rb(hazard_dx_rb),
    .hazard_mw_ra(hazard_mw_ra),
    .hazard_mw_rb(hazard_mw_rb),
    .hazard_mw_dx_ra(hazard_mw_dx_ra),
    .hazard_mw_dx_rb(hazard_mw_dx_rb)
);


endmodule