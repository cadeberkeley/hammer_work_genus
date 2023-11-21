# ####################################################################

#  Created by Genus(TM) Synthesis Solution 22.12-s082_1 on Mon Nov 13 21:55:32 PST 2023

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1fF
set_units -time 1ps

# Set the current design
current_design riscv_top

create_clock -name "clk" -period 5000.0 -waveform {0.0 2500.0} [get_ports clk]
set_load -pin_load 1000.0 [get_ports mem_req_valid]
set_load -pin_load 1000.0 [get_ports mem_req_rw]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[27]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[26]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[25]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[24]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[23]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[22]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[21]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[20]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[19]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[18]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[17]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[16]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[15]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[14]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[13]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[12]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[11]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[10]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[9]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[8]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[7]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[6]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[5]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[4]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[3]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[2]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[1]}]
set_load -pin_load 1000.0 [get_ports {mem_req_addr[0]}]
set_load -pin_load 1000.0 [get_ports {mem_req_tag[4]}]
set_load -pin_load 1000.0 [get_ports {mem_req_tag[3]}]
set_load -pin_load 1000.0 [get_ports {mem_req_tag[2]}]
set_load -pin_load 1000.0 [get_ports {mem_req_tag[1]}]
set_load -pin_load 1000.0 [get_ports {mem_req_tag[0]}]
set_load -pin_load 1000.0 [get_ports mem_req_data_valid]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[127]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[126]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[125]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[124]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[123]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[122]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[121]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[120]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[119]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[118]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[117]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[116]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[115]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[114]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[113]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[112]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[111]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[110]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[109]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[108]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[107]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[106]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[105]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[104]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[103]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[102]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[101]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[100]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[99]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[98]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[97]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[96]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[95]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[94]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[93]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[92]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[91]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[90]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[89]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[88]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[87]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[86]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[85]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[84]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[83]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[82]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[81]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[80]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[79]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[78]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[77]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[76]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[75]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[74]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[73]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[72]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[71]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[70]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[69]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[68]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[67]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[66]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[65]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[64]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[63]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[62]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[61]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[60]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[59]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[58]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[57]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[56]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[55]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[54]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[53]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[52]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[51]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[50]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[49]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[48]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[47]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[46]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[45]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[44]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[43]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[42]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[41]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[40]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[39]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[38]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[37]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[36]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[35]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[34]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[33]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[32]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[31]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[30]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[29]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[28]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[27]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[26]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[25]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[24]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[23]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[22]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[21]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[20]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[19]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[18]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[17]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[16]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[15]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[14]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[13]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[12]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[11]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[10]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[9]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[8]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[7]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[6]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[5]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[4]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[3]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[2]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[1]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_bits[0]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_mask[15]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_mask[14]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_mask[13]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_mask[12]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_mask[11]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_mask[10]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_mask[9]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_mask[8]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_mask[7]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_mask[6]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_mask[5]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_mask[4]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_mask[3]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_mask[2]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_mask[1]}]
set_load -pin_load 1000.0 [get_ports {mem_req_data_mask[0]}]
set_load -pin_load 1000.0 [get_ports {csr[31]}]
set_load -pin_load 1000.0 [get_ports {csr[30]}]
set_load -pin_load 1000.0 [get_ports {csr[29]}]
set_load -pin_load 1000.0 [get_ports {csr[28]}]
set_load -pin_load 1000.0 [get_ports {csr[27]}]
set_load -pin_load 1000.0 [get_ports {csr[26]}]
set_load -pin_load 1000.0 [get_ports {csr[25]}]
set_load -pin_load 1000.0 [get_ports {csr[24]}]
set_load -pin_load 1000.0 [get_ports {csr[23]}]
set_load -pin_load 1000.0 [get_ports {csr[22]}]
set_load -pin_load 1000.0 [get_ports {csr[21]}]
set_load -pin_load 1000.0 [get_ports {csr[20]}]
set_load -pin_load 1000.0 [get_ports {csr[19]}]
set_load -pin_load 1000.0 [get_ports {csr[18]}]
set_load -pin_load 1000.0 [get_ports {csr[17]}]
set_load -pin_load 1000.0 [get_ports {csr[16]}]
set_load -pin_load 1000.0 [get_ports {csr[15]}]
set_load -pin_load 1000.0 [get_ports {csr[14]}]
set_load -pin_load 1000.0 [get_ports {csr[13]}]
set_load -pin_load 1000.0 [get_ports {csr[12]}]
set_load -pin_load 1000.0 [get_ports {csr[11]}]
set_load -pin_load 1000.0 [get_ports {csr[10]}]
set_load -pin_load 1000.0 [get_ports {csr[9]}]
set_load -pin_load 1000.0 [get_ports {csr[8]}]
set_load -pin_load 1000.0 [get_ports {csr[7]}]
set_load -pin_load 1000.0 [get_ports {csr[6]}]
set_load -pin_load 1000.0 [get_ports {csr[5]}]
set_load -pin_load 1000.0 [get_ports {csr[4]}]
set_load -pin_load 1000.0 [get_ports {csr[3]}]
set_load -pin_load 1000.0 [get_ports {csr[2]}]
set_load -pin_load 1000.0 [get_ports {csr[1]}]
set_load -pin_load 1000.0 [get_ports {csr[0]}]
set_clock_groups -name "clock_groups_clk_to_others" -asynchronous -group [get_clocks clk]
group_path -name cg_enable_group_clk -through [list \
  [get_pins cpu/DATA_DX/DATA_REGFILE/CLKGATE_RC_CG_HIER_INST1/enable]  \
  [get_pins cpu/DATA_DX/DATA_REGFILE/CLKGATE_RC_CG_HIER_INST1/RC_CGIC_INST/ENA]  \
  [get_pins cpu/DATA_DX/DATA_REGFILE/CLKGATE_RC_CG_HIER_INST1/enable]  \
  [get_pins cpu/DATA_DX/DATA_REGFILE/CLKGATE_RC_CG_HIER_INST1/RC_CGIC_INST/ENA]  \
  [get_pins cpu/DATA_DX/DATA_REGFILE/CLKGATE_RC_CG_HIER_INST1/enable]  \
  [get_pins cpu/DATA_DX/DATA_REGFILE/CLKGATE_RC_CG_HIER_INST1/RC_CGIC_INST/ENA] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay 1000.0 [get_ports reset]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_RVT_SS_nldm_201020/AND4x1_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_RVT_SS_nldm_201020/FAx1_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_RVT_SS_nldm_201020/OR2x6_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_RVT_SS_nldm_201020/XNOR2x1_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_RVT_SS_nldm_201020/XOR2x2_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_LVT_SS_nldm_201020/AND4x1_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_LVT_SS_nldm_201020/FAx1_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_LVT_SS_nldm_201020/OR2x6_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_LVT_SS_nldm_201020/XNOR2x1_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_LVT_SS_nldm_201020/XOR2x2_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_SLVT_SS_nldm_201020/AND4x1_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_SLVT_SS_nldm_201020/FAx1_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_SLVT_SS_nldm_201020/OR2x6_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_SLVT_SS_nldm_201020/XNOR2x1_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_SLVT_SS_nldm_201020/XOR2x2_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_SRAM_SS_nldm_201020/AND4x1_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_SRAM_SS_nldm_201020/FAx1_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_SRAM_SS_nldm_201020/OR2x6_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_SRAM_SS_nldm_201020/XNOR2x1_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_SIMPLE_SRAM_SS_nldm_201020/XOR2x2_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_RVT_SS_nldm_201020/A2O1A1O1Ixp25_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_RVT_SS_nldm_201020/AO21x1_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_RVT_SS_nldm_201020/AO21x2_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_RVT_SS_nldm_201020/AOI211xp5_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_RVT_SS_nldm_201020/AOI32xp33_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_LVT_SS_nldm_201020/A2O1A1O1Ixp25_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_LVT_SS_nldm_201020/AO21x1_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_LVT_SS_nldm_201020/AO21x2_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_LVT_SS_nldm_201020/AOI211xp5_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_LVT_SS_nldm_201020/AOI32xp33_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_SLVT_SS_nldm_201020/A2O1A1O1Ixp25_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_SLVT_SS_nldm_201020/AO21x1_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_SLVT_SS_nldm_201020/AO21x2_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_SLVT_SS_nldm_201020/AOI211xp5_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_SLVT_SS_nldm_201020/AOI32xp33_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_SRAM_SS_nldm_201020/A2O1A1O1Ixp25_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_SRAM_SS_nldm_201020/AO21x1_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_SRAM_SS_nldm_201020/AO21x2_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_SRAM_SS_nldm_201020/AOI211xp5_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_AO_SRAM_SS_nldm_201020/AOI32xp33_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_RVT_SS_nldm_201020/OAI21x1_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_RVT_SS_nldm_201020/OAI221xp5_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_RVT_SS_nldm_201020/OAI31xp33_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_RVT_SS_nldm_201020/OAI31xp67_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_RVT_SS_nldm_201020/OAI322xp33_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_RVT_SS_nldm_201020/OAI32xp33_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_RVT_SS_nldm_201020/OAI33xp33_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_LVT_SS_nldm_201020/OAI21x1_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_LVT_SS_nldm_201020/OAI221xp5_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_LVT_SS_nldm_201020/OAI31xp33_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_LVT_SS_nldm_201020/OAI31xp67_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_LVT_SS_nldm_201020/OAI322xp33_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_LVT_SS_nldm_201020/OAI32xp33_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_LVT_SS_nldm_201020/OAI33xp33_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_SLVT_SS_nldm_201020/OAI21x1_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_SLVT_SS_nldm_201020/OAI221xp5_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_SLVT_SS_nldm_201020/OAI31xp33_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_SLVT_SS_nldm_201020/OAI31xp67_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_SLVT_SS_nldm_201020/OAI322xp33_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_SLVT_SS_nldm_201020/OAI32xp33_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_SLVT_SS_nldm_201020/OAI33xp33_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_SRAM_SS_nldm_201020/OAI21x1_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_SRAM_SS_nldm_201020/OAI221xp5_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_SRAM_SS_nldm_201020/OAI31xp33_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_SRAM_SS_nldm_201020/OAI31xp67_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_SRAM_SS_nldm_201020/OAI322xp33_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_SRAM_SS_nldm_201020/OAI32xp33_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_OA_SRAM_SS_nldm_201020/OAI33xp33_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_RVT_SS_nldm_201020/ICGx2p67DC_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_RVT_SS_nldm_201020/ICGx4DC_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_RVT_SS_nldm_201020/ICGx5p33DC_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_RVT_SS_nldm_201020/ICGx6p67DC_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_RVT_SS_nldm_201020/ICGx8DC_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_RVT_SS_nldm_201020/SDFLx1_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_RVT_SS_nldm_201020/SDFLx2_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_RVT_SS_nldm_201020/SDFLx3_ASAP7_75t_R]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_LVT_SS_nldm_201020/ICGx2p67DC_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_LVT_SS_nldm_201020/ICGx4DC_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_LVT_SS_nldm_201020/ICGx5p33DC_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_LVT_SS_nldm_201020/ICGx6p67DC_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_LVT_SS_nldm_201020/ICGx8DC_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_LVT_SS_nldm_201020/SDFLx1_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_LVT_SS_nldm_201020/SDFLx2_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_LVT_SS_nldm_201020/SDFLx3_ASAP7_75t_L]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_SLVT_SS_nldm_201020/ICGx2p67DC_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_SLVT_SS_nldm_201020/ICGx4DC_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_SLVT_SS_nldm_201020/ICGx5p33DC_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_SLVT_SS_nldm_201020/ICGx6p67DC_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_SLVT_SS_nldm_201020/ICGx8DC_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_SLVT_SS_nldm_201020/SDFLx1_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_SLVT_SS_nldm_201020/SDFLx2_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_SLVT_SS_nldm_201020/SDFLx3_ASAP7_75t_SL]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_SRAM_SS_nldm_201020/ICGx2p67DC_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_SRAM_SS_nldm_201020/ICGx4DC_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_SRAM_SS_nldm_201020/ICGx5p33DC_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_SRAM_SS_nldm_201020/ICGx6p67DC_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_SRAM_SS_nldm_201020/ICGx8DC_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_SRAM_SS_nldm_201020/SDFLx1_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_SRAM_SS_nldm_201020/SDFLx2_ASAP7_75t_SRAM]
set_dont_use true [get_lib_cells asap7sc7p5t_SEQ_SRAM_SS_nldm_201020/SDFLx3_ASAP7_75t_SRAM]
set_clock_uncertainty -setup 100.0 [get_clocks clk]
set_clock_uncertainty -hold 100.0 [get_clocks clk]
