# AcousticImagerQt

Pure Qt/C++ version of the acoustic imaging PC application.

## Features

- Camera preview through Qt Multimedia.
- UDP control commands to Zynq at `192.168.1.10:8081`.
- 780-byte cloud packet receive on UDP port `8080`.
- 32x24 cloud map rendering with vertical flip enabled.
- Frequency band control limited to 1-96 kHz for 192 kHz sampling.
- Screenshot support.

## Build in Qt Creator

Open `AcousticImagerQt.pro`, select `Desktop Qt 5.15.2 MinGW 64-bit`, then build/run.

No OpenCV configuration is required in this version.