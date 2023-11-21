
`timescale 1ns/100fs

module SRAM1RW512x64 (A,CE,WEB,OEB,CSB,I,O);

input CE;
input WEB;
input OEB;
input CSB;

input  [9-1:0] A;
input  [64-1:0] I;
output [64-1:0] O;

reg     [64-1:0] memory[512-1:0];
reg     [64-1:0] data_out;
wire    [64-1:0] O;

wire RE;
wire WE;
and u1 (RE, ~CSB, ~OEB);
and u2 (WE, ~CSB, ~WEB);

// Initialization for simulation
integer i;
initial begin
    for (i = 0; i < 512; i = i + 1) begin
        memory[i] = {2{$urandom()}};
    end
    data_out = {2{$urandom()}};
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
$setuphold(posedge CE, posedge I[32], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[32], 0, 0, NOTIFIER);
(CE => O[32]) = 0;
$setuphold(posedge CE, posedge I[33], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[33], 0, 0, NOTIFIER);
(CE => O[33]) = 0;
$setuphold(posedge CE, posedge I[34], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[34], 0, 0, NOTIFIER);
(CE => O[34]) = 0;
$setuphold(posedge CE, posedge I[35], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[35], 0, 0, NOTIFIER);
(CE => O[35]) = 0;
$setuphold(posedge CE, posedge I[36], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[36], 0, 0, NOTIFIER);
(CE => O[36]) = 0;
$setuphold(posedge CE, posedge I[37], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[37], 0, 0, NOTIFIER);
(CE => O[37]) = 0;
$setuphold(posedge CE, posedge I[38], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[38], 0, 0, NOTIFIER);
(CE => O[38]) = 0;
$setuphold(posedge CE, posedge I[39], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[39], 0, 0, NOTIFIER);
(CE => O[39]) = 0;
$setuphold(posedge CE, posedge I[40], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[40], 0, 0, NOTIFIER);
(CE => O[40]) = 0;
$setuphold(posedge CE, posedge I[41], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[41], 0, 0, NOTIFIER);
(CE => O[41]) = 0;
$setuphold(posedge CE, posedge I[42], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[42], 0, 0, NOTIFIER);
(CE => O[42]) = 0;
$setuphold(posedge CE, posedge I[43], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[43], 0, 0, NOTIFIER);
(CE => O[43]) = 0;
$setuphold(posedge CE, posedge I[44], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[44], 0, 0, NOTIFIER);
(CE => O[44]) = 0;
$setuphold(posedge CE, posedge I[45], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[45], 0, 0, NOTIFIER);
(CE => O[45]) = 0;
$setuphold(posedge CE, posedge I[46], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[46], 0, 0, NOTIFIER);
(CE => O[46]) = 0;
$setuphold(posedge CE, posedge I[47], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[47], 0, 0, NOTIFIER);
(CE => O[47]) = 0;
$setuphold(posedge CE, posedge I[48], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[48], 0, 0, NOTIFIER);
(CE => O[48]) = 0;
$setuphold(posedge CE, posedge I[49], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[49], 0, 0, NOTIFIER);
(CE => O[49]) = 0;
$setuphold(posedge CE, posedge I[50], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[50], 0, 0, NOTIFIER);
(CE => O[50]) = 0;
$setuphold(posedge CE, posedge I[51], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[51], 0, 0, NOTIFIER);
(CE => O[51]) = 0;
$setuphold(posedge CE, posedge I[52], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[52], 0, 0, NOTIFIER);
(CE => O[52]) = 0;
$setuphold(posedge CE, posedge I[53], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[53], 0, 0, NOTIFIER);
(CE => O[53]) = 0;
$setuphold(posedge CE, posedge I[54], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[54], 0, 0, NOTIFIER);
(CE => O[54]) = 0;
$setuphold(posedge CE, posedge I[55], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[55], 0, 0, NOTIFIER);
(CE => O[55]) = 0;
$setuphold(posedge CE, posedge I[56], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[56], 0, 0, NOTIFIER);
(CE => O[56]) = 0;
$setuphold(posedge CE, posedge I[57], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[57], 0, 0, NOTIFIER);
(CE => O[57]) = 0;
$setuphold(posedge CE, posedge I[58], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[58], 0, 0, NOTIFIER);
(CE => O[58]) = 0;
$setuphold(posedge CE, posedge I[59], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[59], 0, 0, NOTIFIER);
(CE => O[59]) = 0;
$setuphold(posedge CE, posedge I[60], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[60], 0, 0, NOTIFIER);
(CE => O[60]) = 0;
$setuphold(posedge CE, posedge I[61], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[61], 0, 0, NOTIFIER);
(CE => O[61]) = 0;
$setuphold(posedge CE, posedge I[62], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[62], 0, 0, NOTIFIER);
(CE => O[62]) = 0;
$setuphold(posedge CE, posedge I[63], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[63], 0, 0, NOTIFIER);
(CE => O[63]) = 0;
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
