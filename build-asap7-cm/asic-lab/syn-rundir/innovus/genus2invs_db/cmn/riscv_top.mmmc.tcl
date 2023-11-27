#################################################################################
#
# Created by Genus(TM) Synthesis Solution 22.12-s082_1 on Sun Nov 26 18:57:07 PST 2023
#
#################################################################################

## library_sets
create_library_set -name PVT_0P63V_100C.setup_set \
    -timing { /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_RVT_SS_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_LVT_SS_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_SLVT_SS_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_SRAM_SS_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_RVT_SS_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_LVT_SS_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_SLVT_SS_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_SRAM_SS_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_RVT_SS_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_LVT_SS_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_SLVT_SS_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_SRAM_SS_nldm_201020.lib.gz \
              /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/tech-asap7-cache/LIB/NLDM/asap7sc7p5t_SEQ_RVT_SS_nldm_201020.lib.gz \
              /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/tech-asap7-cache/LIB/NLDM/asap7sc7p5t_SEQ_LVT_SS_nldm_201020.lib.gz \
              /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/tech-asap7-cache/LIB/NLDM/asap7sc7p5t_SEQ_SLVT_SS_nldm_201020.lib.gz \
              /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/tech-asap7-cache/LIB/NLDM/asap7sc7p5t_SEQ_SRAM_SS_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_RVT_SS_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_LVT_SS_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_SLVT_SS_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_SRAM_SS_nldm_201020.lib.gz \
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
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW64x8_lib/SRAM2RW64x8_PVT_0P63V_100C.lib }
create_library_set -name PVT_0P77V_0C.hold_set \
    -timing { /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_RVT_FF_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_LVT_FF_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_SLVT_FF_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_SRAM_FF_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_RVT_FF_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_LVT_FF_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_SLVT_FF_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_SRAM_FF_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_RVT_FF_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_LVT_FF_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_SLVT_FF_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_SRAM_FF_nldm_201020.lib.gz \
              /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/tech-asap7-cache/LIB/NLDM/asap7sc7p5t_SEQ_RVT_FF_nldm_201020.lib.gz \
              /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/tech-asap7-cache/LIB/NLDM/asap7sc7p5t_SEQ_LVT_FF_nldm_201020.lib.gz \
              /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/tech-asap7-cache/LIB/NLDM/asap7sc7p5t_SEQ_SLVT_FF_nldm_201020.lib.gz \
              /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/tech-asap7-cache/LIB/NLDM/asap7sc7p5t_SEQ_SRAM_FF_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_RVT_FF_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_LVT_FF_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_SLVT_FF_nldm_201020.lib.gz \
              /bwrcq/B/asap7/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_SRAM_FF_nldm_201020.lib.gz \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW1024x16_lib/SRAM1RW1024x16_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW1024x17_lib/SRAM1RW1024x17_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW1024x32_lib/SRAM1RW1024x32_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW1024x37_lib/SRAM1RW1024x37_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW1024x38_lib/SRAM1RW1024x38_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW1024x44_lib/SRAM1RW1024x44_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW1024x64_lib/SRAM1RW1024x64_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW1024x8_lib/SRAM1RW1024x8_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW2048x8_lib/SRAM1RW2048x8_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW128x12_lib/SRAM1RW128x12_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW128x14_lib/SRAM1RW128x14_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW128x22_lib/SRAM1RW128x22_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW128x40_lib/SRAM1RW128x40_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW128x46_lib/SRAM1RW128x46_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW128x48_lib/SRAM1RW128x48_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW128x64_lib/SRAM1RW128x64_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW128x8_lib/SRAM1RW128x8_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW256x128_lib/SRAM1RW256x128_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW256x32_lib/SRAM1RW256x32_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW256x46_lib/SRAM1RW256x46_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW256x48_lib/SRAM1RW256x48_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW256x64_lib/SRAM1RW256x64_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW256x8_lib/SRAM1RW256x8_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW32x50_lib/SRAM1RW32x50_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW4096x16_lib/SRAM1RW4096x16_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW4096x8_lib/SRAM1RW4096x8_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW512x128_lib/SRAM1RW512x128_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW512x32_lib/SRAM1RW512x32_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW512x64_lib/SRAM1RW512x64_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW512x8_lib/SRAM1RW512x8_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW64x128_lib/SRAM1RW64x128_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW64x20_lib/SRAM1RW64x20_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW64x21_lib/SRAM1RW64x21_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW64x22_lib/SRAM1RW64x22_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW64x32_lib/SRAM1RW64x32_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW64x34_lib/SRAM1RW64x34_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM1RW64x8_lib/SRAM1RW64x8_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW128x16_lib/SRAM2RW128x16_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW128x32_lib/SRAM2RW128x32_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW128x4_lib/SRAM2RW128x4_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW128x8_lib/SRAM2RW128x8_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW16x16_lib/SRAM2RW16x16_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW16x32_lib/SRAM2RW16x32_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW16x4_lib/SRAM2RW16x4_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW16x8_lib/SRAM2RW16x8_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW32x16_lib/SRAM2RW32x16_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW32x22_lib/SRAM2RW32x22_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW32x32_lib/SRAM2RW32x32_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW32x33_lib/SRAM2RW32x33_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW32x39_lib/SRAM2RW32x39_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW32x4_lib/SRAM2RW32x4_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW32x8_lib/SRAM2RW32x8_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW64x16_lib/SRAM2RW64x16_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW64x24_lib/SRAM2RW64x24_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW64x32_lib/SRAM2RW64x32_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW64x4_lib/SRAM2RW64x4_PVT_0P77V_0C.lib \
              /bwrcq/scratch/caderichard/hammer/hammer/technology/asap7/sram_compiler/memories/lib/SRAM2RW64x8_lib/SRAM2RW64x8_PVT_0P77V_0C.lib }

## timing_condition
create_timing_condition -name PVT_0P63V_100C.setup_cond \
    -library_sets { PVT_0P63V_100C.setup_set }
create_timing_condition -name PVT_0P77V_0C.hold_cond \
    -library_sets { PVT_0P77V_0C.hold_set }

## rc_corner
create_rc_corner -name PVT_0P63V_100C.setup_rc \
    -temperature 100.0 \
    -qrc_tech /bwrcq/B/asap7/asap7sc7p5t_27/qrc/qrcTechFile_typ03_scaled4xV06 \
    -pre_route_res 1.0 \
    -pre_route_cap 1.0 \
    -pre_route_clock_res 0.0 \
    -pre_route_clock_cap 0.0 \
    -post_route_res {1.0 1.0 1.0} \
    -post_route_cap {1.0 1.0 1.0} \
    -post_route_cross_cap {1.0 1.0 1.0} \
    -post_route_clock_res {1.0 1.0 1.0} \
    -post_route_clock_cap {1.0 1.0 1.0} \
    -post_route_clock_cross_cap {1.0 1.0 1.0}
create_rc_corner -name PVT_0P77V_0C.hold_rc \
    -temperature 0.0 \
    -qrc_tech /bwrcq/B/asap7/asap7sc7p5t_27/qrc/qrcTechFile_typ03_scaled4xV06 \
    -pre_route_res 1.0 \
    -pre_route_cap 1.0 \
    -pre_route_clock_res 0.0 \
    -pre_route_clock_cap 0.0 \
    -post_route_res {1.0 1.0 1.0} \
    -post_route_cap {1.0 1.0 1.0} \
    -post_route_cross_cap {1.0 1.0 1.0} \
    -post_route_clock_res {1.0 1.0 1.0} \
    -post_route_clock_cap {1.0 1.0 1.0} \
    -post_route_clock_cross_cap {1.0 1.0 1.0}

## delay_corner
create_delay_corner -name PVT_0P63V_100C.setup_delay \
    -early_timing_condition { PVT_0P63V_100C.setup_cond } \
    -late_timing_condition { PVT_0P63V_100C.setup_cond } \
    -early_rc_corner PVT_0P63V_100C.setup_rc \
    -late_rc_corner PVT_0P63V_100C.setup_rc
create_delay_corner -name PVT_0P77V_0C.hold_delay \
    -early_timing_condition { PVT_0P77V_0C.hold_cond } \
    -late_timing_condition { PVT_0P77V_0C.hold_cond } \
    -early_rc_corner PVT_0P77V_0C.hold_rc \
    -late_rc_corner PVT_0P77V_0C.hold_rc

## constraint_mode
create_constraint_mode -name my_constraint_mode \
    -sdc_files { ./innovus/genus2invs_db/cmn/riscv_top.mmmc/modes/my_constraint_mode/my_constraint_mode.sdc.gz }

## analysis_view
create_analysis_view -name PVT_0P63V_100C.setup_view \
    -constraint_mode my_constraint_mode \
    -delay_corner PVT_0P63V_100C.setup_delay
create_analysis_view -name PVT_0P77V_0C.hold_view \
    -constraint_mode my_constraint_mode \
    -delay_corner PVT_0P77V_0C.hold_delay

## set_analysis_view
set_analysis_view -setup { PVT_0P63V_100C.setup_view } \
                  -hold { PVT_0P77V_0C.hold_view }

## latency
