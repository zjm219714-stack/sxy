# Zynq-7020 acoustic imaging project

Vivado/SDK project for an 8-lane ADAU7118 audio front end, 64-channel FPGA processing, FFT/DMA acquisition, and the PC visualization applications.

## Current measured acquisition settings

The current source configuration and board measurements are:

| Signal / setting | Value | Basis |
|---|---:|---|
| TDM frame / PCM sample rate (FSYNC) | 96 kHz | Measured; also `BCLK_FREQ / 256` |
| BCLK | 24.576 MHz | Measured and configured in `ADAU7118.v` |
| ADAU7118 output clock | 6.144 MHz | Measured on hardware |
| ADAU7118 decimation | 64x (`0xC0`) | PL I2C initialization value; 96 kHz × 64 = 6.144 MHz |
| Enabled PDM clocks / channel pairs | `0x3F` | PL I2C initialization value |
| Channels processed by localization | 64 | SDK application configuration |
| FFT frame length | 128 samples | SDK application configuration |
| FFT bin spacing | 750 Hz | 96,000 / 128 |

The clock path is configured for 196.608 MHz system clock, 24.576 MHz BCLK, and 256 BCLK periods per TDM frame. This gives a nominal 96 kHz FSYNC. The measured ADAU7118 output is 6.144 MHz, consistent with 64x decimation at 96 kHz.

## I2C configuration

ADAU7118 setup is performed by the PL module `adau7118_i2c_init`; the Zynq PS I2C0 and I2C1 peripherals are disabled. The PL controller drives the top-level `SCL` and `sda` pins and writes the decimation, SAI, and clock/channel enable registers once after reset. The configured I2C target rate is 250 kHz. `init_error` is not currently exposed to software or a visible debug output, so the source configuration alone does not prove ACK success on every boot.

## Main files

- `AXI_DMA.xpr` — Vivado project
- `AXI_DMA.srcs/sources_1/bd/System/System.bd` — PS, DMA, and processing block design
- `AXI_DMA.srcs/sources_1/new/ADAU7118.v` — BCLK/FSYNC generation and serial PCM capture
- `AXI_DMA.srcs/sources_1/new/adau7118_i2c_init.v` and `I2C_driver.v` — ADAU7118 PL I2C initialization
- `AXI_DMA.sdk/AXI_DMA_Test/src/main.c` — Zynq application and localization processing
- `局部放电声学成像系统技术文档.md` — system design notes

