# Remove the legacy, unused pl_work top-level port from the System block design.
# The ADAU7118 internal pl_work port is intentionally left unchanged.

set project_file [file normalize [file join [file dirname [info script]] .. AXI_DMA.xpr]]
open_project $project_file

set bd_file [get_files -quiet *System.bd]
if {[llength $bd_file] == 0} {
    error "System.bd was not found in the project."
}

open_bd_design [lindex $bd_file 0]

set legacy_port [get_bd_ports -quiet pl_work]
if {[llength $legacy_port] != 0} {
    delete_bd_objs $legacy_port
    save_bd_design
}

validate_bd_design
save_bd_design
puts "Removed the unconstrained top-level pl_work port."
puts "Regenerate the BD output products and System_wrapper before implementation."
