# This script sets up a Vivado project with all ip references resolved.
# run on linux command line with:
#       vivado -mode batch -source setup.tcl
#
close_project -quiet
file delete -force proj.xpr *.os *.jou *.log proj.srcs proj.cache proj.runs
#
create_project -part xc7a35tcsg324-1 -force proj
set_property target_language verilog [current_project]
set_property default_lib work [current_project]
load_features ipintegrator
tclapp::install ultrafast -quiet
set_property CUSTOMIZED_DEFAULT_IP_LOCATION ./ [current_project]

#read_ip ../source/frame_tx/vec_reader/vec_reader_ila/vec_reader_ila.xci

upgrade_ip -quiet  [get_ips *]
generate_target {all} [get_ips *]

source ../source/system.tcl
generate_target {synthesis implementation} [get_files ./proj.srcs/sources_1/bd/system/system.bd]
set_property synth_checkpoint_mode None [get_files ./proj.srcs/sources_1/bd/system/system.bd]


read_verilog -sv ../source/top.sv

read_xdc         ../source/top.xdc

#add_files -norecurse ../vitis/release/production.elf
#set_property SCOPED_TO_REF system [get_files -all -of_objects [get_fileset sources_1] {production.elf}]
#set_property SCOPED_TO_CELLS { microblaze_0 } [get_files -all -of_objects [get_fileset sources_1] {production.elf}]

close_project


