
`timescale 1ns/100fs

module SRAM1RW512x128 (A,CE,WEB,OEB,CSB,I,O);

input CE;
input WEB;
input OEB;
input CSB;

input  [9-1:0] A;
input  [128-1:0] I;
output [128-1:0] O;

reg     [128-1:0] memory[512-1:0];
reg     [128-1:0] data_out;
wire    [128-1:0] O;

wire RE;
wire WE;
and u1 (RE, ~CSB, ~OEB);
and u2 (WE, ~CSB, ~WEB);

// Initialization for simulation
integer i;
initial begin
    for (i = 0; i < 512; i = i + 1) begin
        memory[i] = {4{$urandom()}};
    end
    data_out = {4{$urandom()}};
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
$setuphold(posedge CE, posedge I[64], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[64], 0, 0, NOTIFIER);
(CE => O[64]) = 0;
$setuphold(posedge CE, posedge I[65], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[65], 0, 0, NOTIFIER);
(CE => O[65]) = 0;
$setuphold(posedge CE, posedge I[66], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[66], 0, 0, NOTIFIER);
(CE => O[66]) = 0;
$setuphold(posedge CE, posedge I[67], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[67], 0, 0, NOTIFIER);
(CE => O[67]) = 0;
$setuphold(posedge CE, posedge I[68], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[68], 0, 0, NOTIFIER);
(CE => O[68]) = 0;
$setuphold(posedge CE, posedge I[69], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[69], 0, 0, NOTIFIER);
(CE => O[69]) = 0;
$setuphold(posedge CE, posedge I[70], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[70], 0, 0, NOTIFIER);
(CE => O[70]) = 0;
$setuphold(posedge CE, posedge I[71], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[71], 0, 0, NOTIFIER);
(CE => O[71]) = 0;
$setuphold(posedge CE, posedge I[72], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[72], 0, 0, NOTIFIER);
(CE => O[72]) = 0;
$setuphold(posedge CE, posedge I[73], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[73], 0, 0, NOTIFIER);
(CE => O[73]) = 0;
$setuphold(posedge CE, posedge I[74], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[74], 0, 0, NOTIFIER);
(CE => O[74]) = 0;
$setuphold(posedge CE, posedge I[75], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[75], 0, 0, NOTIFIER);
(CE => O[75]) = 0;
$setuphold(posedge CE, posedge I[76], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[76], 0, 0, NOTIFIER);
(CE => O[76]) = 0;
$setuphold(posedge CE, posedge I[77], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[77], 0, 0, NOTIFIER);
(CE => O[77]) = 0;
$setuphold(posedge CE, posedge I[78], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[78], 0, 0, NOTIFIER);
(CE => O[78]) = 0;
$setuphold(posedge CE, posedge I[79], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[79], 0, 0, NOTIFIER);
(CE => O[79]) = 0;
$setuphold(posedge CE, posedge I[80], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[80], 0, 0, NOTIFIER);
(CE => O[80]) = 0;
$setuphold(posedge CE, posedge I[81], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[81], 0, 0, NOTIFIER);
(CE => O[81]) = 0;
$setuphold(posedge CE, posedge I[82], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[82], 0, 0, NOTIFIER);
(CE => O[82]) = 0;
$setuphold(posedge CE, posedge I[83], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[83], 0, 0, NOTIFIER);
(CE => O[83]) = 0;
$setuphold(posedge CE, posedge I[84], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[84], 0, 0, NOTIFIER);
(CE => O[84]) = 0;
$setuphold(posedge CE, posedge I[85], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[85], 0, 0, NOTIFIER);
(CE => O[85]) = 0;
$setuphold(posedge CE, posedge I[86], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[86], 0, 0, NOTIFIER);
(CE => O[86]) = 0;
$setuphold(posedge CE, posedge I[87], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[87], 0, 0, NOTIFIER);
(CE => O[87]) = 0;
$setuphold(posedge CE, posedge I[88], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[88], 0, 0, NOTIFIER);
(CE => O[88]) = 0;
$setuphold(posedge CE, posedge I[89], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[89], 0, 0, NOTIFIER);
(CE => O[89]) = 0;
$setuphold(posedge CE, posedge I[90], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[90], 0, 0, NOTIFIER);
(CE => O[90]) = 0;
$setuphold(posedge CE, posedge I[91], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[91], 0, 0, NOTIFIER);
(CE => O[91]) = 0;
$setuphold(posedge CE, posedge I[92], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[92], 0, 0, NOTIFIER);
(CE => O[92]) = 0;
$setuphold(posedge CE, posedge I[93], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[93], 0, 0, NOTIFIER);
(CE => O[93]) = 0;
$setuphold(posedge CE, posedge I[94], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[94], 0, 0, NOTIFIER);
(CE => O[94]) = 0;
$setuphold(posedge CE, posedge I[95], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[95], 0, 0, NOTIFIER);
(CE => O[95]) = 0;
$setuphold(posedge CE, posedge I[96], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[96], 0, 0, NOTIFIER);
(CE => O[96]) = 0;
$setuphold(posedge CE, posedge I[97], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[97], 0, 0, NOTIFIER);
(CE => O[97]) = 0;
$setuphold(posedge CE, posedge I[98], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[98], 0, 0, NOTIFIER);
(CE => O[98]) = 0;
$setuphold(posedge CE, posedge I[99], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[99], 0, 0, NOTIFIER);
(CE => O[99]) = 0;
$setuphold(posedge CE, posedge I[100], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[100], 0, 0, NOTIFIER);
(CE => O[100]) = 0;
$setuphold(posedge CE, posedge I[101], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[101], 0, 0, NOTIFIER);
(CE => O[101]) = 0;
$setuphold(posedge CE, posedge I[102], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[102], 0, 0, NOTIFIER);
(CE => O[102]) = 0;
$setuphold(posedge CE, posedge I[103], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[103], 0, 0, NOTIFIER);
(CE => O[103]) = 0;
$setuphold(posedge CE, posedge I[104], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[104], 0, 0, NOTIFIER);
(CE => O[104]) = 0;
$setuphold(posedge CE, posedge I[105], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[105], 0, 0, NOTIFIER);
(CE => O[105]) = 0;
$setuphold(posedge CE, posedge I[106], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[106], 0, 0, NOTIFIER);
(CE => O[106]) = 0;
$setuphold(posedge CE, posedge I[107], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[107], 0, 0, NOTIFIER);
(CE => O[107]) = 0;
$setuphold(posedge CE, posedge I[108], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[108], 0, 0, NOTIFIER);
(CE => O[108]) = 0;
$setuphold(posedge CE, posedge I[109], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[109], 0, 0, NOTIFIER);
(CE => O[109]) = 0;
$setuphold(posedge CE, posedge I[110], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[110], 0, 0, NOTIFIER);
(CE => O[110]) = 0;
$setuphold(posedge CE, posedge I[111], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[111], 0, 0, NOTIFIER);
(CE => O[111]) = 0;
$setuphold(posedge CE, posedge I[112], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[112], 0, 0, NOTIFIER);
(CE => O[112]) = 0;
$setuphold(posedge CE, posedge I[113], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[113], 0, 0, NOTIFIER);
(CE => O[113]) = 0;
$setuphold(posedge CE, posedge I[114], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[114], 0, 0, NOTIFIER);
(CE => O[114]) = 0;
$setuphold(posedge CE, posedge I[115], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[115], 0, 0, NOTIFIER);
(CE => O[115]) = 0;
$setuphold(posedge CE, posedge I[116], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[116], 0, 0, NOTIFIER);
(CE => O[116]) = 0;
$setuphold(posedge CE, posedge I[117], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[117], 0, 0, NOTIFIER);
(CE => O[117]) = 0;
$setuphold(posedge CE, posedge I[118], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[118], 0, 0, NOTIFIER);
(CE => O[118]) = 0;
$setuphold(posedge CE, posedge I[119], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[119], 0, 0, NOTIFIER);
(CE => O[119]) = 0;
$setuphold(posedge CE, posedge I[120], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[120], 0, 0, NOTIFIER);
(CE => O[120]) = 0;
$setuphold(posedge CE, posedge I[121], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[121], 0, 0, NOTIFIER);
(CE => O[121]) = 0;
$setuphold(posedge CE, posedge I[122], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[122], 0, 0, NOTIFIER);
(CE => O[122]) = 0;
$setuphold(posedge CE, posedge I[123], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[123], 0, 0, NOTIFIER);
(CE => O[123]) = 0;
$setuphold(posedge CE, posedge I[124], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[124], 0, 0, NOTIFIER);
(CE => O[124]) = 0;
$setuphold(posedge CE, posedge I[125], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[125], 0, 0, NOTIFIER);
(CE => O[125]) = 0;
$setuphold(posedge CE, posedge I[126], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[126], 0, 0, NOTIFIER);
(CE => O[126]) = 0;
$setuphold(posedge CE, posedge I[127], 0, 0, NOTIFIER);
$setuphold(posedge CE, negedge I[127], 0, 0, NOTIFIER);
(CE => O[127]) = 0;
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
