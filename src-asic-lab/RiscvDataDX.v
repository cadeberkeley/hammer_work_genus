module RiscvDataDX (
    input clk,
    input rst,

    input [31:0] f_inst,
    input [31:0] f_pc,

    input [31:0] mw_pc,
    input [31:0] mw_ALU_out,
    input [31:0] mw_WBMux_out,
    input hazard_mw_dx_ra,
    input hazard_mw_dx_rb,

    input [31:0] rf_write_data,
    input [4:0]  rf_rd,
    input rf_regwe,

    output dx_BrEq,
    output dx_BrLt,

    output reg [31:0] dx_inst,
    output reg [31:0] dx_pc,
    output     [31:0] dx_ALU_out,
    output     [31:0] dx_rf_out_A_forwarded,
    output     [31:0] dx_rf_out_B_forwarded,
    output     [31:0] dx_store_mask,
    output dx_branch_PCSel,
    output dx_PCSel,
    output dx_isBranch,
    output dx_isJump,

    output dx_MemRW,
    output [31:0] dcache_dout,
    output [1:0] dx_store_sel

);

    always @(posedge clk) begin
        if (rst) begin
            dx_inst <= 'h0000;
            dx_pc <= 'h2000;
        end else begin
            dx_inst <= f_inst;
            dx_pc <= f_pc;
        end
        
    end

    wire [31:0] dx_immGen_out;

    wire [4:0] dx_ra, dx_rb, dx_rd;
    assign dx_ra = dx_inst[19:15];
    assign dx_rb = dx_inst[24:20];
    assign dx_rd = dx_inst[11:7];

    wire dx_RegWEn, dx_BrUn, dx_ASel, dx_BSel, dx_MemRW, dx_CSRSel, dx_CSRWEn;
    wire [3:0] dx_ALUSel;
    wire [2:0] dx_ImmSel;
    wire [1:0] dx_WBSel;
    wire dx_BrEq, dx_BrLt;
    wire dx_stall;
    
    wire [1:0] dx_load_sel;
    wire dx_load_unsigned;
    
    wire [1:0] dx_store_sel;
    wire [3:0] dx_store_mask;

    RiscvControl DX_CTRL (
        .inst(dx_inst),
        .stall(dx_isJump),
    
    	.BrEq(dx_BrEq),
    	.BrLt(dx_BrLt),
    
    	.PCSel(dx_PCSel),
    	.isBranch(dx_isBranch),
    	.RegWEn(dx_RegWEn),
    	.ImmSel(dx_ImmSel),
    	.BrUn(dx_BrUn),
    	.ASel(dx_ASel),
    	.BSel(dx_BSel),
    	.ALUSel(dx_ALUSel),
    	.MemRW(dx_MemRW),
    	.WBSel(dx_WBSel),
    
    	.load_sel(dx_load_sel),
    	.load_unsigned(dx_load_unsigned),
    
    	.store_sel(dx_store_sel),
    	.store_mask(dx_store_mask),
    
    	.CSRSel(dx_CSRSel),
    	.CSRWEn(dx_CSRWEn)
    );

    wire [31:0] dx_rf_out_B, dx_rf_out_A;
    Regfile DATA_REGFILE (
        .clk(clk),
        .rst(rst),

        .reg_A(dx_ra),
        .reg_B(dx_rb),

        .reg_dest(rf_rd),
        .data(rf_write_data),
        .regWEn(rf_regwe),

        .data_out_A(dx_rf_out_A),
        .data_out_B(dx_rf_out_B)
    );

    ImmGen Data_ImmGen (
	    .inst(dx_inst),

	    .ImmSel(dx_ImmSel),

	    .immOut(dx_immGen_out)
    );

    reg [31:0] ALU_in_A, ALU_in_B;
    wire [31:0] dx_rf_out_A_forwarded = hazard_mw_dx_ra ? mw_WBMux_out : dx_rf_out_A;
    assign dx_rf_out_B_forwarded = hazard_mw_dx_rb ? mw_WBMux_out : dx_rf_out_B;

    always @(*) begin
        if (dx_ASel)
            ALU_in_A <= mw_pc;
        else
            ALU_in_A <= dx_rf_out_A_forwarded;
    end

    always @(*) begin
        if (dx_BSel)
            ALU_in_B <= dx_immGen_out;
        else
            ALU_in_B <= dx_rf_out_B_forwarded;
    end

    ALU Data_ALU (
    	.A(ALU_in_A),
    	.B(ALU_in_B),

    	.ALUop(dx_ALUSel),

    	.Out(dx_ALU_out)
    );

    BranchComp DATA_BCMP (
    	.data_A(dx_rf_out_A_forwarded),
    	.data_B(dx_rf_out_B_forwarded),

    	.BrUn(dx_BrUn),

    	.BrEq(dx_BrEq),
    	.BrLt(dx_BrLt)
    );

    BranchControl DATA_BCTRL (
	    .fnc(dx_inst[14:12]),
	    .BrLt(dx_BrLt),
	    .BrEq(dx_BrEq),

	    .branch_pc_sel(dx_branch_PCSel)
    );

endmodule