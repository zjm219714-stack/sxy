set script_dir [file dirname [file normalize [info script]]]
set project_root [file normalize [file join $script_dir ..]]
open_project [file join $project_root AXI_DMA.xpr]
set bd_file [get_files -quiet */System.bd]
open_bd_design $bd_file
generate_target all $bd_file
update_compile_order -fileset sources_1
reset_run synth_1
reset_run impl_1
launch_runs impl_1 -to_step write_bitstream -jobs 2
wait_on_run impl_1
if {[get_property STATUS [get_runs impl_1]] ne "write_bitstream Complete!"} {
    error "Bitstream generation did not complete: [get_property STATUS [get_runs impl_1]]"
}
write_hwdef -force -file [file join $project_root AXI_DMA.sdk System_wrapper.hdf]
puts "Bitstream and hardware definition updated."