# Restore the ADAU7118 acquisition configuration to I2C-controlled 64x
# decimation and a 75 kHz TDM sample rate, while keeping the raw DMA branch.
# Run from Vivado with: source scripts/restore_i2c_64x_75khz.tcl

set script_dir [file dirname [file normalize [info script]]]
set project_root [file normalize [file join $script_dir ..]]
set project_file [file join $project_root AXI_DMA.xpr]

if {[current_project -quiet] eq ""} {
    open_project $project_file
}

set bd_file [get_files -quiet */System.bd]
if {[llength $bd_file] != 1} {
    error "System.bd was not found uniquely in the open project."
}

open_bd_design $bd_file

# Exact 192 MHz allows BCLK = 19.2 MHz and LRCLK = BCLK / 256 = 75 kHz.
set_property -dict [list \
    CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {192.000} \
    CONFIG.CLKOUT2_USED {false} \
] [get_bd_cells clk_wiz_0]

# Explicit module-reference properties avoid retaining the newer 192 kHz setup.
set_property -dict [list \
    CONFIG.SYS_CLK_FREQ {192000000} \
    CONFIG.BCLK_FREQ {19200000} \
] [get_bd_cells ADAU7118_0]

set_property -dict [list \
    CONFIG.CLK_FREQ {192000000} \
    CONFIG.DEC_RATIO_CLK_MAP_VALUE {0xC0} \
] [get_bd_cells adau7118_i2c_init_0]

update_compile_order -fileset sources_1
validate_bd_design
save_bd_design
generate_target all $bd_file

puts "Restored I2C-controlled 64x decimation and 75 kHz acquisition rate."
puts "Run scripts/build_raw_waveform_bitstream.tcl, then export hardware and regenerate the SDK BSP."
