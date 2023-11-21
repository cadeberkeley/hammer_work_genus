
`timescale 1ns/100fs

module SRAM1RW512x32 (A,CE,WEB,OEB,CSB,I,O);

input CE;
input WEB;
input OEB;
input CSB;

input  [9-1:0] A;
input  [32-1:0] I;
output [32-1:0] O;

reg     [32-1:0] memory[512-1:0];
reg     [32-1:0] data_out;
wire    [32-1:0] O;

wire RE;
wire WE;
and u1 (RE, ~CSB, ~OEB);
and u2 (WE, ~CSB, ~WEB);

// Initialization for simulation
integer i;
initial begin
    for (i = 0; i < 512; i = i + 1) begin
        memory[i] = {1{$urandom()}};
    end
    data_out = {1{$urandom()}};
end

always @ (posedge CE) begin
    if (RE)
        data_out <= memory[A];
    if (WE)
        memory[A] <= I;
end

reg NOTIFIER;
specify
$setuphold(posedge CE, posedge I[0], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[0], 0, 0, NOTIFIER);
(CE => O[0]) = 0;
$setuphold(posedge CE, posedge I[1], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[1], 0, 0, NOTIFIER);
(CE => O[1]) = 0;
$setuphold(posedge CE, posedge I[2], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[2], 0, 0, NOTIFIER);
(CE => O[2]) = 0;
$setuphold(posedge CE, posedge I[3], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[3], 0, 0, NOTIFIER);
(CE => O[3]) = 0;
$setuphold(posedge CE, posedge I[4], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[4], 0, 0, NOTIFIER);
(CE => O[4]) = 0;
$setuphold(posedge CE, posedge I[5], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[5], 0, 0, NOTIFIER);
(CE => O[5]) = 0;
$setuphold(posedge CE, posedge I[6], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[6], 0, 0, NOTIFIER);
(CE => O[6]) = 0;
$setuphold(posedge CE, posedge I[7], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[7], 0, 0, NOTIFIER);
(CE => O[7]) = 0;
$setuphold(posedge CE, posedge I[8], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[8], 0, 0, NOTIFIER);
(CE => O[8]) = 0;
$setuphold(posedge CE, posedge I[9], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[9], 0, 0, NOTIFIER);
(CE => O[9]) = 0;
$setuphold(posedge CE, posedge I[10], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[10], 0, 0, NOTIFIER);
(CE => O[10]) = 0;
$setuphold(posedge CE, posedge I[11], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[11], 0, 0, NOTIFIER);
(CE => O[11]) = 0;
$setuphold(posedge CE, posedge I[12], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[12], 0, 0, NOTIFIER);
(CE => O[12]) = 0;
$setuphold(posedge CE, posedge I[13], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[13], 0, 0, NOTIFIER);
(CE => O[13]) = 0;
$setuphold(posedge CE, posedge I[14], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[14], 0, 0, NOTIFIER);
(CE => O[14]) = 0;
$setuphold(posedge CE, posedge I[15], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[15], 0, 0, NOTIFIER);
(CE => O[15]) = 0;
$setuphold(posedge CE, posedge I[16], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[16], 0, 0, NOTIFIER);
(CE => O[16]) = 0;
$setuphold(posedge CE, posedge I[17], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[17], 0, 0, NOTIFIER);
(CE => O[17]) = 0;
$setuphold(posedge CE, posedge I[18], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[18], 0, 0, NOTIFIER);
(CE => O[18]) = 0;
$setuphold(posedge CE, posedge I[19], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[19], 0, 0, NOTIFIER);
(CE => O[19]) = 0;
$setuphold(posedge CE, posedge I[20], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[20], 0, 0, NOTIFIER);
(CE => O[20]) = 0;
$setuphold(posedge CE, posedge I[21], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[21], 0, 0, NOTIFIER);
(CE => O[21]) = 0;
$setuphold(posedge CE, posedge I[22], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[22], 0, 0, NOTIFIER);
(CE => O[22]) = 0;
$setuphold(posedge CE, posedge I[23], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[23], 0, 0, NOTIFIER);
(CE => O[23]) = 0;
$setuphold(posedge CE, posedge I[24], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[24], 0, 0, NOTIFIER);
(CE => O[24]) = 0;
$setuphold(posedge CE, posedge I[25], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[25], 0, 0, NOTIFIER);
(CE => O[25]) = 0;
$setuphold(posedge CE, posedge I[26], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[26], 0, 0, NOTIFIER);
(CE => O[26]) = 0;
$setuphold(posedge CE, posedge I[27], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[27], 0, 0, NOTIFIER);
(CE => O[27]) = 0;
$setuphold(posedge CE, posedge I[28], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[28], 0, 0, NOTIFIER);
(CE => O[28]) = 0;
$setuphold(posedge CE, posedge I[29], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[29], 0, 0, NOTIFIER);
(CE => O[29]) = 0;
$setuphold(posedge CE, posedge I[30], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[30], 0, 0, NOTIFIER);
(CE => O[30]) = 0;
$setuphold(posedge CE, posedge I[31], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[31], 0, 0, NOTIFIER);
(CE => O[31]) = 0;
$setuphold(posedge CE, posedge A[0], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge A[0], 0, 0, NOTIFIER);
$setuphold(posedge CE, posedge A[1], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge A[1], 0, 0, NOTIFIER);
$setuphold(posedge CE, posedge A[2], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge A[2], 0, 0, NOTIFIER);
$setuphold(posedge CE, posedge A[3], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge A[3], 0, 0, NOTIFIER);
$setuphold(posedge CE, posedge A[4], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge A[4], 0, 0, NOTIFIER);
$setuphold(posedge CE, posedge A[5], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge A[5], 0, 0, NOTIFIER);
$setuphold(posedge CE, posedge A[6], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge A[6], 0, 0, NOTIFIER);
$setuphold(posedge CE, posedge A[7], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge A[7], 0, 0, NOTIFIER);
$setuphold(posedge CE, posedge A[8], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge A[8], 0, 0, NOTIFIER);

endspecify

assign O = data_out;

endmodule
