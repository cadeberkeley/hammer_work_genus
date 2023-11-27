tclmode

# Generated by Genus(TM) Synthesis Solution 22.12-s082_1, revision 1.568
# Generated on: Sun Nov 26 18:56:31 PST 2023 (Mon Nov 27 02:56:31 UTC 2023)

set_screen_display -noprogress
set_dofile_abort exit

### Alias mapping flow is enabled. ###
# Root attribute 'alias_flow'                 was 'true'.

set lec_version [regsub {(-)[A-Za-z]} $env(LEC_VERSION) ""]

# Turns on the flowgraph datapath solver.
set wlec_analyze_dp_flowgraph true
# Indicates that resource sharing datapath optimization is present.
set share_dp_analysis         true

# The flowgraph solver is recommended for datapath analysis in LEC 19.1 or newer.
set lec_version_required "19.10100"
if {$lec_version >= $lec_version_required &&
    $wlec_analyze_dp_flowgraph} {
    set DATAPATH_SOLVER_OPTION "-flowgraph"
} elseif {$share_dp_analysis} {
    set DATAPATH_SOLVER_OPTION "-share"
} else {
    set DATAPATH_SOLVER_OPTION ""
}

tcl_set_command_name_echo on

set logfile fv/riscv_top/rtl_to_fv_map.log ;# user can modify this name for succeeding runs

set_log_file $logfile -replace

usage -auto -elapse

set_mapping_method -sensitive

set_verification_information rtl_fv_map_db

read_implementation_information fv/riscv_top -revised fv_map

# Root attribute 'wlec_multithread_license_list' can be used to specify a license list
# for multithreaded processing. The default list is used otherwise.
set_parallel_option -threads 1,4 -norelease_license
set_compare_options -threads 1,4

set_lowpower_option -golden_netlist_style  logical
set_lowpower_option -revised_netlist_style logical

set env(RC_VERSION)     "22.12-s082_1"
set env(CDN_SYNTH_ROOT) "/tools/cadence/DDI/DDI221/GENUS221/tools.lnx86"
set CDN_SYNTH_ROOT      "/tools/cadence/DDI/DDI221/GENUS221/tools.lnx86"
set env(CW_DIR) "/tools/cadence/DDI/DDI221/GENUS221/tools.lnx86/lib/chipware"
set CW_DIR      "/tools/cadence/DDI/DDI221/GENUS221/tools.lnx86/lib/chipware"
set lec_version_required "21.20249"
if { ($lec_version < $lec_version_required) &&
    [file exists /tools/cadence/DDI/DDI221/GENUS221/tools.lnx86/lib/chipware/old_encrypt_sim]} {
    set env(CW_DIR_SIM) "/tools/cadence/DDI/DDI221/GENUS221/tools.lnx86/lib/chipware/old_encrypt_sim"
    set CW_DIR_SIM      "/tools/cadence/DDI/DDI221/GENUS221/tools.lnx86/lib/chipware/old_encrypt_sim"
} else {
    set env(CW_DIR_SIM) "/tools/cadence/DDI/DDI221/GENUS221/tools.lnx86/lib/chipware/sim"
    set CW_DIR_SIM      "/tools/cadence/DDI/DDI221/GENUS221/tools.lnx86/lib/chipware/sim"
}
set_multiplier_implementation boothrca -both

# default is to error out when module definitions are missing
set_undefined_cell black_box -noascend -both

add_notranslate_modules -library -both SRAM2RW16x32
# ILM modules: 

add_search_path . /tools/cadence/DDI/DDI221/GENUS221/tools.lnx86/lib/tech -library -both
read_library -liberty -both -lp all \
    /tools/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_RVT_SS_nldm_201020.lib.gz \
    /tools/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_LVT_SS_nldm_201020.lib.gz \
    /tools/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_SLVT_SS_nldm_201020.lib.gz \
    /tools/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_SRAM_SS_nldm_201020.lib.gz \
    /tools/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_RVT_SS_nldm_201020.lib.gz \
    /tools/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_LVT_SS_nldm_201020.lib.gz \
    /tools/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_SLVT_SS_nldm_201020.lib.gz \
    /tools/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_SRAM_SS_nldm_201020.lib.gz \
    /tools/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_RVT_SS_nldm_201020.lib.gz \
    /tools/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_LVT_SS_nldm_201020.lib.gz \
    /tools/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_SLVT_SS_nldm_201020.lib.gz \
    /tools/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_SRAM_SS_nldm_201020.lib.gz \
    /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/tech-asap7-cache/LIB/NLDM/asap7sc7p5t_SEQ_RVT_SS_nldm_201020.lib.gz \
    /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/tech-asap7-cache/LIB/NLDM/asap7sc7p5t_SEQ_LVT_SS_nldm_201020.lib.gz \
    /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/tech-asap7-cache/LIB/NLDM/asap7sc7p5t_SEQ_SLVT_SS_nldm_201020.lib.gz \
    /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/tech-asap7-cache/LIB/NLDM/asap7sc7p5t_SEQ_SRAM_SS_nldm_201020.lib.gz \
    /tools/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_RVT_SS_nldm_201020.lib.gz \
    /tools/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_LVT_SS_nldm_201020.lib.gz \
    /tools/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_SLVT_SS_nldm_201020.lib.gz \
    /tools/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_SRAM_SS_nldm_201020.lib.gz \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW1024x16_lib/SRAM1RW1024x16_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW1024x17_lib/SRAM1RW1024x17_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW1024x32_lib/SRAM1RW1024x32_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW1024x37_lib/SRAM1RW1024x37_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW1024x38_lib/SRAM1RW1024x38_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW1024x44_lib/SRAM1RW1024x44_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW1024x64_lib/SRAM1RW1024x64_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW1024x8_lib/SRAM1RW1024x8_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW2048x8_lib/SRAM1RW2048x8_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW128x12_lib/SRAM1RW128x12_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW128x14_lib/SRAM1RW128x14_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW128x22_lib/SRAM1RW128x22_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW128x40_lib/SRAM1RW128x40_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW128x46_lib/SRAM1RW128x46_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW128x48_lib/SRAM1RW128x48_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW128x64_lib/SRAM1RW128x64_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW128x8_lib/SRAM1RW128x8_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW256x128_lib/SRAM1RW256x128_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW256x32_lib/SRAM1RW256x32_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW256x46_lib/SRAM1RW256x46_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW256x48_lib/SRAM1RW256x48_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW256x64_lib/SRAM1RW256x64_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW256x8_lib/SRAM1RW256x8_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW32x50_lib/SRAM1RW32x50_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW4096x16_lib/SRAM1RW4096x16_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW4096x8_lib/SRAM1RW4096x8_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW512x128_lib/SRAM1RW512x128_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW512x32_lib/SRAM1RW512x32_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW512x64_lib/SRAM1RW512x64_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW512x8_lib/SRAM1RW512x8_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW64x128_lib/SRAM1RW64x128_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW64x20_lib/SRAM1RW64x20_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW64x21_lib/SRAM1RW64x21_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW64x22_lib/SRAM1RW64x22_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW64x32_lib/SRAM1RW64x32_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW64x34_lib/SRAM1RW64x34_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW64x8_lib/SRAM1RW64x8_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW128x16_lib/SRAM2RW128x16_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW128x32_lib/SRAM2RW128x32_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW128x4_lib/SRAM2RW128x4_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW128x8_lib/SRAM2RW128x8_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW16x16_lib/SRAM2RW16x16_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW16x32_lib/SRAM2RW16x32_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW16x4_lib/SRAM2RW16x4_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW16x8_lib/SRAM2RW16x8_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW32x16_lib/SRAM2RW32x16_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW32x22_lib/SRAM2RW32x22_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW32x32_lib/SRAM2RW32x32_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW32x33_lib/SRAM2RW32x33_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW32x39_lib/SRAM2RW32x39_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW32x4_lib/SRAM2RW32x4_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW32x8_lib/SRAM2RW32x8_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW64x16_lib/SRAM2RW64x16_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW64x24_lib/SRAM2RW64x24_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW64x32_lib/SRAM2RW64x32_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW64x4_lib/SRAM2RW64x4_PVT_0P63V_100C.lib \
    /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW64x8_lib/SRAM2RW64x8_PVT_0P63V_100C.lib

set_undriven_signal 0 -golden
set lec_version_required "16.20100"
if {$lec_version >= $lec_version_required} {
    set_naming_style genus -golden
} else {
    set_naming_style rc -golden
}
set_naming_rule "%s\[%d\]" -instance_array -golden
set_naming_rule "%s_reg" -register -golden
set_naming_rule "%L.%s" "%L\[%d\].%s" "%s" -instance -golden
set_naming_rule "%L.%s" "%L\[%d\].%s" "%s" -variable -golden
set lec_version_required "17.10200"
if {$lec_version >= $lec_version_required} {
    set_naming_rule -ungroup_separator {_} -golden
}

# Align LEC's treatment of mismatched port widths with constant
# connections with Genus's. Genus message CDFG-467 and LEC message
# HRC3.6 may indicate the presence of this issue.
# This option is only available with LEC 17.20-d301 or later.
set lec_version_required "17.20301"
if {$lec_version >= $lec_version_required} {
    set_hdl_options -const_port_extend
}
set_hdl_options -unsigned_conversion_overflow on
set_hdl_option -v_to_vd on

set lec_version_required "20.20226"
if {$lec_version >= $lec_version_required} {
    set_hdl_options -VERILOG_INCLUDE_DIR "sep:src"
} else {
    set_hdl_options -VERILOG_INCLUDE_DIR "sep:src:cwd"
}
add_search_path . -design -golden
read_design -enumconstraint -define SYNTHESIS  -merge bbox -golden -lastmod -noelab  -sv09 /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ALUdec.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ALU.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/Memory151.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/Riscv151.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/riscv_arbiter.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/riscv_top.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/BranchComp.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/Cache.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/CSR.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ImmDec.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ImmGen.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/mux_21.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/mux_41.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/PCGen.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/Regfile.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/RiscvControl.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/BranchControl.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/HazardDetect.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/RiscvDataFetch.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/RiscvDataDX.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/RiscvDataMW.v
elaborate_design -golden -root {riscv_top} -rootonly 

read_design -verilog95   -revised -lastmod -noelab fv/riscv_top/fv_map.v.gz
elaborate_design -revised -root {riscv_top}

read_power_intent -golden /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/power_spec.cpf
commit_power_intent -golden -insert_isolation
read_power_intent -revised fv/riscv_top/fv_map.cpf
commit_power_intent -revised

uniquify -all -nolib -golden

report_design_data
report_black_box

set_flatten_model -latch_transparent
set_flatten_model -seq_constant
set_flatten_model -seq_constant_x_to 0
set_flatten_model -nodff_to_dlat_zero
set_flatten_model -nodff_to_dlat_feedback
set_flatten_model -hier_seq_merge
set_flatten_model -gated_clock

set_flatten_model -balanced_modeling

#add_name_alias fv/riscv_top/fv_map.singlebit.original_name.alias.json.gz -revised
#set_mapping_method -alias -revised
#add_renaming_rule r1alias _reg((\\\[%w\\\])*(/U\\\$%d)*)$ @1 -type dff dlat -both

# Reports the quality of the implementation information.
# This command is only available with LEC 20.10-p100 or later.
set lec_version_required "20.10100"
if {$lec_version >= $lec_version_required} {
    check_verification_information
}

set_analyze_option -auto -report_map

write_hier_compare_dofile hier_tmp1.lec.do -verbose -noexact_pin_match -constraint -usage \
-replace -balanced_extraction -input_output_pin_equivalence \
-prepend_string "report_design_data; report_unmapped_points -summary; report_unmapped_points -notmapped; analyze_datapath -module -verbose; eval analyze_datapath $DATAPATH_SOLVER_OPTION -verbose"
run_hier_compare hier_tmp1.lec.do -dynamic_hierarchy

report_hier_compare_result -dynamicflattened

report_verification -hier -verbose

set_system_mode lec
write_compared_points noneq.compared_points.riscv_top.rtl.fv_map.tcl -class noneq -tclmode -replace
set lec_version_required "21.10100"
if {$lec_version >= $lec_version_required} {
    analyze_nonequivalent -source_diagnosis
    report_nonequivalent_analysis > noneq.source_diag.riscv_top.rtl.fv_map.rpt
}
report_test_vector -noneq > noneq.test_vector.riscv_top.rtl.fv_map.rpt
set_system_mode setup
write_verification_information
report_verification_information

# Reports how effective the implementation information was.
# This command is only available with LEC 18.20-d330 or later.
set lec_version_required "18.20330"
if {$lec_version >= $lec_version_required} {
    report_implementation_information
}

set_system_mode lec

puts "No of compare points = [get_compare_points -count]"
puts "No of diff points    = [get_compare_points -NONequivalent -count]"
puts "No of abort points   = [get_compare_points -abort -count]"
puts "No of unknown points = [get_compare_points -unknown -count]"
if {[get_compare_points -count] == 0} {
    puts "---------------------------------"
    puts "ERROR: No compare points detected"
    puts "---------------------------------"
}
if {[get_compare_points -NONequivalent -count] > 0} {
    puts "------------------------------------"
    puts "ERROR: Different Key Points detected"
    puts "------------------------------------"
}
if {[get_compare_points -abort -count] > 0} {
    puts "-----------------------------"
    puts "ERROR: Abort Points detected "
    puts "-----------------------------"
}
if {[get_compare_points -unknown -count] > 0} {
    puts "----------------------------------"
    puts "ERROR: Unknown Key Points detected"
    puts "----------------------------------"
}

# Generate a detailed summary of the run.
# This command is available with LEC 19.10-p100 or later.
set lec_version_required "19.10100"
if {$lec_version >= $lec_version_required} {
    analyze_results -logfiles $logfile
}

vpxmode

exit -f
