module BranchComp(
	input [31:0] data_A,
	input [31:0] data_B,
	input BrUn,

	output BrEq,
	output reg BrLt
);

assign BrEq = data_A == data_B;

always@(*) begin
  if (BrUn) BrLt <= $unsigned(data_A) < $unsigned(data_B);
  else BrLt <= $signed(data_A) < $signed(data_B);
end

endmodule
