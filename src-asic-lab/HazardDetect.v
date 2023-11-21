`include "Opcode.vh"

module HazardDetect (
    input [31:0] next_inst,
    input [31:0] f_inst,
    input [31:0] dx_inst,
    input [31:0] mw_inst,

    output reg hazard_dx_ra,
    output reg hazard_dx_rb,
    output reg hazard_mw_ra,
    output reg hazard_mw_rb,
    output reg hazard_mw_dx_ra,
    output reg hazard_mw_dx_rb
);

wire [6:0] next_opcode, dx_opcode, mw_opcode;
wire [4:0] next_ra, next_rb, next_rd;
wire [4:0] dx_ra, dx_rb, dx_rd;
wire [4:0] mw_ra, mw_rb, mw_rd;

assign next_opcode = next_inst[6:0];
assign dx_opcode = dx_inst[6:0];
assign mw_opcode = mw_inst[6:0];

assign next_ra = next_inst[19:15];
assign next_rb = next_inst[24:20];
assign next_rd = next_inst[11:7];

assign dx_ra = dx_inst[19:15];
assign dx_rb = dx_inst[24:20];
assign dx_rd = dx_inst[11:7];

assign mw_ra = mw_inst[19:15];
assign mw_rb = mw_inst[24:20];
assign mw_rd = mw_inst[11:7];

//reg hazard_dx, hazard_mw;

initial begin
    hazard_dx_ra = 0;
    hazard_dx_rb = 0;
    hazard_mw_ra = 0;
    hazard_mw_rb = 0;
end

  always @(*) begin
    // dx --> f hazard
    if (  dx_rd &&
         (dx_opcode == `OPC_ARI_RTYPE || // R
          dx_opcode == `OPC_ARI_ITYPE || // I
          dx_opcode == `OPC_LOAD      || // I
          dx_opcode == `OPC_JALR      || // I
          dx_opcode == `OPC_LUI       || // U
          dx_opcode == `OPC_AUIPC     || // U
          dx_opcode == `OPC_JAL)         // J
      ) begin
      case (next_opcode)
          `OPC_ARI_RTYPE, `OPC_STORE, `OPC_BRANCH: begin
              hazard_dx_ra <= (next_ra == dx_rd); 
              hazard_dx_rb <= (next_rb == dx_rd);
          end
          `OPC_ARI_ITYPE, `OPC_LOAD, `OPC_JALR, `OPC_CSR: begin
              hazard_dx_ra <= (next_ra == dx_rd);
              hazard_dx_rb <= 1'b0;
          end
          default: begin
              hazard_dx_ra <= 1'b0;
              hazard_dx_rb <= 1'b0;
          end
      endcase
    end else begin
        hazard_dx_ra <= 1'b0;
        hazard_dx_rb <= 1'b0;
    end


    //mw --> f hazard
    if (  mw_rd &&
        ( mw_opcode == `OPC_ARI_RTYPE || // R
          mw_opcode == `OPC_ARI_ITYPE || // I
          mw_opcode == `OPC_LOAD      || // I
          mw_opcode == `OPC_JALR      || // I
          mw_opcode == `OPC_LUI       || // U
          mw_opcode == `OPC_AUIPC     || // U
          mw_opcode == `OPC_JAL )        // J
      ) begin
      case (next_opcode)
          `OPC_ARI_RTYPE, `OPC_STORE, `OPC_BRANCH: begin
              hazard_mw_ra <= (next_ra == mw_rd);
              hazard_mw_rb <= (next_rb == mw_rd);
          end
          `OPC_ARI_ITYPE, `OPC_LOAD, `OPC_JALR, `OPC_CSR: begin
              hazard_mw_ra <= (next_ra == mw_rd);
              hazard_mw_rb <= 1'b0;
          end
          default: begin
              hazard_mw_ra <= 1'b0;
              hazard_mw_rb <= 1'b0;
          end
      endcase
    end else begin
      hazard_mw_ra <= 1'b0;
      hazard_mw_rb <= 1'b0;
    end

  //mw --> dx hazard
    if (  mw_rd &&
        ( mw_opcode == `OPC_ARI_RTYPE || // R
          mw_opcode == `OPC_ARI_ITYPE || // I
          mw_opcode == `OPC_LOAD      || // I
          mw_opcode == `OPC_JALR      || // I
          mw_opcode == `OPC_LUI       || // U
          mw_opcode == `OPC_AUIPC     || // U
          mw_opcode == `OPC_JAL )        // J
      ) begin
      case (dx_opcode)
          `OPC_ARI_RTYPE, `OPC_STORE, `OPC_BRANCH: begin
              hazard_mw_dx_ra <= (dx_ra == mw_rd);
              hazard_mw_dx_rb <= (dx_rb == mw_rd);
          end
          `OPC_ARI_ITYPE, `OPC_LOAD, `OPC_JALR, `OPC_CSR: begin
              hazard_mw_dx_ra <= (dx_ra == mw_rd);
              hazard_mw_dx_rb <= 1'b0;
          end
          default: begin
              hazard_mw_dx_ra <= 1'b0;
              hazard_mw_dx_rb <= 1'b0;
          end
      endcase
    end else begin
      hazard_mw_dx_ra <= 1'b0;
      hazard_mw_dx_rb <= 1'b0;
    end
  end

endmodule