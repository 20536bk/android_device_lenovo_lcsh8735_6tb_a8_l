DEVICE_PATH := device/lenovo/lcsh8735_6tb_a8_l

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := lcsh8735_6tb_a8_l
TARGET_BOARD_PLATFORM := mt6735

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := generic
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi

TARGET_USES_64_BIT_BINDER := true

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel

# Exact command line from the known-working TWRP image
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive androidboot.bootdevice=mtk-msdc.0

BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048

# Match the known-working image header.
# Its board/name field is empty, so do not add --board.
BOARD_MKBOOTIMG_ARGS := \
    --kernel_offset 0x00080000 \
    --ramdisk_offset 0x04000000 \
    --second_offset 0x00f78000 \
    --tags_offset 0x0e000000

# Kernel already contains appended DTB.
# Do not define BOARD_KERNEL_SEPARATED_DT.

BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab
BOARD_SUPPRESS_SECURE_ERASE := true

TW_THEME := portrait_hdpi
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"

# Lollipop full-disk encryption
TW_INCLUDE_L_CRYPTO := true
TW_INCLUDE_CRYPTO := true

# Simplified Chinese
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := zh_CN

# MT6735 CPU temperature
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone7/temp"

# Custom recovery version suffix
TW_DEVICE_VERSION := XiaoBaiCai
