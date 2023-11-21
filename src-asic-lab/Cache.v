`include "util.vh"
`include "const.vh"

module cache #
(
  parameter LINES = 64,
  parameter CPU_WIDTH = `CPU_INST_BITS,
  parameter WORD_ADDR_BITS = `CPU_ADDR_BITS-`ceilLog2(`CPU_INST_BITS/8)
)
(
  input clk,
  input reset,

  input                       cpu_req_valid,
  output reg                  cpu_req_ready,
  input [WORD_ADDR_BITS-1:0]  cpu_req_addr,
  input [CPU_WIDTH-1:0]       cpu_req_data,
  input [3:0]                 cpu_req_write,

  output reg                  cpu_resp_valid,
  output reg  [CPU_WIDTH-1:0]  cpu_resp_data,

  output reg                  mem_req_valid,
  input                       mem_req_ready,
  output [WORD_ADDR_BITS-1:`ceilLog2(`MEM_DATA_BITS/CPU_WIDTH)] mem_req_addr,
  output reg                       mem_req_rw,
  output reg                       mem_req_data_valid,
  input                            mem_req_data_ready,
  output [`MEM_DATA_BITS-1:0]      mem_req_data_bits,
  // byte level masking
  output [(`MEM_DATA_BITS/8)-1:0]  mem_req_data_mask,

  input                       mem_resp_valid,
  input [`MEM_DATA_BITS-1:0]  mem_resp_data
);

  parameter IDLE            = 4'd0;
  parameter READ_HIT        = 4'd1;
  parameter READ_MEM        = 4'd2;
  parameter WRITE_MEM       = 4'd3;
  parameter WRITE_CACHE     = 4'd4;

  // Implement your cache here, then delete this comment
    wire cpu_req_fire = cpu_req_ready && cpu_req_valid;

  assign mem_req_addr = cpu_req_addr >> 2;

  wire [3:0] cache_offset;
  wire [1:0] word_offset;
  wire [1:0] sram_offset;
  wire [2:0] cache_line;
  wire [3:0] sram_addr;
  wire [29:7] addr_tag;
  reg sram_mem_web_0, sram_mem_web_1, sram_cpu_web_0, sram_cpu_web_1;
  reg [1:0] memory_rw_ctr;
  reg sram_mem_we;
  wire [3:0] cpu_sram_addr, mem_sram_addr;


  wire [31:0] cache_cpu_dout_0 [3:0];
  wire [31:0] cache_cpu_dout_1 [3:0];
  wire [31:0] cache_mem_dout_0 [3:0];
  wire [31:0] cache_mem_dout_1 [3:0];
  wire [31:0] cache_cpu_dout [3:0];
  wire [127:0] cache_mem_dout;
  wire [127:0] cache_mem_din;
  //wire [31:0] mem_din;
  assign cache_cpu_dout = sram_offset[1] ? cache_cpu_dout_1 : cache_cpu_dout_0;

  wire [31:0] sram_tag_dout, sram_tag_din;
  wire [12:0] tag_out = sram_tag_dout[11:0];

  reg [29:0] cpu_req_addr_reg;
  always @(*) begin
     if (cpu_req_fire) cpu_req_addr_reg <= cpu_req_addr;
  end
  assign cache_offset = cpu_req_addr_reg[3:0];
  assign word_offset = cache_offset[1:0];
  assign sram_offset = cache_offset[3:2];
  assign cache_line = cpu_req_addr_reg[6:4];
  assign addr_tag = cpu_req_addr_reg[29:7];
  assign sram_tag_din  = { {19{1'b0}}, addr_tag };

  assign cpu_sram_addr = { sram_offset[0], cache_line };
  assign mem_sram_addr = {memory_rw_ctr[0], cache_line };

  wire [31:0] mem_resp_data_array [3:0];
  assign mem_resp_data_array[0] = mem_resp_data[31:0];
  assign mem_resp_data_array[1] = mem_resp_data[63:32];
  assign mem_resp_data_array[2] = mem_resp_data[95:64];
  assign mem_resp_data_array[3] = mem_resp_data[127:96];

  SRAM2RW16x32 CACHE_DATA_BANK_0_0 (
        .A1(cpu_sram_addr),
        .CE1(~clk),
        .OEB1(1'b0),
        .WEB1(sram_cpu_web_0),
        .CSB1(1'b0),
        .I1(cpu_req_data),
        .O1(cache_cpu_dout_0[0]),

        .A2(mem_sram_addr),
        .CE2(clk),
        .OEB2(1'b0),
        .WEB2(sram_mem_web_0),
        .CSB2(1'b0),
        .I2(mem_resp_data_array[0]),
        .O2(cache_mem_dout_0[0])
      );

      SRAM2RW16x32 CACHE_DATA_BANK_0_1 (
        .A1(cpu_sram_addr),
        .CE1(~clk),
        .OEB1(1'b0),
        .WEB1(sram_cpu_web_0),
        .CSB1(1'b0),
        .I1(cpu_req_data),
        .O1(cache_cpu_dout_0[1]),

        .A2(mem_sram_addr),
        .CE2(clk),
        .OEB2(1'b0),
        .WEB2(sram_mem_web_0),
        .CSB2(1'b0),
        .I2(mem_resp_data_array[1]),
        .O2(cache_mem_dout_0[1])
      );

      SRAM2RW16x32 CACHE_DATA_BANK_0_2 (
        .A1(cpu_sram_addr),
        .CE1(~clk),
        .OEB1(1'b0),
        .WEB1(sram_cpu_web_0),
        .CSB1(1'b0),
        .I1(cpu_req_data),
        .O1(cache_cpu_dout_0[2]),

        .A2(mem_sram_addr),
        .CE2(clk),
        .OEB2(1'b0),
        .WEB2(sram_mem_web_0),
        .CSB2(1'b0),
        .I2(mem_resp_data_array[2]),
        .O2(cache_mem_dout_0[2])
      );

      SRAM2RW16x32 CACHE_DATA_BANK_0_3 (
        .A1(cpu_sram_addr),
        .CE1(~clk),
        .OEB1(1'b0),
        .WEB1(sram_cpu_web_0),
        .CSB1(1'b0),
        .I1(cpu_req_data),
        .O1(cache_cpu_dout_0[3]),

        .A2(mem_sram_addr),
        .CE2(clk),
        .OEB2(1'b0),
        .WEB2(sram_mem_web_0),
        .CSB2(1'b0),
        .I2(mem_resp_data_array[3]),
        .O2(cache_mem_dout_0[3])
      );

      SRAM2RW16x32 CACHE_DATA_BANK_1_0 (
        .A1(cpu_sram_addr),
        .CE1(~clk),
        .OEB1(1'b0),
        .WEB1(sram_cpu_web_0),
        .CSB1(1'b0),
        .I1(cpu_req_data),
        .O1(cache_cpu_dout_1[0]),

        .A2(mem_sram_addr),
        .CE2(clk),
        .OEB2(1'b0),
        .WEB2(sram_mem_web_1),
        .CSB2(1'b0),
        .I2(mem_resp_data_array[0]),
        .O2(cache_mem_dout_1[0])
      );

      SRAM2RW16x32 CACHE_DATA_BANK_1_1 (
        .A1(cpu_sram_addr),
        .CE1(~clk),
        .OEB1(1'b0),
        .WEB1(sram_cpu_web_0),
        .CSB1(1'b0),
        .I1(cpu_req_data),
        .O1(cache_cpu_dout_1[1]),

        .A2(mem_sram_addr),
        .CE2(clk),
        .OEB2(1'b0),
        .WEB2(sram_mem_web_1),
        .CSB2(1'b0),
        .I2(mem_resp_data_array[1]),
        .O2(cache_mem_dout_1[1])
      );

      SRAM2RW16x32 CACHE_DATA_BANK_1_2 (
        .A1(cpu_sram_addr),
        .CE1(~clk),
        .OEB1(1'b0),
        .WEB1(sram_cpu_web_0),
        .CSB1(1'b0),
        .I1(cpu_req_data),
        .O1(cache_cpu_dout_1[2]),

        .A2(mem_sram_addr),
        .CE2(clk),
        .OEB2(1'b0),
        .WEB2(sram_mem_web_1),
        .CSB2(1'b0),
        .I2(mem_resp_data_array[2]),
        .O2(cache_mem_dout_1[2])
      );

      SRAM2RW16x32 CACHE_DATA_BANK_1_3 (
        .A1(cpu_sram_addr),
        .CE1(~clk),
        .OEB1(1'b0),
        .WEB1(sram_cpu_web_0),
        .CSB1(1'b0),
        .I1(cpu_req_data),
        .O1(cache_cpu_dout_1[3]),

        .A2(mem_sram_addr),
        .CE2(clk),
        .OEB2(1'b0),
        .WEB2(sram_mem_web_1),
        .CSB2(1'b0),
        .I2(mem_resp_data_array[3]),
        .O2(cache_mem_dout_1[3])
      );

  reg tag_cpu_web;

  SRAM2RW16x32 TAGS (
    .A1({ 1'b0, cache_line }),
    .CE1(~clk),

    .OEB1(1'b0),
    .WEB1(tag_cpu_web),
    .CSB1(1'b0),

    .I1(sram_tag_din),
    .O1(sram_tag_dout),

    .A2(4'b0),
    .CE2(clk),

    .OEB2(1'b0),
    .WEB2(1'b1),
    .CSB2(1'b0),

    .I2(32'b0),
    .O2()
  );

  reg [7:0] dirty_bits, valid_bits;
  always @(posedge clk) begin
    if (reset) begin
      dirty_bits <= 8'b0;
      valid_bits <= 8'b0;
      memory_rw_ctr <= 2'b00;
      cpu_req_ready <= 1'b0;
      cpu_resp_valid <= 1'b0;

    end
  end

  always @(posedge clk) begin
      cpu_resp_data <= cache_cpu_dout[word_offset];

  end

  assign dirty_bit = dirty_bits[cache_line];
  assign valid_bit = valid_bits[cache_line];
  
  wire mem_req_fire = mem_req_ready && mem_req_valid;
  //wire tags_match = tag_out == addr_tag;
  reg tags_match;
  reg [2:0] state, nextstate, prevstate;

  always @(posedge clk) begin
    if (memory_rw_ctr == 4'd3) memory_rw_ctr <= 4'd0;
    else if (mem_resp_valid) memory_rw_ctr <= memory_rw_ctr + 1;
  end

  //assign cpu_resp_valid = valid_bit && tags_match;

  always @(*) begin

    case (state)

      IDLE: begin
              cpu_req_ready = 1'b1;

              mem_req_valid = 1'b0;
              mem_req_data_valid = 1'b0;
              memory_rw_ctr = 4'b0;

              sram_cpu_web_0 = 1'b1;
              sram_cpu_web_1 = 1'b1;

              sram_mem_web_0 = 1'b1;
              sram_mem_web_1 = 1'b1;

              tag_cpu_web = 1'b1;
              tags_match = tag_out == addr_tag;

              if (~cpu_req_fire) begin
                nextstate = IDLE;
              end else if (cpu_req_write) begin
                nextstate = WRITE_CACHE;
              end else if (~valid_bit || ~tags_match) begin
                nextstate = dirty_bit ? WRITE_MEM : READ_MEM;
              end else if (valid_bit && tags_match)
                nextstate = READ_HIT;

            end

      READ_HIT: begin
              tags_match = tag_out == addr_tag;

              tag_cpu_web = 1'b1;
              sram_mem_web_0 = 1'b1;
              sram_mem_web_1 = 1'b1;
              sram_cpu_web_0 = 1'b1;
              sram_cpu_web_1 = 1'b1;

              mem_req_valid = 1'b0;

              if (valid_bit && tags_match) begin
                cpu_req_ready = 1'b1;
                cpu_resp_valid = 1'b1;
                nextstate = READ_HIT;
              end else begin
                cpu_req_ready = 1'b0;
                cpu_resp_valid = 1'b0;
                nextstate = READ_MEM;
              end
            end

      READ_MEM: begin
              tags_match = tag_out == addr_tag;
              tag_cpu_web = 1'b0;

              valid_bits[cache_line] = 1'b1;
              dirty_bits[cache_line] = 1'b0;

              cpu_req_ready = 1'b0;
              mem_req_rw = 0;
              mem_req_valid = 1;
              cpu_resp_valid = 0;

              if (memory_rw_ctr == 4'd3) begin
                mem_req_valid = 1'b0;
                tags_match = 1'b1;
                nextstate = READ_HIT;
              end else if (mem_resp_valid) begin
                sram_mem_web_0 =  memory_rw_ctr[1];
                sram_mem_web_1 = ~memory_rw_ctr[1];
                nextstate = READ_MEM;
              end else
                nextstate = READ_MEM;
            end
/*
      WRITE_MEM_READY: begin
              cpu_req_ready = 1'b0;
              sram_mem_web_0 = 1'b1;
              sram_mem_web_1 = 1'b1;
              memory_rw_ctr = 4'b0000;
              mem_req_rw = 1;
              mem_req_valid = 1;


              if (mem_req_ready) begin
                #(1) mem_req_valid = 1'b1;

                nextstate = WRITE_MEM;
              end else begin
                nextstate = WRITE_MEM_READY;
              end
            end
*/
      WRITE_MEM: begin
              if (memory_rw_ctr == 4'b0011) begin
                nextstate = READ_HIT;
              end else if (mem_req_data_ready) begin
                mem_req_data_valid = 1;
                sram_mem_web_0 = 1;
                sram_mem_web_1 = 1;
              end else
                nextstate = WRITE_MEM;
            end
      
      WRITE_CACHE: begin
              valid_bits[cache_line] = 1'b1;
              dirty_bits[cache_line] = 1'b1;
              nextstate = IDLE;
            end
      
      default: nextstate = state;
    endcase
  end

  always @(posedge clk) begin

	  if(reset)
		  state <= IDLE;
	  else
		  state <= nextstate;

  end


endmodule
