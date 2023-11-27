if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name PVT_0P77V_0C.hold_set\
   -timing\
    [list ${::IMEX::libVar}/mmmc/asap7sc7p5t_SIMPLE_RVT_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_SIMPLE_LVT_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_SIMPLE_SLVT_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_SIMPLE_SRAM_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_AO_RVT_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_AO_LVT_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_AO_SLVT_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_AO_SRAM_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_OA_RVT_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_OA_LVT_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_OA_SLVT_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_OA_SRAM_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_SEQ_RVT_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_SEQ_LVT_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_SEQ_SLVT_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_SEQ_SRAM_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_INVBUF_RVT_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_INVBUF_LVT_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_INVBUF_SLVT_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_INVBUF_SRAM_FF_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/SRAM1RW1024x16_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW1024x17_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW1024x32_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW1024x37_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW1024x38_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW1024x44_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW1024x64_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW1024x8_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW2048x8_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW128x12_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW128x14_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW128x22_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW128x40_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW128x46_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW128x48_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW128x64_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW128x8_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW256x128_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW256x32_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW256x46_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW256x48_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW256x64_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW256x8_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW32x50_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW4096x16_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW4096x8_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW512x128_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW512x32_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW512x64_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW512x8_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW64x128_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW64x20_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW64x21_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW64x22_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW64x32_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW64x34_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW64x8_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW128x16_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW128x32_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW128x4_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW128x8_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW16x16_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW16x32_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW16x4_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW16x8_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW32x16_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW32x22_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW32x32_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW32x33_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW32x39_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW32x4_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW32x8_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW64x16_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW64x24_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW64x32_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW64x4_PVT_0P77V_0C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW64x8_PVT_0P77V_0C.lib]
create_library_set -name PVT_0P63V_100C.setup_set\
   -timing\
    [list ${::IMEX::libVar}/mmmc/asap7sc7p5t_SIMPLE_RVT_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_SIMPLE_LVT_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_SIMPLE_SLVT_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_SIMPLE_SRAM_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_AO_RVT_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_AO_LVT_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_AO_SLVT_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_AO_SRAM_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_OA_RVT_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_OA_LVT_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_OA_SLVT_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_OA_SRAM_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_SEQ_RVT_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_SEQ_LVT_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_SEQ_SLVT_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_SEQ_SRAM_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_INVBUF_RVT_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_INVBUF_LVT_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_INVBUF_SLVT_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_INVBUF_SRAM_SS_nldm_201020.lib.gz\
    ${::IMEX::libVar}/mmmc/SRAM1RW1024x16_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW1024x17_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW1024x32_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW1024x37_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW1024x38_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW1024x44_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW1024x64_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW1024x8_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW2048x8_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW128x12_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW128x14_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW128x22_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW128x40_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW128x46_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW128x48_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW128x64_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW128x8_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW256x128_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW256x32_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW256x46_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW256x48_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW256x64_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW256x8_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW32x50_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW4096x16_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW4096x8_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW512x128_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW512x32_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW512x64_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW512x8_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW64x128_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW64x20_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW64x21_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW64x22_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW64x32_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW64x34_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM1RW64x8_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW128x16_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW128x32_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW128x4_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW128x8_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW16x16_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW16x32_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW16x4_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW16x8_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW32x16_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW32x22_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW32x32_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW32x33_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW32x39_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW32x4_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW32x8_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW64x16_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW64x24_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW64x32_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW64x4_PVT_0P63V_100C.lib\
    ${::IMEX::libVar}/mmmc/SRAM2RW64x8_PVT_0P63V_100C.lib]
create_timing_condition -name PVT_0P77V_0C.hold_cond\
   -library_sets [list PVT_0P77V_0C.hold_set]
create_timing_condition -name PVT_0P63V_100C.setup_cond\
   -library_sets [list PVT_0P63V_100C.setup_set]
create_rc_corner -name PVT_0P77V_0C.hold_rc\
   -pre_route_res 1\
   -post_route_res {1 1 1}\
   -pre_route_cap 1\
   -post_route_cap {1 1 1}\
   -post_route_cross_cap {1 1 1}\
   -pre_route_clock_res 0\
   -pre_route_clock_cap 0\
   -post_route_clock_cap {1 1 1}\
   -post_route_clock_res {1 1 1}\
   -post_route_clock_cross_cap {1 1 1}\
   -temperature 0\
   -qrc_tech ${::IMEX::libVar}/mmmc/PVT_0P77V_0C.hold_rc/qrcTechFile_typ03_scaled4xV06
create_rc_corner -name PVT_0P63V_100C.setup_rc\
   -pre_route_res 1\
   -post_route_res {1 1 1}\
   -pre_route_cap 1\
   -post_route_cap {1 1 1}\
   -post_route_cross_cap {1 1 1}\
   -pre_route_clock_res 0\
   -pre_route_clock_cap 0\
   -post_route_clock_cap {1 1 1}\
   -post_route_clock_res {1 1 1}\
   -post_route_clock_cross_cap {1 1 1}\
   -temperature 100\
   -qrc_tech ${::IMEX::libVar}/mmmc/PVT_0P77V_0C.hold_rc/qrcTechFile_typ03_scaled4xV06
create_delay_corner -name PVT_0P77V_0C.hold_delay\
   -early_timing_condition {PVT_0P77V_0C.hold_cond}\
   -late_timing_condition {PVT_0P77V_0C.hold_cond}\
   -rc_corner PVT_0P77V_0C.hold_rc
create_delay_corner -name PVT_0P63V_100C.setup_delay\
   -early_timing_condition {PVT_0P63V_100C.setup_cond}\
   -late_timing_condition {PVT_0P63V_100C.setup_cond}\
   -rc_corner PVT_0P63V_100C.setup_rc
create_constraint_mode -name my_constraint_mode\
   -sdc_files\
    [list ${::IMEX::dataVar}/mmmc/modes/my_constraint_mode/my_constraint_mode.sdc.gz]
create_analysis_view -name PVT_0P63V_100C.setup_view -constraint_mode my_constraint_mode -delay_corner PVT_0P63V_100C.setup_delay -latency_file ${::IMEX::dataVar}/mmmc/views/PVT_0P63V_100C.setup_view/latency.sdc.gz
create_analysis_view -name PVT_0P77V_0C.hold_view -constraint_mode my_constraint_mode -delay_corner PVT_0P77V_0C.hold_delay -latency_file ${::IMEX::dataVar}/mmmc/views/PVT_0P77V_0C.hold_view/latency.sdc.gz
set_analysis_view -setup [list PVT_0P63V_100C.setup_view] -hold [list PVT_0P77V_0C.hold_view]
