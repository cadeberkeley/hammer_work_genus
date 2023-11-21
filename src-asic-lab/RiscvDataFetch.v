module RiscvDataFetch (
    input clk,
    input rst,

    input [31:0] f_inst,
    input [31:0] pc,

    output reg [31:0] f_inst_out,
    output [31:0] f_pc_out,
    output f_ctrl_stall
  );

    wire [31:0] f_ra, f_rb, f_rd;
    assign f_ra = f_inst[19:15];
    assign f_rb = f_inst[24:20];
    assign f_rd = f_inst[11:7];

    wire f_PCSel, f_isBranch, f_RegWEn, f_BrUn, f_ASel, f_BSel, f_MemRW, f_CSRSel, f_CSRWEn;
    wire [3:0] f_ALUSel;
    wire [2:0] f_ImmSel;
    wire [1:0] f_WBSel;
    wire f_BrEq, f_BrLt;
    
    wire [1:0] f_load_sel;
    wire f_load_unsigned;
    
    wire [1:0] f_store_sel;
    wire [3:0] f_store_mask;

    wire [31:0] curr_pc, curr_pc_plus_4;
    assign curr_pc_plus_4 = curr_pc + 4;

    wire [31:0] f_inst_ctrl;


    assign f_pc_out = pc;
    always @(*) #(1) f_inst_out = f_inst;
    

    RiscvControl FETCH_CTRL (
      .inst(f_inst),
      .stall(f_ctrl_stall),

    	.BrEq(f_BrEq),
    	.BrLt(f_BrLt),

    	.PCSel(f_PCSel),
    	.isBranch(f_isBranch),
    	.RegWEn(f_RegWEn),
    	.ImmSel(f_ImmSel),
    	.BrUn(f_BrUn),
    	.ASel(f_ASel),
    	.BSel(f_BSel),
    	.ALUSel(f_ALUSel),
    	.MemRW(f_MemRW),
    	.WBSel(f_WBSel),

    	.load_sel(f_load_sel),
    	.load_unsigned(f_load_unsigned),

    	.store_sel(f_store_sel),
    	.store_mask(f_store_mask),

    	.CSRSel(f_CSRSel),
    	.CSRWEn(f_CSRWEn)
    );

      
      
endmodule
