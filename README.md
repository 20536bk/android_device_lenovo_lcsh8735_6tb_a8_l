# TWRP for Lenovo TAB2 501LV

Unofficial TWRP 3.7.0_9 device tree for Lenovo TAB2 501LV.

## Device information

- Model: Lenovo TAB2 501LV
- Device: `lcsh8735_6tb_a8_l`
- Platform: MediaTek MT6735
- Architecture: ARM64
- Display: 800x1280
- Recovery partition: 16 MiB
- Maintainer: XiaoBaiCai

## Working features

- Recovery boot
- Touchscreen
- ADB
- MTP
- Simplified Chinese
- CPU temperature
- Data mounting and decryption
- Backup and restore
- ZIP installation
- Raw System Image flashing

## Device-specific configuration

- Prebuilt working recovery kernel
- MediaTek by-name partition paths
- CPU temperature from `thermal_zone7`
- USB/MTP model name: Lenovo TAB2 501LV
- System Image flashing target
- Stock recovery restoration protection
- Custom TWRP version suffix

## Source layout

This repository contains device-specific files only.

Compatibility patches required to build TWRP 5.1 on a modern Linux
host will be provided in a separate builder repository.

## Disclaimer

This is an unofficial recovery build. Flashing custom recovery may
cause data loss or make the device unable to boot.

Keep backups of the stock recovery and a known-working recovery image.
