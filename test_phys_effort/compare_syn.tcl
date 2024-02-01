====
1:20,21c
  puts "read_mmmc /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_none/syn-rundir/mmmc.tcl" 
  read_mmmc /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_none/syn-rundir/mmmc.tcl
2:20,21c
  puts "read_mmmc /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_medium/syn-rundir/mmmc.tcl" 
  read_mmmc /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_medium/syn-rundir/mmmc.tcl
3:20,21c
  puts "read_mmmc /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_high/syn-rundir/mmmc.tcl" 
  read_mmmc /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_high/syn-rundir/mmmc.tcl
====
1:32,33c
  puts "read_power_intent -cpf /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_none/syn-rundir/power_spec.cpf" 
  read_power_intent -cpf /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_none/syn-rundir/power_spec.cpf
2:32,33c
  puts "read_power_intent -cpf /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_medium/syn-rundir/power_spec.cpf" 
  read_power_intent -cpf /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_medium/syn-rundir/power_spec.cpf
3:32,33c
  puts "read_power_intent -cpf /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_high/syn-rundir/power_spec.cpf" 
  read_power_intent -cpf /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_high/syn-rundir/power_spec.cpf
====
1:40,41c
  puts "set_db phys_flow_effort none" 
  set_db phys_flow_effort none
2:40,43c
  puts "set_db phys_flow_effort medium" 
  set_db phys_flow_effort medium
  puts "read_def /tools/scratch/caderichard/hammer_work/asic-lab.def" 
  read_def /tools/scratch/caderichard/hammer_work/asic-lab.def
3:40,49c
  puts "set_db phys_flow_effort high" 
  set_db phys_flow_effort high
  puts "read_def /tools/scratch/caderichard/hammer_work/asic-lab.def" 
  read_def /tools/scratch/caderichard/hammer_work/asic-lab.def
  puts "set_db innovus_executable /tools/cadence/DDI/DDI221_ISR4/INNOVUS221/bin/innovus" 
  set_db innovus_executable /tools/cadence/DDI/DDI221_ISR4/INNOVUS221/bin/innovus
  puts "set_db invs_temp_dir innovus" 
  set_db invs_temp_dir innovus
  puts "set_db opt_spatial_effort extreme" 
  set_db opt_spatial_effort extreme
====1
1:212,213c
  puts "syn_generic" 
  syn_generic
2:214,215c
3:220,221c
  puts "syn_generic -physical" 
  syn_generic -physical
====
1:216,217c
  puts "syn_map" 
  syn_map
2:218,219c
  puts "syn_map -physical" 
  syn_map -physical
3:224,227c
  puts "syn_map -physical" 
  syn_map -physical
  puts "syn_opt -spatial" 
  syn_opt -spatial
====1
1:264a
2:267,268c
3:275,276c
  puts "report_ple > reports/final_ple.rpt" 
  report_ple > reports/final_ple.rpt
====
1:269,270c
  puts "write_hdl > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_none/syn-rundir/riscv_top.mapped.v" 
  write_hdl > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_none/syn-rundir/riscv_top.mapped.v
2:273,274c
  puts "write_hdl > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_medium/syn-rundir/riscv_top.mapped.v" 
  write_hdl > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_medium/syn-rundir/riscv_top.mapped.v
3:281,282c
  puts "write_hdl > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_high/syn-rundir/riscv_top.mapped.v" 
  write_hdl > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_high/syn-rundir/riscv_top.mapped.v
====
1:273,276c
  puts "write_sdc -view PVT_0P63V_100C.setup_view > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_none/syn-rundir/riscv_top.mapped.sdc" 
  write_sdc -view PVT_0P63V_100C.setup_view > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_none/syn-rundir/riscv_top.mapped.sdc
  puts "write_sdf > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_none/syn-rundir/riscv_top.mapped.sdf" 
  write_sdf > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_none/syn-rundir/riscv_top.mapped.sdf
2:277,280c
  puts "write_sdc -view PVT_0P63V_100C.setup_view > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_medium/syn-rundir/riscv_top.mapped.sdc" 
  write_sdc -view PVT_0P63V_100C.setup_view > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_medium/syn-rundir/riscv_top.mapped.sdc
  puts "write_sdf > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_medium/syn-rundir/riscv_top.mapped.sdf" 
  write_sdf > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_medium/syn-rundir/riscv_top.mapped.sdf
3:285,288c
  puts "write_sdc -view PVT_0P63V_100C.setup_view > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_high/syn-rundir/riscv_top.mapped.sdc" 
  write_sdc -view PVT_0P63V_100C.setup_view > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_high/syn-rundir/riscv_top.mapped.sdc
  puts "write_sdf > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_high/syn-rundir/riscv_top.mapped.sdf" 
  write_sdf > /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab-effort_high/syn-rundir/riscv_top.mapped.sdf
