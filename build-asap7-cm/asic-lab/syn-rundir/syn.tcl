# --------------------------------------------------------------------------------
# This script was written and developed by HAMMER at UC Berkeley; however, the
# underlying commands and reports are copyrighted by Cadence. We thank Cadence for
# granting permission to share our research to help promote and foster the next
# generation of innovators.
# --------------------------------------------------------------------------------

puts "set_db hdl_error_on_blackbox true" 
set_db hdl_error_on_blackbox true
puts "set_db max_cpus_per_server 1" 
set_db max_cpus_per_server 1
puts "set_db lp_clock_gating_infer_enable  true" 
set_db lp_clock_gating_infer_enable  true
puts "set_db lp_clock_gating_prefix  {CLKGATE}" 
set_db lp_clock_gating_prefix  {CLKGATE}
puts "set_db lp_insert_clock_gating  true" 
set_db lp_insert_clock_gating  true
puts "set_db lp_clock_gating_register_aware true" 
set_db lp_clock_gating_register_aware true
puts "read_mmmc /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/mmmc.tcl" 
read_mmmc /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/mmmc.tcl
puts "read_physical -lef { /tools/B/asap7/asap7sc7p5t_27/techlef_misc/asap7_tech_4x_201209.lef /tools/B/asap7/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_R_4x_201211.lef /tools/B/asap7/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_L_4x_201211.lef /tools/B/asap7/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_SL_4x_201211.lef /tools/B/asap7/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_SRAM_4x_201211.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x16_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x17_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x32_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x37_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x38_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x44_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x64_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW2048x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x12_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x14_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x22_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x40_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x46_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x48_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x64_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x128_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x32_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x46_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x48_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x64_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW32x50_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW4096x16_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW4096x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x128_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x32_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x64_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x128_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x20_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x21_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x22_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x32_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x34_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x16_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x32_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x4_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x16_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x32_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x4_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x16_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x22_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x32_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x33_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x39_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x4_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x16_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x24_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x32_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x4_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x8_x4.lef }" 
read_physical -lef { /tools/B/asap7/asap7sc7p5t_27/techlef_misc/asap7_tech_4x_201209.lef /tools/B/asap7/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_R_4x_201211.lef /tools/B/asap7/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_L_4x_201211.lef /tools/B/asap7/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_SL_4x_201211.lef /tools/B/asap7/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_SRAM_4x_201211.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x16_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x17_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x32_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x37_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x38_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x44_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x64_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW2048x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x12_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x14_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x22_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x40_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x46_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x48_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x64_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x128_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x32_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x46_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x48_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x64_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW32x50_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW4096x16_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW4096x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x128_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x32_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x64_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x128_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x20_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x21_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x22_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x32_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x34_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x16_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x32_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x4_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x16_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x32_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x4_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x16_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x22_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x32_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x33_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x39_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x4_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x8_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x16_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x24_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x32_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x4_x4.lef /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x8_x4.lef }
puts "set_db qrc_tech_file { /tools/B/asap7/asap7sc7p5t_27/qrc/qrcTechFile_typ03_scaled4xV06 }" 
set_db qrc_tech_file { /tools/B/asap7/asap7sc7p5t_27/qrc/qrcTechFile_typ03_scaled4xV06 }
puts "read_hdl -sv { /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ALUdec.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ALU.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/Memory151.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/Riscv151.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/riscv_arbiter.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/riscv_top.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/BranchComp.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/BranchControl.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/Cache.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/CSR.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ImmDec.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ImmGen.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/mux_21.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/mux_41.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/PCGen.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/Regfile.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/RiscvControl.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/BranchControl.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/HazardDetect.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/RiscvDataFetch.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/RiscvDataDX.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/RiscvDataMW.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ALUop.vh /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ImmCode.vh /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/const.vh /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/LoadOp.vh /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/Opcode.vh /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/StoreOp.vh /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/util.vh }" 
read_hdl -sv { /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ALUdec.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ALU.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/Memory151.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/Riscv151.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/riscv_arbiter.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/riscv_top.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/BranchComp.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/BranchControl.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/Cache.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/CSR.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ImmDec.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ImmGen.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/mux_21.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/mux_41.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/PCGen.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/Regfile.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/RiscvControl.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/BranchControl.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/HazardDetect.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/RiscvDataFetch.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/RiscvDataDX.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/RiscvDataMW.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ALUop.vh /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ImmCode.vh /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/const.vh /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/LoadOp.vh /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/Opcode.vh /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/StoreOp.vh /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/util.vh }
puts "elaborate riscv_top" 
elaborate riscv_top
puts "init_design -top riscv_top" 
init_design -top riscv_top
puts "read_power_intent -cpf /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/power_spec.cpf" 
read_power_intent -cpf /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/power_spec.cpf
puts "apply_power_intent -summary" 
apply_power_intent -summary
puts "commit_power_intent" 
commit_power_intent
puts "set_db root: .auto_ungroup none" 
set_db root: .auto_ungroup none
puts "set_db phys_flow_effort high" 
set_db phys_flow_effort high
puts "set_db innovus_executable /tools/cadence/DDI/DDI221/INNOVUS221/bin/innovus" 
set_db innovus_executable /tools/cadence/DDI/DDI221/INNOVUS221/bin/innovus
puts "set_db invs_temp_dir innovus" 
set_db invs_temp_dir innovus
puts "set_db opt_spatial_effort extreme" 
set_db opt_spatial_effort extreme

puts "set_dont_use \[get_db lib_cells */ICGx*DC*\]"
if { [get_db lib_cells */ICGx*DC*] ne "" } {
    set_dont_use [get_db lib_cells */ICGx*DC*]
} else {
    puts "WARNING: cell */ICGx*DC* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */AND4x1*\]"
if { [get_db lib_cells */AND4x1*] ne "" } {
    set_dont_use [get_db lib_cells */AND4x1*]
} else {
    puts "WARNING: cell */AND4x1* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */SDFLx2*\]"
if { [get_db lib_cells */SDFLx2*] ne "" } {
    set_dont_use [get_db lib_cells */SDFLx2*]
} else {
    puts "WARNING: cell */SDFLx2* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */AO21x1*\]"
if { [get_db lib_cells */AO21x1*] ne "" } {
    set_dont_use [get_db lib_cells */AO21x1*]
} else {
    puts "WARNING: cell */AO21x1* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */XOR2x2*\]"
if { [get_db lib_cells */XOR2x2*] ne "" } {
    set_dont_use [get_db lib_cells */XOR2x2*]
} else {
    puts "WARNING: cell */XOR2x2* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */OAI31xp33*\]"
if { [get_db lib_cells */OAI31xp33*] ne "" } {
    set_dont_use [get_db lib_cells */OAI31xp33*]
} else {
    puts "WARNING: cell */OAI31xp33* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */OAI221xp5*\]"
if { [get_db lib_cells */OAI221xp5*] ne "" } {
    set_dont_use [get_db lib_cells */OAI221xp5*]
} else {
    puts "WARNING: cell */OAI221xp5* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */SDFLx3*\]"
if { [get_db lib_cells */SDFLx3*] ne "" } {
    set_dont_use [get_db lib_cells */SDFLx3*]
} else {
    puts "WARNING: cell */SDFLx3* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */SDFLx1*\]"
if { [get_db lib_cells */SDFLx1*] ne "" } {
    set_dont_use [get_db lib_cells */SDFLx1*]
} else {
    puts "WARNING: cell */SDFLx1* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */AOI211xp5*\]"
if { [get_db lib_cells */AOI211xp5*] ne "" } {
    set_dont_use [get_db lib_cells */AOI211xp5*]
} else {
    puts "WARNING: cell */AOI211xp5* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */OAI322xp33*\]"
if { [get_db lib_cells */OAI322xp33*] ne "" } {
    set_dont_use [get_db lib_cells */OAI322xp33*]
} else {
    puts "WARNING: cell */OAI322xp33* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */OR2x6*\]"
if { [get_db lib_cells */OR2x6*] ne "" } {
    set_dont_use [get_db lib_cells */OR2x6*]
} else {
    puts "WARNING: cell */OR2x6* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */A2O1A1O1Ixp25*\]"
if { [get_db lib_cells */A2O1A1O1Ixp25*] ne "" } {
    set_dont_use [get_db lib_cells */A2O1A1O1Ixp25*]
} else {
    puts "WARNING: cell */A2O1A1O1Ixp25* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */XNOR2x1*\]"
if { [get_db lib_cells */XNOR2x1*] ne "" } {
    set_dont_use [get_db lib_cells */XNOR2x1*]
} else {
    puts "WARNING: cell */XNOR2x1* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */OAI32xp33*\]"
if { [get_db lib_cells */OAI32xp33*] ne "" } {
    set_dont_use [get_db lib_cells */OAI32xp33*]
} else {
    puts "WARNING: cell */OAI32xp33* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */FAx1*\]"
if { [get_db lib_cells */FAx1*] ne "" } {
    set_dont_use [get_db lib_cells */FAx1*]
} else {
    puts "WARNING: cell */FAx1* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */OAI21x1*\]"
if { [get_db lib_cells */OAI21x1*] ne "" } {
    set_dont_use [get_db lib_cells */OAI21x1*]
} else {
    puts "WARNING: cell */OAI21x1* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */OAI31xp67*\]"
if { [get_db lib_cells */OAI31xp67*] ne "" } {
    set_dont_use [get_db lib_cells */OAI31xp67*]
} else {
    puts "WARNING: cell */OAI31xp67* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */OAI33xp33*\]"
if { [get_db lib_cells */OAI33xp33*] ne "" } {
    set_dont_use [get_db lib_cells */OAI33xp33*]
} else {
    puts "WARNING: cell */OAI33xp33* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */AO21x2*\]"
if { [get_db lib_cells */AO21x2*] ne "" } {
    set_dont_use [get_db lib_cells */AO21x2*]
} else {
    puts "WARNING: cell */AO21x2* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */AOI32xp33*\]"
if { [get_db lib_cells */AOI32xp33*] ne "" } {
    set_dont_use [get_db lib_cells */AOI32xp33*]
} else {
    puts "WARNING: cell */AOI32xp33* was not found for set_dont_use"
}
            
puts "write_db -to_file pre_syn_generic" 
write_db -to_file pre_syn_generic
puts "read_def /tools/scratch/caderichard/hammer_work/configs-design/asic-lab/asic-lab.def" 
read_def /tools/scratch/caderichard/hammer_work/configs-design/asic-lab/asic-lab.def
puts "syn_generic -physical" 
syn_generic -physical
puts "write_db -to_file pre_syn_map" 
write_db -to_file pre_syn_map
puts "syn_map -physical" 
syn_map -physical
puts "write_db -to_file pre_ispatial_opt" 
write_db -to_file pre_ispatial_opt
puts "syn_opt -spatial" 
syn_opt -spatial
puts "write_db -to_file pre_add_tieoffs" 
write_db -to_file pre_add_tieoffs
puts "set_db message:WSDF-201 .max_print 20" 
set_db message:WSDF-201 .max_print 20
puts "set_db use_tiehilo_for_const duplicate" 
set_db use_tiehilo_for_const duplicate
puts "add_tieoffs -high TIEHIx1_ASAP7_75t_SL -low TIELOx1_ASAP7_75t_SL -max_fanout 1 -verbose" 
add_tieoffs -high TIEHIx1_ASAP7_75t_SL -low TIELOx1_ASAP7_75t_SL -max_fanout 1 -verbose
puts "write_db -to_file pre_write_regs" 
write_db -to_file pre_write_regs

        set write_cells_ir "./find_regs_cells.json"
        set write_cells_ir [open $write_cells_ir "w"]
        puts $write_cells_ir "\["

        set refs [get_db [get_db lib_cells -if .is_sequential==true] .base_name]

        set len [llength $refs]

        for {set i 0} {$i < [llength $refs]} {incr i} {
            if {$i == $len - 1} {
                puts $write_cells_ir "    \"[lindex $refs $i]\""
            } else {
                puts $write_cells_ir "    \"[lindex $refs $i]\","
            }
        }

        puts $write_cells_ir "\]"
        close $write_cells_ir
        set write_regs_ir "./find_regs_paths.json"
        set write_regs_ir [open $write_regs_ir "w"]
        puts $write_regs_ir "\["

        set regs [get_db [get_db [all_registers -edge_triggered -output_pins] -if .direction==out] .name]

        set len [llength $regs]

        for {set i 0} {$i < [llength $regs]} {incr i} {
            #regsub -all {/} [lindex $regs $i] . myreg
            set myreg [lindex $regs $i]
            if {$i == $len - 1} {
                puts $write_regs_ir "    \"$myreg\""
            } else {
                puts $write_regs_ir "    \"$myreg\","
            }
        }

        puts $write_regs_ir "\]"

        close $write_regs_ir
        
puts "write_db -to_file pre_generate_reports" 
write_db -to_file pre_generate_reports
puts "write_reports -directory reports -tag final" 
write_reports -directory reports -tag final
puts "report_ple > reports/final_ple.rpt" 
report_ple > reports/final_ple.rpt
puts "report_timing -unconstrained -max_paths 50 > reports/final_unconstrained.rpt" 
report_timing -unconstrained -max_paths 50 > reports/final_unconstrained.rpt
puts "write_db -to_file pre_write_outputs" 
write_db -to_file pre_write_outputs
puts "write_hdl > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/riscv_top.mapped.v" 
write_hdl > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/riscv_top.mapped.v
puts "write_template -full -outfile riscv_top.mapped.scr" 
write_template -full -outfile riscv_top.mapped.scr
puts "write_sdc -view PVT_0P63V_100C.setup_view > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/riscv_top.mapped.sdc" 
write_sdc -view PVT_0P63V_100C.setup_view > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/riscv_top.mapped.sdc
puts "write_sdf > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/riscv_top.mapped.sdf" 
write_sdf > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/riscv_top.mapped.sdf
puts "write_design -gzip_files riscv_top" 
write_design -gzip_files riscv_top
puts "quit" 
quit