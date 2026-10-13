# Handoff: ADAU7118 PDM/PCM, I2C Decimation, and Bitstream Fix

## Task Context

We are working on a Zynq-7020 Vivado project at:

```text
C:\Users\Admin\Desktop\ZYNQ_7020
```

The user is debugging an ADAU7118 PDM-to-PCM audio front end. The main question was why changing the ADAU7118 decimation ratio through I2C did not change `PDM_CLK`, and why localization quality dropped after changing the decimation ratio.

The relevant hardware path is:

```text
FPGA generates BCLK + FSYNC
        -> ADAU7118 receives clocks
        -> ADAU7118 generates PDM_CLK for PDM microphones
        -> microphones return PDM data
        -> ADAU7118 decimates PDM to PCM
        -> ADAU7118 outputs PCM over SDATA/TDM
        -> FPGA receives 24-bit PCM channels
```

The FPGA currently generates:

```text
BCLK = 12.288 MHz
FSYNC = BCLK / 256 = 48 kHz
```

Therefore:

```text
PDM_CLK = FSYNC * decimation_ratio

64x -> 3.072 MHz
32x -> 1.536 MHz
16x -> 768 kHz
```

## What Was Found

1. ADAU7118 decimation can be controlled by I2C, but the project does not use PS I2C.
   The Zynq PS I2C0/I2C1 peripherals are disabled in the processing system configuration. The actual SCL/SDA lines are driven by a PL module: `adau7118_i2c_init`.

2. The current design is not runtime-configurable.
   `adau7118_i2c_init.v` writes a fixed initialization sequence once after reset, then enters `S_DONE`. There is no AXI-Lite register or software-controlled path for changing ADAU7118 registers while running.

3. Changing ADAU7118 decimation ratio does not change FPGA `BCLK`/`FSYNC`.
   `BCLK` and `FSYNC` are generated in `ADAU7118.v`; they are fixed by Verilog parameters and counters. If `FSYNC` remains 48 kHz, changing decimation changes ADAU7118-generated `PDM_CLK`, not the FPGA-generated clocks.

4. The old ADAU7118 register `0x04` value was suspicious.
   The previous init wrote `0x04 = 0x01` at the end. That likely enabled only one channel pair and did not enable the PDM clock bits. This could explain why changing decimation did not produce the expected `PDM_CLK` behavior.

5. Bitstream failed because of an XDC port-name mismatch.
   The top-level port is lowercase `sda`, but the constraint file used uppercase `SDA`. Vivado then reported `sda` as unconstrained and blocked bitstream generation with `NSTD-1` and `UCIO-1`.

## Completed Changes

### 1. ADAU7118 I2C Init Update

File:

```text
C:\Users\Admin\Desktop\ZYNQ_7020\AXI_DMA.srcs\sources_1\new\adau7118_i2c_init.v
```

Changed the init module to use explicit parameters and register constants:

```verilog
parameter [7:0] DEC_RATIO_CLK_MAP_VALUE = 8'hC1,
parameter [7:0] PDM_CLK_CH_ENABLE_VALUE = 8'h3F
```

Meaning:

```text
0x05 = 0xC1 -> 32x decimation
0x04 = 0x3F -> enable PDM_CLK0/PDM_CLK1 and all channel pairs
```

Important details:

```text
8'h3F = 0011_1111

bit5 = 1 -> enable PDM_CLK1
bit4 = 1 -> enable PDM_CLK0
bit3 = 1 -> enable CH6/CH7
bit2 = 1 -> enable CH4/CH5
bit1 = 1 -> enable CH2/CH3
bit0 = 1 -> enable CH0/CH1
```

If only PDM_CLK0 and CH0/CH1 are needed, consider using:

```verilog
parameter [7:0] PDM_CLK_CH_ENABLE_VALUE = 8'h11;
```

If all 8 channels are used, keep:

```verilog
parameter [7:0] PDM_CLK_CH_ENABLE_VALUE = 8'h3F;
```

To switch decimation:

```verilog
8'hC0 -> 64x
8'hC1 -> 32x
8'hC2 -> 16x
```

Recommendation for localization: use `8'hC0` unless there is a strong reason to reduce PDM clock. 64x gives `PDM_CLK = 3.072 MHz` at 48 kHz FSYNC and is likely better for microphone quality and localization.

### 2. XDC Constraint Fix

File:

```text
C:\Users\Admin\Desktop\ZYNQ_7020\AXI_DMA.srcs\constrs_1\new\System_wrapper.xdc
```

Changed SDA constraints from uppercase `SDA` to lowercase `sda`:

```tcl
set_property PACKAGE_PIN E18 [get_ports sda]
set_property IOSTANDARD LVCMOS18 [get_ports sda]
set_property PULLUP true [get_ports sda]
```

Kept SCL uppercase because the actual top-level port is uppercase `SCL`:

```tcl
set_property PACKAGE_PIN E19 [get_ports SCL]
set_property IOSTANDARD LVCMOS18 [get_ports SCL]
set_property PULLUP true [get_ports SCL]
```

This should resolve the bitstream errors:

```text
ERROR: [DRC NSTD-1] Problem ports: sda
ERROR: [DRC UCIO-1] Problem ports: sda
```

## Current Status

The source and XDC have been edited. The latest known bitstream failure was caused by `sda` being unconstrained. That specific issue has been fixed in the XDC.

Vivado has not been rerun successfully after the final XDC fix in this conversation. The next session should rerun implementation/bitstream generation and check whether new errors remain.

There was also a timing critical warning in the previous implementation log:

```text
CRITICAL WARNING: [Timing 38-282] The design failed to meet the timing requirements.
```

This was not the direct cause of bitstream failure. The direct blocker was the `sda` DRC issue. Still, timing should be reviewed after bitstream generation succeeds.

## Next Plan

1. In Vivado, refresh/regenerate the module reference/output products if needed.
2. Rerun synthesis/implementation/generate bitstream.
3. Confirm `sda` no longer appears in `NSTD-1` or `UCIO-1` DRC errors.
4. Program the FPGA.
5. Use a scope or logic analyzer to verify:

```text
SCL/SDA transaction exists
ADAU7118 address 0x16 ACKs
Register 0x05 is written to expected decimation value
Register 0x04 is written to 0x3F or intended enable mask
PDM_CLK changes as expected
```

Expected PDM clock with current default values:

```text
FSYNC = 48 kHz
DEC_RATIO_CLK_MAP_VALUE = 8'hC1 -> 32x
PDM_CLK = 48 kHz * 32 = 1.536 MHz
```

If changed back to 64x:

```text
DEC_RATIO_CLK_MAP_VALUE = 8'hC0
PDM_CLK = 48 kHz * 64 = 3.072 MHz
```

6. For localization quality, first compare 64x vs 32x:
   If localization recovers at 64x, keep 64x. The lower PDM clock at 32x may degrade microphone SNR, frequency response, phase consistency, or channel matching.

## Localization Improvement Ideas

Prioritize these in order:

1. Restore 64x decimation and verify `PDM_CLK = 3.072 MHz`.
2. Confirm all 8 PCM channels are correctly aligned and ordered.
3. Check `BIT_cnt`, FSYNC alignment, 24-bit sign interpretation, and TDM channel order.
4. Capture the same sound on all channels and compare waveforms.
5. Calibrate channel gain, DC offset, and fixed delay.
6. Add band-pass filtering before localization, for example 300 Hz to 4 kHz or 500 Hz to 6 kHz.
7. Use GCC-PHAT instead of simple cross-correlation if not already doing so.
8. Add sub-sample peak interpolation around the correlation peak.
9. Add multi-frame smoothing or confidence gating.

## Pitfalls: Do Not Repeat

1. Do not assume PS I2C controls ADAU7118 in this design.
   PS I2C is disabled; ADAU7118 is configured by PL `adau7118_i2c_init`.

2. Do not expect changing ADAU7118 decimation to change FPGA-generated `BCLK` or `FSYNC`.
   Those are generated in `ADAU7118.v`.

3. Do not write `0x04 = 0x01` unless you intentionally want only the lowest channel pair and no PDM clock enable bits.
   For all channels, use `0x3F`. For only PDM_CLK0 + CH0/CH1, use `0x11`.

4. Do not ignore top-level port case in XDC.
   `SCL` is uppercase, `sda` is lowercase in the generated top-level wrapper.

5. Do not trust `init_done` alone as proof of successful I2C configuration.
   `init_error` exists, but it is not currently connected to a visible debug path. Add it to ILA or expose it if debugging I2C.

6. Do not conclude that PCM format must change after changing decimation.
   The PCM/TDM format can remain 24-bit, 8-channel, 48 kHz as long as `FSYNC/BCLK` remain unchanged.

7. Avoid Windows/Vivado encoding surprises.
   The `adau7118_i2c_init.v` file was rewritten with ASCII comments to avoid broken Chinese comment encoding.

## Useful Files

```text
C:\Users\Admin\Desktop\ZYNQ_7020\AXI_DMA.srcs\sources_1\new\adau7118_i2c_init.v
C:\Users\Admin\Desktop\ZYNQ_7020\AXI_DMA.srcs\sources_1\new\I2C_driver.v
C:\Users\Admin\Desktop\ZYNQ_7020\AXI_DMA.srcs\sources_1\new\ADAU7118.v
C:\Users\Admin\Desktop\ZYNQ_7020\AXI_DMA.srcs\constrs_1\new\System_wrapper.xdc
C:\Users\Admin\Desktop\ZYNQ_7020\AXI_DMA.runs\impl_1\runme.log
C:\Users\Admin\Desktop\ZYNQ_7020\AXI_DMA.runs\impl_1\System_wrapper_drc_routed.rpt
```

