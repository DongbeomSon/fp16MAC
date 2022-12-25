define_design_lib WORK -path “work”
source rm_setup/lib_setup.tcl

# load & elaborate design 
analyze -library WORK -format verilog ../RTL/fp16multiplier.v
analyze -library WORK -format verilog ../RTL/fpadder.v
analyze -library WORK -format verilog ../RTL/fp16MAC.v
analyze -library WORK -format verilog ../RTL/kogge_stone_Nbit.v
analyze -library WORK -format verilog ../RTL/1bit_adder.v
elaborate -architecture verilog -library WORK fp16MAC
current_design fp16MAC
check_design > reports/check_design.rpt

# design constraints
set INPUTPORT [remove_from_collection [all_inputs] [get_ports "CLK RESETn"]]
set OUTPUTPORT [all_outputs]
set_load [load_of saed32rvt_ff1p16vn40c/NBUFFX2_RVT/A] $OUTPUTPORT
set_driving_cell -library saed32rvt_ff1p16vn40c -lib_cell NBUFFX2_RVT -pin Y -no_design_rule $INPUTPORT

# timing constraints
set_operating_conditions ff1p16vn40c -library saed32rvt_ff1p16vn40c
create_clock -period 5 -name MAIN_CLOCK [get_ports CLK]
set_clock_uncertainty 0.5 [get_clocks MAIN_CLOCK]
set_input_delay -clock MAIN_CLOCK -max 2.0 [remove_from_collection [all_inputs] CLK ]
set_input_delay -clock MAIN_CLOCK -min 0.1 [remove_from_collection [all_inputs] CLK ]
set_output_delay -clock MAIN_CLOCK -max 2.0 [all_outputs]
set_output_delay -clock MAIN_CLOCK -min -0.1 [all_outputs]

# synthesis constraints
set_max_area 0

report_qor > reports/qor.rpt

# compile (synthesis)
compile -area_effort medium -map_effort high > reports/compile.rpt

# report
report_area > reports/synth_area.rpt
report_design > reports/synth_design.rpt
report_cell > reports/synth_cells.rpt
report_qor > reports/synth_qor.rpt
report_resources > reports/synth_resources.rpt
report_timing -max_paths 10 > reports/synth_timing.rpt
report_power -analysis_effort medium > reports/synth_power.rpt

# save results
write -f ddc -hierarchy -output results/fp16MAC.ddc
write -hierarchy -format verilog -output results/fp16MAC.mapped.v
write_sdc results/fp16MAC.sdc -version 2.1
write_sdf results/fp16MAC.sdf

