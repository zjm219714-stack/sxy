set_property PACKAGE_PIN K14 [get_ports BCLK1]

set_property PACKAGE_PIN M19 [get_ports BCLK2]

set_property PACKAGE_PIN B19 [get_ports BCLK3]

set_property PACKAGE_PIN J18 [get_ports BCLK4]

set_property PACKAGE_PIN G15 [get_ports BCLK5]

set_property PACKAGE_PIN M15 [get_ports BCLK6]

set_property PACKAGE_PIN D18 [get_ports BCLK7]

set_property PACKAGE_PIN N15 [get_ports BCLK8]

set_property PACKAGE_PIN H17 [get_ports FSYNC1]

set_property PACKAGE_PIN M20 [get_ports FSYNC2]

set_property PACKAGE_PIN F16 [get_ports FSYNC3]

set_property PACKAGE_PIN F17 [get_ports FSYNC4]

set_property PACKAGE_PIN H18 [get_ports FSYNC5]

set_property PACKAGE_PIN L19 [get_ports FSYNC6]

set_property PACKAGE_PIN C20 [get_ports FSYNC7]

set_property PACKAGE_PIN B20 [get_ports FSYNC8]

set_property PACKAGE_PIN J14 [get_ports SDATA1]

set_property PACKAGE_PIN L20 [get_ports SDATA2]

set_property PACKAGE_PIN D19 [get_ports SDATA3]

set_property PACKAGE_PIN D20 [get_ports SDATA4]

set_property PACKAGE_PIN H15 [get_ports SDATA5]

set_property PACKAGE_PIN M14 [get_ports SDATA6]

set_property PACKAGE_PIN E17 [get_ports SDATA7]
set_property PACKAGE_PIN N16 [get_ports SDATA8]
set_property IOSTANDARD LVCMOS18 [get_ports BCLK1]
set_property IOSTANDARD LVCMOS18 [get_ports BCLK2]
set_property IOSTANDARD LVCMOS18 [get_ports BCLK3]
set_property IOSTANDARD LVCMOS18 [get_ports BCLK4]
set_property IOSTANDARD LVCMOS18 [get_ports BCLK5]
set_property IOSTANDARD LVCMOS18 [get_ports BCLK6]
set_property IOSTANDARD LVCMOS18 [get_ports BCLK7]
set_property IOSTANDARD LVCMOS18 [get_ports BCLK8]
set_property IOSTANDARD LVCMOS18 [get_ports FSYNC1]
set_property IOSTANDARD LVCMOS18 [get_ports FSYNC2]
set_property IOSTANDARD LVCMOS18 [get_ports FSYNC3]
set_property IOSTANDARD LVCMOS18 [get_ports FSYNC4]
set_property IOSTANDARD LVCMOS18 [get_ports FSYNC5]
set_property IOSTANDARD LVCMOS18 [get_ports FSYNC6]
set_property IOSTANDARD LVCMOS18 [get_ports FSYNC7]
set_property IOSTANDARD LVCMOS18 [get_ports FSYNC8]
set_property IOSTANDARD LVCMOS18 [get_ports SDATA1]
set_property IOSTANDARD LVCMOS18 [get_ports SDATA2]
set_property IOSTANDARD LVCMOS18 [get_ports SDATA3]
set_property IOSTANDARD LVCMOS18 [get_ports SDATA4]
set_property IOSTANDARD LVCMOS18 [get_ports SDATA5]
set_property IOSTANDARD LVCMOS18 [get_ports SDATA7]
set_property IOSTANDARD LVCMOS18 [get_ports SDATA6]
set_property IOSTANDARD LVCMOS18 [get_ports SDATA8]
set_property DRIVE 12 [get_ports BCLK1]
set_property DRIVE 12 [get_ports BCLK2]
set_property DRIVE 12 [get_ports BCLK3]
set_property PACKAGE_PIN E19 [get_ports SCL]
set_property PACKAGE_PIN E18 [get_ports sda]
set_property IOSTANDARD LVCMOS18 [get_ports SCL]
set_property IOSTANDARD LVCMOS18 [get_ports sda]
set_property PULLUP true [get_ports SCL]
set_property PULLUP true [get_ports sda]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
set_property PACKAGE_PIN G18 [get_ports LED_75K]
set_property PACKAGE_PIN G17 [get_ports LED_192K]

set_property IOSTANDARD LVCMOS18 [get_ports LED_75K]
set_property IOSTANDARD LVCMOS18 [get_ports LED_192K]