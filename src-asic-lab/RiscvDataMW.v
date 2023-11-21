module RiscvDataMW (
  input clk,
  input rst,

  input [31:0] dx_inst,
  input [31:0] dx_pc,
  input [31:0] dx_ALU_out,
  input [31:0] dx_rf_out_A,
  input [31:0] dx_rf_out_B,
  input dx_isBranch,
  input dx_branch_PCSel,

  output reg [31:0] mw_inst,
  output reg [31:0] mw_pc,
  output reg mw_stall,

  output [4:0] mw_rd,
  output [31:0] mw_WBMux_out,
  output mw_regwe,
  output mw_PCSel,
  output reg mw_isBranch,
  output reg mw_branch_PCSel,
  output reg [31:0] mw_ALU_out,
  output mw_ctrl_stall,



  input [3:0]  dx_store_mask,
  input dx_MemRW,
  input [31:0] dcache_dout,
  input [1:0]  dx_store_sel,
  input mem_stall,

  output [31:0] dcache_addr,
  output [3:0]  dcache_we,
  output dcache_re,
  output [31:0] dcache_din,

  output [31:0] csr

);

  reg [31:0] mw_rf_out_B;
  reg [3:0]  mw_store_mask;

  always @(posedge clk) begin
    if (rst) begin
      mw_inst <= 'h0000;
      mw_pc <= 'h2000;
    end else begin
    
    if (~mem_stall)
      mw_branch_PCSel <= dx_branch_PCSel;
    
    mw_inst <= dx_inst;
    mw_pc <= dx_pc;
    mw_ALU_out <= dx_ALU_out;
    mw_rf_out_B <= dx_rf_out_B;
    end

    //mw_store_mask <= dx_store_mask;
    //mw_isBranch <= dx_isBranch;

  end

  wire [31:0] mw_rf_out_A, mw_immGen_out, ALU_in_A, ALU_in_B;

    wire [4:0] mw_ra, mw_rb, mw_rd;
    assign mw_ra = mw_inst[19:15];
    assign mw_rb = mw_inst[24:20];
    assign mw_rd = mw_inst[11:7];

    wire mw_PCSel, mw_isBranch, mw_RegWEn, mw_BrUn, mw_ASel, mw_BSel, mw_MemRW, mw_CSRSel, mw_CSRWEn;
    wire [3:0] mw_ALUSel;
    wire [2:0] mw_ImmSel;
    wire [1:0] mw_WBSel;
    wire mw_BrEq, mw_BrLt;
    
    wire [1:0] mw_load_sel;
    wire mw_load_unsigned;
    
    wire [1:0] mw_store_sel;

  RiscvControl MW_CTRL (
        .inst(mw_inst),
        .stall(mw_ctrl_stall),
    
    	.BrEq(mw_BrEq),
    	.BrLt(mw_BrLt),
    
    	.PCSel(mw_PCSel),
    	.isBranch(mw_isBranch),
    	.RegWEn(mw_regwe),
    	.ImmSel(mw_ImmSel),
    	.BrUn(mw_BrUn),
    	.ASel(mw_ASel),
    	.BSel(mw_BSel),
    	.ALUSel(mw_ALUSel),
    	.MemRW(mw_MemRW),
    	.WBSel(mw_WBSel),
    
    	.load_sel(mw_load_sel),
    	.load_unsigned(mw_load_unsigned),
    
    	.store_sel(mw_store_sel),
    	.store_mask(mw_store_mask),
    
    	.CSRSel(mw_CSRSel),
    	.CSRWEn(mw_CSRWEn)
    );

    wire [31:0] dcache_lw, dcache_lh, dcache_lb, dcache_lwu, dcache_lhu, dcache_lbu;
    wire [31:0] load_signed_mux_out, load_unsigned_mux_out, dcache_out_extended;
    
    wire [15:0] dcache_halfword;
    wire [7:0]  dcache_byte;
    wire [4:0]  offset, offset_halfword;
    
    assign dcache_addr = { dx_ALU_out[31:2], {2{1'b0}} };
    assign offset_halfword = offset[1] ? offset[4:1] << 1 : offset;
    assign offset = { {3{1'b0}}, mw_ALU_out[1:0] };
    assign dcache_re   = ~dx_MemRW;
    
    wire [31:0] dcache_halfword_intermediate = {(dcache_dout >> (offset_halfword << 3))};
    assign dcache_halfword = dcache_halfword_intermediate[15:0];
    wire [31:0] dcache_byte_intermediate = {(dcache_dout >> (offset << 3))};
    assign dcache_byte     = dcache_byte_intermediate[7:0];
    
    assign dcache_lw =  dcache_dout;
    assign dcache_lh =  { {16{dcache_halfword[15]}}, dcache_halfword };
    assign dcache_lb =  { {24{dcache_byte[7]}},	   dcache_byte  };
    assign dcache_lwu = dcache_dout;
    assign dcache_lhu = { {16{1'b0}},	      dcache_halfword };
    assign dcache_lbu = { {24{1'b0}},	      dcache_byte  };
    
    mux_41 #(.W(32)) load_unsigned_mux (
    	.A(dcache_lwu),
    	.B(dcache_lhu),
    	.C(dcache_lbu),
    	.D(32'b0),
    
    	.sel(mw_load_sel),
    
    	.out(load_unsigned_mux_out)
    );
    
    mux_41 #(.W(32)) load_signed_mux (
    	.A(dcache_lw),
    	.B(dcache_lh),
    	.C(dcache_lb),
    	.D(32'b0),
    
    	.sel(mw_load_sel),
    
    	.out(load_signed_mux_out)
    );
    
    mux_21 #(.W(32)) dcache_signed_unsigned_mux (
    	.A(load_signed_mux_out),
    	.B(load_unsigned_mux_out),
    
    	.sel(mw_load_unsigned),
    
    	.out(dcache_out_extended)
    );
    
    mux_41 #(.W(32)) WB_mux (
    	.A(dcache_out_extended),
    	.B(mw_ALU_out),
    	.C(mw_pc),
    	.D(32'b0),
    
    	.sel(mw_WBSel),
    
    	.out(mw_WBMux_out)
    );
    
    // STORE
    reg [4:0] store_offset;
    always @(*) begin
      if (dx_store_sel == 2'b01 && dx_ALU_out[1])
        store_offset <= 5'b00010;
      else
        store_offset <= dx_ALU_out[1:0];
    end
    
    wire [31:0] dcache_store_word;
    assign dcache_store_word = (dx_rf_out_B << (store_offset << 3));
    assign dcache_we = dx_store_mask << store_offset;
    assign dcache_din = dcache_store_word;

    //============ CSR Handling ===================//

  CSR RISCV_CSR (
    .clk(clk),

	.csr_wen(mw_CSRWEn),
	.csr_sel(mw_CSRSel),
	.rs1_bits(mw_ra),
	.rs1_val(mw_rf_out_A),
	.csr_addr(mw_inst[31:20]),

	.data_out(csr),
	.write_addr()
  );

endmodule