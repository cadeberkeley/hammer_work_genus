module mux_41 #(parameter W=32) (
	input [W-1:0] A, B, C, D,
	input [1:0] sel,

	output reg [W-1:0] out
);

always@(*) begin
  case(sel)
    2'b00: out <= A;
    2'b01: out <= B;
    2'b10: out <= C;
    2'b11: out <= D;
  endcase
end

endmodule
