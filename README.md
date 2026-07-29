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

## Build target

Run these commands from the TWRP source root:

    source build/envsetup.sh
    lunch omni_lcsh8735_6tb_a8_l-eng
    make -j4 recoveryimage

The output image is:

    out/target/product/lcsh8735_6tb_a8_l/recovery.img

## Image size

The recovery partition size is exactly 16,777,216 bytes.

Check the image size before flashing:

    IMG=out/target/product/lcsh8735_6tb_a8_l/recovery.img
    stat -c '%n %s bytes' "$IMG"

Do not flash an image larger than 16 MiB.

## Flashing

Flash with fastboot:

    fastboot flash recovery recovery.img

Boot directly into recovery after flashing. Android may restore the
stock recovery if the recovery restoration files are still enabled.

## Stock recovery restoration

The device tree includes a script that attempts to disable these files:

    /system/recovery-from-boot.p
    /system/bin/install-recovery.sh
    /system/etc/install-recovery.sh

This operation modifies the system partition and may affect official
OTA update verification.

## Source layout

This repository contains device-specific files only.

Compatibility patches required to build TWRP 5.1 on a modern Linux
host will be provided in a separate builder repository.

## Disclaimer

This is an unofficial recovery build. Flashing custom recovery may
cause data loss or make the device unable to boot.

Keep backups of the stock recovery and a known-working recovery image.
