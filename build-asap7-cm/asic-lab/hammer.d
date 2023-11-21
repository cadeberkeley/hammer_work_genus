HAMMER_EXEC ?= /bwrcq/scratch/caderichard/miniconda3/bin/hammer-vlsi
HAMMER_DEPENDENCIES ?= /bwrcq/scratch/caderichard/hammer_work/configs-pdk/asap7.yml /bwrcq/scratch/caderichard/hammer_work/configs-tool/cm.yml /bwrcq/scratch/caderichard/hammer_work/configs-design/asic-lab/common.yml /bwrcq/scratch/caderichard/hammer_work/configs-design/asic-lab/asap7.yml /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sram_generator-rundir/sram_generator-output.json /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ALUdec.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ALU.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/Memory151.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/Riscv151.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/riscv_arbiter.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/riscv_top.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/BranchComp.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/BranchControl.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/Cache.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/CSR.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ImmDec.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ImmGen.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/mux_21.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/mux_41.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/PCGen.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/Regfile.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/RiscvControl.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/BranchControl.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/HazardDetect.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/RiscvDataFetch.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/RiscvDataDX.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/RiscvDataMW.v /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ALUop.vh /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/ImmCode.vh /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/const.vh /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/LoadOp.vh /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/Opcode.vh /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/StoreOp.vh /bwrcq/scratch/caderichard/hammer_work/src-asic-lab/util.vh


####################################################################################
## Global steps
####################################################################################
.PHONY: pcb
pcb: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/pcb-rundir/pcb-output-full.json

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/pcb-rundir/pcb-output-full.json: $(HAMMER_DEPENDENCIES)
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-pdk/asap7.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-tool/cm.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-design/asic-lab/common.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-design/asic-lab/asap7.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sram_generator-rundir/sram_generator-output.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab pcb


####################################################################################
## Steps for riscv_top
####################################################################################
.PHONY: sim-rtl syn syn-to-sim sim-syn syn-to-par par par-to-sim sim-par sim-par-to-power par-to-power power-par power-rtl sim-rtl-to-power sim-syn-to-power syn-to-power power-syn par-to-drc drc par-to-lvs lvs syn-to-formal formal-syn par-to-formal formal-par syn-to-timing timing-syn par-to-timing timing-par

sim-rtl          : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-rtl-rundir/sim-output-full.json
syn              : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/syn-output-full.json

syn-to-sim       : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-syn-input.json
sim-syn          : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-syn-rundir/sim-output-full.json

syn-to-par       : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-input.json
par              : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json

par-to-sim       : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-par-input.json
sim-par          : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-par-rundir/sim-output-full.json

sim-par-to-power : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-par-input.json
par-to-power     : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-par-input.json
power-par        : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-par-rundir/power-output-full.json

sim-rtl-to-power : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-rtl-input.json
power-rtl        : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-rtl-rundir/power-output-full.json

sim-syn-to-power : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-syn-input.json
syn-to-power     : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-syn-input.json
power-syn        : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-syn-rundir/power-output-full.json

par-to-drc       : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/drc-input.json
drc              : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/drc-rundir/drc-output-full.json

par-to-lvs       : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/lvs-input.json
lvs              : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/lvs-rundir/lvs-output-full.json

syn-to-formal    : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-syn-input.json
formal-syn       : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-syn-rundir/formal-output-full.json

par-to-formal    : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-par-input.json
formal-par       : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-par-rundir/formal-output-full.json

syn-to-timing    : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-syn-input.json
timing-syn       : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-syn-rundir/timing-output-full.json

par-to-timing    : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-par-input.json
timing-par       : /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-par-rundir/timing-output-full.json



/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-rtl-rundir/sim-output-full.json: $(HAMMER_DEPENDENCIES) $(HAMMER_SIM_RTL_DEPENDENCIES)
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-pdk/asap7.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-tool/cm.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-design/asic-lab/common.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-design/asic-lab/asap7.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sram_generator-rundir/sram_generator-output.json $(HAMMER_EXTRA_ARGS) --sim_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-rtl-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab sim

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-rtl-input.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-rtl-rundir/sim-output-full.json
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-rtl-rundir/sim-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-rtl-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab sim-to-power

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-rtl-rundir/power-output-full.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-rtl-input.json $(HAMMER_POWER_RTL_DEPENDENCIES)
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-rtl-input.json $(HAMMER_EXTRA_ARGS) --power_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-rtl-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab power

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/syn-output-full.json: $(HAMMER_DEPENDENCIES) $(HAMMER_SYN_DEPENDENCIES)
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-pdk/asap7.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-tool/cm.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-design/asic-lab/common.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-design/asic-lab/asap7.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sram_generator-rundir/sram_generator-output.json $(HAMMER_EXTRA_ARGS) --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab syn

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-syn-input.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/syn-output-full.json
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/syn-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-syn-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab syn-to-sim

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-syn-rundir/sim-output-full.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-syn-input.json $(HAMMER_SIM_SYN_DEPENDENCIES)
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-syn-input.json $(HAMMER_EXTRA_ARGS) --sim_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-syn-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab sim

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-syn-input.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-syn-rundir/sim-output-full.json
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-syn-rundir/sim-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-syn-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab sim-to-power

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-syn-input.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/syn-output-full.json
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/syn-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-syn-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab syn-to-power

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-syn-rundir/power-output-full.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-syn-input.json /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-syn-input.json $(HAMMER_POWER_SYN_DEPENDENCIES)
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-syn-input.json -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-syn-input.json $(HAMMER_EXTRA_ARGS) --power_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-syn-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab power

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-input.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/syn-output-full.json
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/syn-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab syn-to-par

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-input.json $(HAMMER_PAR_DEPENDENCIES)
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-input.json $(HAMMER_EXTRA_ARGS) --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab par

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-par-input.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-par-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab par-to-sim

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-par-rundir/sim-output-full.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-par-input.json $(HAMMER_SIM_PAR_DEPENDENCIES)
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-par-input.json $(HAMMER_EXTRA_ARGS) --sim_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-par-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab sim

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-par-input.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-par-rundir/sim-output-full.json
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-par-rundir/sim-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-par-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab sim-to-power

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-par-input.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-par-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab par-to-power

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-par-rundir/power-output-full.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-par-input.json /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-par-input.json $(HAMMER_POWER_PAR_DEPENDENCIES)
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-par-input.json -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-par-input.json $(HAMMER_EXTRA_ARGS) --power_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-par-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab power

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/drc-input.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/drc-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab par-to-drc

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/drc-rundir/drc-output-full.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/drc-input.json $(HAMMER_DRC_DEPENDENCIES)
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/drc-input.json $(HAMMER_EXTRA_ARGS) --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab drc

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/lvs-input.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/lvs-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab par-to-lvs

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/lvs-rundir/lvs-output-full.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/lvs-input.json $(HAMMER_LVS_DEPENDENCIES)
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/lvs-input.json $(HAMMER_EXTRA_ARGS) --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab lvs

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-syn-input.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/syn-output-full.json
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/syn-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-syn-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab syn-to-formal

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-syn-rundir/formal-output-full.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-syn-input.json $(HAMMER_FORMAL_SYN_DEPENDENCIES)
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-syn-input.json $(HAMMER_EXTRA_ARGS) --formal_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-syn-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab formal

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-par-input.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-par-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab par-to-formal

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-par-rundir/formal-output-full.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-syn-input.json $(HAMMER_FORMAL_PAR_DEPENDENCIES)
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-par-input.json $(HAMMER_EXTRA_ARGS) --formal_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-par-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab formal

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-syn-input.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/syn-output-full.json
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/syn-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-syn-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab syn-to-timing

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-syn-rundir/timing-output-full.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-syn-input.json $(HAMMER_TIMING_SYN_DEPENDENCIES)
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-syn-input.json $(HAMMER_EXTRA_ARGS) --timing_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-syn-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab timing

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-par-input.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-par-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab par-to-timing

/bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-par-rundir/timing-output-full.json: /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-syn-input.json $(HAMMER_TIMING_PAR_DEPENDENCIES)
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-par-input.json $(HAMMER_EXTRA_ARGS) --timing_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-par-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab timing

# Redo steps
# These intentionally break the dependency graph, but allow the flexibility to rerun a step after changing a config.
# Hammer doesn't know what settings impact synthesis only, e.g., so these are for power-users who "know better."
# The HAMMER_EXTRA_ARGS variable allows patching in of new configurations with -p or using --to_step or --from_step, for example.
.PHONY: redo-sim-rtl redo-sim-rtl-to-power redo-syn redo-syn-to-sim redo-syn-to-power redo-sim-syn redo-sim-syn-to-power redo-syn-to-par redo-par redo-par-to-sim redo-sim-par redo-sim-par-to-power redo-par-to-power redo-power-par redo-par-to-drc redo-drc redo-par-to-lvs redo-lvs redo-syn-to-formal redo-formal-syn redo-par-to-formal redo-formal-par redo-syn-to-timing redo-timing-syn redo-par-to-timing redo-timing-par

redo-sim-rtl:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-pdk/asap7.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-tool/cm.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-design/asic-lab/common.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-design/asic-lab/asap7.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sram_generator-rundir/sram_generator-output.json $(HAMMER_EXTRA_ARGS) --sim_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-rtl-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab sim

redo-sim-rtl-to-power:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-rtl-rundir/sim-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-rtl-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab sim-to-power

redo-power-rtl:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-rtl-input.json $(HAMMER_EXTRA_ARGS) --power_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-rtl-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab power

redo-syn:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-pdk/asap7.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-tool/cm.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-design/asic-lab/common.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-design/asic-lab/asap7.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sram_generator-rundir/sram_generator-output.json $(HAMMER_EXTRA_ARGS) --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab syn

redo-syn-to-sim:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/syn-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-syn-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab syn-to-sim

redo-syn-to-power:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/syn-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-syn-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab syn-to-power

redo-sim-syn:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-syn-input.json $(HAMMER_EXTRA_ARGS) --sim_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-syn-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab sim

redo-sim-syn-to-power:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-syn-rundir/sim-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-syn-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab sim-to-power

redo-syn-to-par:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/syn-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab syn-to-par

redo-power-syn:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-syn-input.json -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-syn-input.json $(HAMMER_EXTRA_ARGS) --power_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-syn-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab power

redo-par:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-input.json $(HAMMER_EXTRA_ARGS) --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab par

redo-par-to-sim:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-par-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab par-to-sim

redo-sim-par:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-par-input.json $(HAMMER_EXTRA_ARGS) --sim_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-par-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab sim

redo-sim-par-to-power:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/sim-par-rundir/sim-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-par-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab sim-to-power

redo-par-to-power:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-par-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab par-to-power

redo-power-par:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-sim-par-input.json -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-par-input.json $(HAMMER_EXTRA_ARGS) --power_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/power-par-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab power

redo-par-to-drc:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/drc-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab par-to-drc

redo-drc:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/drc-input.json $(HAMMER_EXTRA_ARGS) --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab drc

redo-par-to-lvs:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/lvs-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab par-to-lvs

redo-lvs:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/lvs-input.json $(HAMMER_EXTRA_ARGS) --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab lvs

redo-syn-to-formal:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/syn-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-syn-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab syn-to-formal

redo-formal-syn:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-syn-input.json $(HAMMER_EXTRA_ARGS) --formal_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-syn-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab formal

redo-par-to-formal:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-par-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab par-to-formal

redo-formal-par:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-par-input.json $(HAMMER_EXTRA_ARGS) --formal_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/formal-par-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab formal

redo-syn-to-timing:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/syn-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-syn-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab syn-to-timing

redo-timing-syn:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-syn-input.json $(HAMMER_EXTRA_ARGS) --timing_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-syn-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab timing

redo-par-to-timing:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-rundir/par-output-full.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-par-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab par-to-timing

redo-timing-par:
	$(HAMMER_EXEC) -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-par-input.json $(HAMMER_EXTRA_ARGS) --timing_rundir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/timing-par-rundir --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab timing

