vlsi_dir=$(abspath .)



# minimal flow configuration variables
design              ?= asic-lab
pdk                 ?= asap7
tools               ?= cm
env                 ?= bwrc

extra               ?=  # extra configs
args                ?=  # command-line args (including step flow control)


OBJ_DIR             ?= $(vlsi_dir)/build-$(pdk)-$(tools)/$(design)-effort_high

# non-overlapping default configs
ENV_YML             ?= $(vlsi_dir)/configs-env/$(env)-env.yml
PDK_CONF            ?= configs-pdk/$(pdk).yml
TOOLS_CONF          ?= configs-tool/$(tools).yml

# design-specific overrides of default configs
DESIGN_CONF         ?= configs-design/$(design)/common.yml
DESIGN_PDK_CONF     ?= configs-design/$(design)/$(pdk).yml
SIM_CONF            ?= $(if $(findstring rtl,$(MAKECMDGOALS)), configs-design/$(design)/sim-rtl.yml, \
                       $(if $(findstring syn,$(MAKECMDGOALS)), configs-design/$(design)/sim-syn.yml, \
                       $(if $(findstring par,$(MAKECMDGOALS)), configs-design/$(design)/sim-par.yml, )))
POWER_CONF          ?= $(if $(findstring power-rtl,$(MAKECMDGOALS)), configs-design/$(design)/power-rtl-$(pdk).yml, \
                       $(if $(findstring power-syn,$(MAKECMDGOALS)), configs-design/$(design)/power-syn-$(pdk).yml, \
                       $(if $(findstring power-par,$(MAKECMDGOALS)), configs-design/$(design)/power-par-$(pdk).yml, )))

#SRAMS
SRAM_CONF           ?= $(OBJ_DIR)/sram_generator-rundir/sram_generator-output.json
DESIGN_SYN_CONF     ?= configs-design/$(design)/syn.yml
DESIGN_PAR_CONF     ?= configs-design/$(design)/par.yml


PROJ_YMLS           ?= $(PDK_CONF) $(TOOLS_CONF) $(DESIGN_CONF) $(DESIGN_PDK_CONF) $(DESIGN_SYN_CONF) $(DESIGN_PAR_CONF) $(SIM_CONF) $(POWER_CONF) $(SRAM_CONF) $(extra)
HAMMER_EXTRA_ARGS   ?= $(foreach conf, $(PROJ_YMLS), -p $(conf)) $(args)

HAMMER_D_MK = $(OBJ_DIR)/hammer.d

build: $(HAMMER_D_MK)

$(HAMMER_D_MK):
	hammer-vlsi --obj_dir $(OBJ_DIR) -e $(ENV_YML) $(HAMMER_EXTRA_ARGS) build

-include $(HAMMER_D_MK)

stp:
	hammer-vlsi -e /bwrcq/scratch/caderichard/hammer_work/configs-env/bwrc-env.yml -p /bwrcq/scratch/caderichard/hammer_work/configs-design/asic-lab/syn.yml -p /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/syn-rundir/syn-output.json $(HAMMER_EXTRA_ARGS) -o /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab/par-input.json --obj_dir /bwrcq/scratch/caderichard/hammer_work/build-asap7-cm/asic-lab syn-to-par


srams:
	hammer-vlsi -e $(ENV_YML) -p $(TOOLS_CONF) -p $(DESIGN_SYN_CONF) -p $(PDK_CONF) --obj_dir $(OBJ_DIR) sram_generator
	cp output.json $(SRAM_CONF)

clean:
	[ -n "$(OBJ_DIR)" ] && rm -rf $(OBJ_DIR)
	find $(vlsi_dir) -name 'hammer-vlsi-*.log' -delete
