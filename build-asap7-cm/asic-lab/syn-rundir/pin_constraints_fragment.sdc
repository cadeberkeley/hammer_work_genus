# --------------------------------------------------------------------------------
# This script was written and developed by HAMMER at UC Berkeley; however, the
# underlying commands and reports are copyrighted by Cadence. We thank Cadence for
# granting permission to share our research to help promote and foster the next
# generation of innovators.
# --------------------------------------------------------------------------------

set_load 1000.0 [all_outputs]
set_input_delay 1000.0 -clock clk [get_port reset]
set_input_delay 1000.0 -clock clk [get_port operands_bits_A]
set_input_delay 1000.0 -clock clk [get_port operands_bits_B]
set_input_delay 1000.0 -clock clk [get_port operands_val]
set_output_delay 1000.0 -clock clk [get_port operands_rdy]
set_output_delay 1000.0 -clock clk [get_port result_bits_data]
set_output_delay 1000.0 -clock clk [get_port result_val]
set_input_delay 1000.0 -clock clk [get_port result_rdy]