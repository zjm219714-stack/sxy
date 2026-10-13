set project_file [file normalize [file join [file dirname [info script]] .. AXI_DMA.xpr]]
open_project $project_file

set bd_file [get_files -quiet *System.bd]
if {[llength $bd_file] == 0} {
    error "System.bd was not found in the project."
}

generate_target all [lindex $bd_file 0]
set generated_wrapper [make_wrapper -files [lindex $bd_file 0] -top -force]
puts "Generated wrapper: $generated_wrapper"
close_project
