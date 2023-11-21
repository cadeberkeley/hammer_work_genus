module CSR(
  input clk,

	input csr_wen,
	input [31:0] rs1_val,
	input [4:0] rs1_bits,
	input [11:0] csr_addr,
	input csr_sel,

	output reg [31:0] data_out,
	output reg [11:0] write_addr
);

initial data_out = 32'b0;

always@(posedge clk) begin
  if (csr_wen) begin
    //write_addr <= csr_addr;
    if (csr_sel)
      data_out <= { {27{rs1_bits[0]}}, rs1_bits };
    else
      data_out <= rs1_val;
  end else
    data_out <= 32'b0;
end

endmodule
