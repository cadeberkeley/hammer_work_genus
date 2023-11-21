module Regfile #(parameter DEPTH = 32) (
	input clk,
	input rst,

	input [4:0] reg_A,
	input [4:0] reg_B,
	input [4:0] reg_dest,
	input [31:0] data,

	input regWEn,

	output reg [31:0] data_out_A,
	output reg [31:0] data_out_B
);

reg [DEPTH-1:0] mem [31:0];

integer i;
always @(posedge clk) begin
  if (rst) begin
    for (i = 0; i < 32; i = i + 1)
      mem[i] <= 32'b0;
  end else if (regWEn && reg_dest != 0)
      mem[reg_dest] <= data;
end

always @(*) begin
  if (~rst)
    data_out_A <= mem[reg_A];
end

always @(*) begin
  if (~rst)
    data_out_B <= mem[reg_B];
end

endmodule


