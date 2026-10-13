# Add a raw time-domain capture path without changing the existing FFT DMA path.
# Run from Vivado with: source scripts/enable_raw_waveform_capture.tcl

set script_dir [file dirname [file normalize [info script]]]
set project_root [file normalize [file join $script_dir ..]]
set project_file [file join $project_root AXI_DMA.xpr]
set raw_rtl [file join $project_root AXI_DMA.srcs sources_1 new raw_waveform_capture.v]

if {[current_project -quiet] eq ""} {
    open_project $project_file
}

if {[lsearch -exact [get_files -quiet $raw_rtl] $raw_rtl] < 0} {
    add_files -norecurse $raw_rtl
}
update_compile_order -fileset sources_1

set bd_file [get_files -quiet */System.bd]
if {[llength $bd_file] != 1} {
    error "System.bd was not found uniquely in the open project."
}
open_bd_design $bd_file

if {[llength [get_bd_cells -quiet raw_waveform_capture_0]] == 0} {
    create_bd_cell -type module -reference raw_waveform_capture raw_waveform_capture_0
}

if {[llength [get_bd_cells -quiet axi_dma_raw_0]] == 0} {
    set raw_dma [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_raw_0]
    set_property -dict [list \
        CONFIG.c_include_mm2s {0} \
        CONFIG.c_include_s2mm {1} \
        CONFIG.c_include_sg {0} \
        CONFIG.c_include_s2mm_dre {1} \
        CONFIG.c_m_axi_s2mm_data_width {64} \
        CONFIG.c_s2mm_burst_size {32} \
    ] $raw_dma
}

set_property CONFIG.NUM_MI {2} [get_bd_cells ps7_0_axi_periph]

# Make the script repeatable: only connect endpoints that are not connected yet.
if {[llength [get_bd_nets -quiet -of_objects [get_bd_pins raw_waveform_capture_0/frame_valid]]] == 0} {
    connect_bd_net [get_bd_pins axis_parser_0/frame_valid] [get_bd_pins raw_waveform_capture_0/frame_valid]
}
if {[llength [get_bd_nets -quiet -of_objects [get_bd_pins raw_waveform_capture_0/frame_data]]] == 0} {
    connect_bd_net [get_bd_pins axis_parser_0/frame_data] [get_bd_pins raw_waveform_capture_0/frame_data]
}
if {[llength [get_bd_intf_nets -quiet -of_objects [get_bd_intf_pins raw_waveform_capture_0/m_axis_wave]]] == 0} {
    connect_bd_intf_net [get_bd_intf_pins raw_waveform_capture_0/m_axis_wave] [get_bd_intf_pins axi_dma_raw_0/S_AXIS_S2MM]
}
if {[llength [get_bd_intf_nets -quiet -of_objects [get_bd_intf_pins axi_dma_raw_0/M_AXI_S2MM]]] == 0} {
    connect_bd_intf_net [get_bd_intf_pins axi_dma_raw_0/M_AXI_S2MM] [get_bd_intf_pins axi_smc/S02_AXI]
}
if {[llength [get_bd_intf_nets -quiet -of_objects [get_bd_intf_pins axi_dma_raw_0/S_AXI_LITE]]] == 0} {
    connect_bd_intf_net [get_bd_intf_pins ps7_0_axi_periph/M01_AXI] [get_bd_intf_pins axi_dma_raw_0/S_AXI_LITE]
}

# The raw sample source and the DDR SmartConnect both use clk_wiz_0/clk_out1.
if {[llength [get_bd_nets -quiet -of_objects [get_bd_pins raw_waveform_capture_0/clk]]] == 0} {
    connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] \
        [get_bd_pins raw_waveform_capture_0/clk] \
        [get_bd_pins axi_dma_raw_0/m_axi_s2mm_aclk]
}
# AXI-Lite remains in the PS GP0 clock domain.
if {[llength [get_bd_nets -quiet -of_objects [get_bd_pins axi_dma_raw_0/s_axi_lite_aclk]]] == 0} {
    connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] \
        [get_bd_pins axi_dma_raw_0/s_axi_lite_aclk] \
        [get_bd_pins ps7_0_axi_periph/M01_ACLK]
}
# The capture core shares the existing PL processing reset.
if {[llength [get_bd_nets -quiet -of_objects [get_bd_pins raw_waveform_capture_0/rst_n]]] == 0} {
    connect_bd_net [get_bd_pins rst_ps7_0_100M/peripheral_aresetn] \
        [get_bd_pins raw_waveform_capture_0/rst_n]
}

# AXI-Lite control is clocked by FCLK_CLK0, so give it a reset synchronized
# to that same clock domain instead of reusing the PL processing reset.
if {[llength [get_bd_cells -quiet raw_waveform_lite_reset_0]] == 0} {
    create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 raw_waveform_lite_reset_0
}
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] \
    [get_bd_pins raw_waveform_lite_reset_0/slowest_sync_clk]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] \
    [get_bd_pins raw_waveform_lite_reset_0/ext_reset_in]
foreach pin_name {axi_dma_raw_0/axi_resetn ps7_0_axi_periph/M01_ARESETN} {
    set pin [get_bd_pins $pin_name]
    set prior_net [get_bd_nets -quiet -of_objects $pin]
    if {[llength $prior_net] != 0} {
        disconnect_bd_net $prior_net $pin
    }
}
connect_bd_net [get_bd_pins raw_waveform_lite_reset_0/peripheral_aresetn] \
    [get_bd_pins axi_dma_raw_0/axi_resetn] \
    [get_bd_pins ps7_0_axi_periph/M01_ARESETN]

if {[llength [get_bd_addr_segs -quiet -of_objects [get_bd_addr_spaces axi_dma_raw_0/Data_S2MM]]] == 0} {
    create_bd_addr_seg -range 0x40000000 -offset 0x00000000 \
        [get_bd_addr_spaces axi_dma_raw_0/Data_S2MM] \
        [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] \
        SEG_processing_system7_0_HP0_DDR_LOWOCM_RAW
}
assign_bd_address [get_bd_addr_segs axi_dma_raw_0/S_AXI_LITE/Reg]

validate_bd_design
save_bd_design
puts "Raw waveform capture path added. Generate the bitstream, export hardware, then regenerate the SDK BSP."