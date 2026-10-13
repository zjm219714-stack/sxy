# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CLK_FREQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DEC_RATIO_CLK_MAP_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "I2C_FREQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PDM_CLK_CH_ENABLE_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "POWER_ON_DELAY_CLKS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SLAVE_ADDR" -parent ${Page_0}


}

proc update_PARAM_VALUE.CLK_FREQ { PARAM_VALUE.CLK_FREQ } {
	# Procedure called to update CLK_FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLK_FREQ { PARAM_VALUE.CLK_FREQ } {
	# Procedure called to validate CLK_FREQ
	return true
}

proc update_PARAM_VALUE.DEC_RATIO_CLK_MAP_VALUE { PARAM_VALUE.DEC_RATIO_CLK_MAP_VALUE } {
	# Procedure called to update DEC_RATIO_CLK_MAP_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEC_RATIO_CLK_MAP_VALUE { PARAM_VALUE.DEC_RATIO_CLK_MAP_VALUE } {
	# Procedure called to validate DEC_RATIO_CLK_MAP_VALUE
	return true
}

proc update_PARAM_VALUE.I2C_FREQ { PARAM_VALUE.I2C_FREQ } {
	# Procedure called to update I2C_FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.I2C_FREQ { PARAM_VALUE.I2C_FREQ } {
	# Procedure called to validate I2C_FREQ
	return true
}

proc update_PARAM_VALUE.PDM_CLK_CH_ENABLE_VALUE { PARAM_VALUE.PDM_CLK_CH_ENABLE_VALUE } {
	# Procedure called to update PDM_CLK_CH_ENABLE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PDM_CLK_CH_ENABLE_VALUE { PARAM_VALUE.PDM_CLK_CH_ENABLE_VALUE } {
	# Procedure called to validate PDM_CLK_CH_ENABLE_VALUE
	return true
}

proc update_PARAM_VALUE.POWER_ON_DELAY_CLKS { PARAM_VALUE.POWER_ON_DELAY_CLKS } {
	# Procedure called to update POWER_ON_DELAY_CLKS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.POWER_ON_DELAY_CLKS { PARAM_VALUE.POWER_ON_DELAY_CLKS } {
	# Procedure called to validate POWER_ON_DELAY_CLKS
	return true
}

proc update_PARAM_VALUE.SLAVE_ADDR { PARAM_VALUE.SLAVE_ADDR } {
	# Procedure called to update SLAVE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SLAVE_ADDR { PARAM_VALUE.SLAVE_ADDR } {
	# Procedure called to validate SLAVE_ADDR
	return true
}


proc update_MODELPARAM_VALUE.CLK_FREQ { MODELPARAM_VALUE.CLK_FREQ PARAM_VALUE.CLK_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_FREQ}] ${MODELPARAM_VALUE.CLK_FREQ}
}

proc update_MODELPARAM_VALUE.I2C_FREQ { MODELPARAM_VALUE.I2C_FREQ PARAM_VALUE.I2C_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.I2C_FREQ}] ${MODELPARAM_VALUE.I2C_FREQ}
}

proc update_MODELPARAM_VALUE.SLAVE_ADDR { MODELPARAM_VALUE.SLAVE_ADDR PARAM_VALUE.SLAVE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SLAVE_ADDR}] ${MODELPARAM_VALUE.SLAVE_ADDR}
}

proc update_MODELPARAM_VALUE.POWER_ON_DELAY_CLKS { MODELPARAM_VALUE.POWER_ON_DELAY_CLKS PARAM_VALUE.POWER_ON_DELAY_CLKS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.POWER_ON_DELAY_CLKS}] ${MODELPARAM_VALUE.POWER_ON_DELAY_CLKS}
}

proc update_MODELPARAM_VALUE.DEC_RATIO_CLK_MAP_VALUE { MODELPARAM_VALUE.DEC_RATIO_CLK_MAP_VALUE PARAM_VALUE.DEC_RATIO_CLK_MAP_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEC_RATIO_CLK_MAP_VALUE}] ${MODELPARAM_VALUE.DEC_RATIO_CLK_MAP_VALUE}
}

proc update_MODELPARAM_VALUE.PDM_CLK_CH_ENABLE_VALUE { MODELPARAM_VALUE.PDM_CLK_CH_ENABLE_VALUE PARAM_VALUE.PDM_CLK_CH_ENABLE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PDM_CLK_CH_ENABLE_VALUE}] ${MODELPARAM_VALUE.PDM_CLK_CH_ENABLE_VALUE}
}

