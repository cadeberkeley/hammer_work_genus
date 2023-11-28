# (C) 2023 Cadence Design Systems, Inc.  All rights reserved.
# Created by Genus(TM) Synthesis Solution on 11/28/2023 12:28:08
# This script uses internal commands and variables that may change without notice.


#####################################################################
#
# Innovus batch script file
# Created by Genus(TM) Synthesis Solution on 11/28/2023 12:28:08
#
#####################################################################
set_db source_verbose false

      if { [file isdirectory [set tmpdir /tmp/genus_temp_27067_bwrcix-2.eecs.berkeley.edu_cade.richard_IvgqPD]] && [file writable $tmpdir] } {
        set ::env(TMPDIR) $tmpdir
        set ::syn2ambit_tmp_dir $tmpdir
      }
    


# Version Check
###########################################################

      namespace eval ::genus_innovus_version_check { 
        set minimum_version 22
        set maximum_version 23
        regexp {\d\d} [get_db program_version] this_version
        puts "Checking Innovus major version against Genus expectations ..."
        if { $this_version < $minimum_version || $this_version > $maximum_version } {
          puts "**ERROR: this operation requires Innovus major version to be between '$minimum_version' and '$maximum_version'."
          exec touch ./innovus/.invs2genus.encVerFail 
          puts "**ERROR: Batch process failed."
          exit 1
        }
      }
    
###########################################################


# Source Innovus helper procs

      set ::genus_invs_scripts /tools/cadence/DDI/DDI221/GENUS221/tools.lnx86/lib/cdn/rc/edi
      eval_legacy {
        namespace eval ::rcp {
          variable failedOnFile ./innovus/invs2genus.cmdFail
        }
        set ::genus_invs_scripts /tools/cadence/DDI/DDI221/GENUS221/tools.lnx86/lib/cdn/rc/edi
      }
      source -quiet [file join $::genus_invs_scripts innovus_procs_services.tcl]
    
pqos_eval {set rcp::ispatial_outputs 1}
pqos_eval {array set rcp::bat_state {flow ispatial fe_view_list {PVT_0P63V_100C.setup_view PVT_0P77V_0C.hold_view} wnm_flow 1 shep_write_congestion 1 x2def_mode 0 iprefix genus2invs idir ./innovus design design:riscv_top congestion_include_blockage 0 chk_fp 0 shep_save_only_db 0 fe_colorized 0 ndr_only 0 tim_mode {} innovus_constraint_interface mmmc2 do_fp 1 des_str riscv_top spatial 0 congestion_3d 0 cts_effort {} fe_use_um 1 odir ./innovus 2d_compression 0 do_fe_pd 1 fp_mode 0 incr_plc 1 eco_mode 0 cts_clk {} oprefix invs2genus genus_constraint_interface mmmc2 no_update 0 do_sdp 0 invs_ld_pd 1 no_msv 0 no_spef 0 place_effort ispatial tdrc_valid 0 save_fe_db 0 ispatial 1 opt_effort high fe_consistency_check 0 no_scan 1 mem_mode 0 do_stylus_db 1 del_corner {} write_pin_properties 0 qos_mode 1 hdl_name_flow 0}}
pqos_source [file join $::genus_invs_scripts innovus_procs_common_ui.tcl]


# Enable 2 CPUs for placement automatically
################################################################################

      pqos_eval {
        set genus_cpu 2
        set current_cpu [::rcp::getTotCPU]
        if {$current_cpu < $genus_cpu} {
          setMultiCpuUsage -localCpu $genus_cpu
        }
      }
    
::enable_metrics -on
pqos_eval {set ::rcp::custom_cg_timing 1}


# Design Import
################################################################################
pqos_eval {rcp::print_time_stamp "Design Import Start"}
pqos_eval {source ./innovus/genus2invs_db.flow_globals}

      set cmd {read_db -common ./innovus/genus2invs_db}
      if { {-design} in [eval_legacy {TCM::findCommandArgs read_common_db}] } {
        lappend cmd -design riscv_top
      }
      
      eval $cmd
      # FIXME: remove - I think not always calling init_design is an old bug now
      if { [is_common_ui_mode] &&
           [eval_legacy {expr {![info exists ::init_state] || ($::init_state ne "initialization_complete")}}] } {
        puts "Calling init_design to complete 'read_db -common'"
        init_design
      }
    
pqos_eval {source ./innovus/genus2invs_db.flow_mode}
::create_snapshot -name genus2invs_setup -auto min

      # Resetting placement for unfixed instances
      reset_db -quiet [get_db insts -if {.place_status == placed}] .place_status
    
pqos_eval {rcp::print_time_stamp "Design Import Complete"}


# Additional Setup
################################################################################
pqos_eval {set dbgLefDefOutVersion 5.8}

        pqos_eval {
          if { [info exists ::timing_spatial_derate_calculation_mode] && ($::timing_spatial_derate_calculation_mode ne "multiplicative") } {
            Puts "WARNING: Adjusting a user override of 'timing_spatial_derate_calculation_mode' from '$::timing_spatial_derate_calculation_mode' to be 'multiplicative'."
            set ::timing_spatial_derate_calculation_mode "multiplicative"
          }
          if { [info exists ::timing_aocv_derate_mode] && ($::timing_aocv_derate_mode ne "aocv_multiplicative") } {
            Puts "WARNING: Adjusting a user override of 'timing_aocv_derate_mode' from '$::timing_aocv_derate_mode' to be 'aocv_multiplicative'."
            set ::timing_aocv_derate_mode "aocv_multiplicative"
          }
        }
      


# Configure iSpatial within Innovus
################################################################################
pqos_source ./innovus/genus2invs.ispatial_setup.tcl
pqos_eval { rcp::push_and_set_state  -format 3 -set_name "genus2invs" {
{set_global timing_constraint_enable_set_units true}
{setPlaceMode -placeIoPins true}
{setPlaceMode -reorderScan false}
{setOptMode -simplifyNetlist false}
}}


# Floorplanning
################################################################################
pqos_eval {setPlanDesignMode -fixPlacedMacros true}
pqos_eval {planDesign}
pqos_eval {assignIoPins}
pqos_eval {fixAllIos}
pqos_eval {setOptMode -usefulSkewPreCTS true}
pqos_eval {setOptMode -usefulSkew true}
pqos_eval {setOptMode -multiBitFlopOpt false}
pqos_eval { rcp::push_and_set_state  -format 3 -set_name "genus2invs_place_opt" {
}}
puts "There are [sizeof_collection [get_path_groups -quiet]] path_groups defined before optimization."
pqos_eval { rcp::ispatial_control }


# iSpatial place_opt_design
pqos_eval {
        set stage_opt_rtime [feResource real] 
        set stage_opt_cpu_rtime [feResource cpu]
      }
# pqos_eval {place_opt_design -phys_syn -out_dir ./innovus -prefix invs2genus_final}

      pqos_eval {
        if { ![info exists rcp::using_genus_license] } {
          place_opt_design -phys_syn -out_dir ./innovus -prefix invs2genus_final
        } else {
          rcp::optimization1_place_opt_design__phys_syn__out_dir___innovus__prefix_invs2genus_final.7780421994524274
        }
      }
    
pqos_eval {
        set stage_opt_rtime [list [expr {[feResource real]-$stage_opt_rtime}] [feResource real] [expr {[feResource cpu]-$stage_opt_cpu_rtime}] [feResource cpu]]
      }
# pqos_eval {::rcp::syncronize_metrics 0}

      pqos_eval {
        if { ![info exists rcp::using_genus_license] } {
          ::rcp::syncronize_metrics 0
        } else {
          rcp::optimization2___rcp__syncronize_metrics_0.5552461969457781
        }
      }
    


# Writing out interface files..
pqos_eval {Puts {save_interface_files ...}}
pqos_eval {::rcp::save_interface_files {flow ispatial} {fe_view_list {PVT_0P63V_100C.setup_view PVT_0P77V_0C.hold_view}} {wnm_flow 1} {shep_write_congestion 1} {x2def_mode 0} {iprefix genus2invs} {idir ./innovus} {design design:riscv_top} {congestion_include_blockage 0} {chk_fp 0} {shep_save_only_db 0} {fe_colorized 0} {ndr_only 0} {tim_mode {}} {innovus_constraint_interface mmmc2} {do_fp 1} {des_str riscv_top} {spatial 0} {congestion_3d 0} {cts_effort {}} {fe_use_um 1} {odir ./innovus} {2d_compression 0} {do_fe_pd 1} {fp_mode 0} {incr_plc 1} {eco_mode 0} {cts_clk {}} {oprefix invs2genus} {genus_constraint_interface mmmc2} {no_update 0} {do_sdp 0} {invs_ld_pd 1} {no_msv 0} {no_spef 0} {place_effort ispatial} {tdrc_valid 0} {save_fe_db 0} {ispatial 1} {opt_effort high} {fe_consistency_check 0} {no_scan 1} {mem_mode 0} {do_stylus_db 1} {del_corner {}} {write_pin_properties 0} {qos_mode 1} {hdl_name_flow 0} {fe_wnm_file {}} {fe_mcmd ./innovus/invs2genus.cmdWarn} {fe_pwr {}} {fe_1801 {}} {fe_flag ./innovus/.invs2genus.encDone} {fe_xdata ./innovus/invs2genus.xdata} {fe_fcmd ./innovus/invs2genus.cmdFail} {fe_sdef {}} {fe_load_stat ./innovus/invs2genus_load.stat} {fe_def_lnk {}} {fe_ndr {}} {fe_pd ./innovus/invs2genus.pd.tcl} {fe_globals {}} {fe_tcf {}} {fe_rc {}} {fe_load_rpt ./innovus/invs2genus_load} {fe_db ./innovus/invs2genus_db} {fe_rpt ./innovus/invs2genus_final} {fe_metrics ./innovus/invs2genus.metrics.json} {fe_sdp {}} {fe_def {}} {fe_vflag ./innovus/.invs2genus.encVerFail} {fe_inst_taf {}} {fe_con {}} {fe_cpf {}} {fe_mmmc {}} {fe_gridinfo {}} {fe_log ./innovus/innovus} {fe_cts {}} {fe_nl {}} {fe_reportwire ./innovus/invs2genus.reportwire.txt} {fe_svr {}} {fe_lec {}} {fe_stat ./innovus/invs2genus_final.stat} {fe_basename ./innovus/invs2genus} {fe_lflag ./innovus/.invs2genus.encLicFail} {fe_spef {}} {fe_dotg {}} {fe_ndr_taf {}} {fe_final_db ./innovus/invs2genus_final_db} {fe_route_cmap ./innovus/invs2genus.route.congestion.gz} {fe_aae ./innovus/invs2genus_final_db/cmn/riscv_top.aae}}

exec touch ./innovus/.invs2genus.encDone
exit
