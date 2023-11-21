module PCGen (
    input clk,
    input rst,

    input pc_sel,
    input stall,

    input [31:0] alu_pc,
    input [31:0] curr_pc,
    
    output reg [31:0] next_pc
);

always @(posedge clk) begin
    if (rst)
        next_pc <= 'h2000;
    else if (pc_sel)
        next_pc <= alu_pc;
    else if (stall)
        next_pc <= curr_pc;
    else
        next_pc <= curr_pc + 4;
end

endmodule