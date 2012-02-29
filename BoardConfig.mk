USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/acer/betouch_e140/BoardConfigVendor.mk

ARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := betouch_e140


BOARD_KERNEL_CMDLINE := console=ttyMSM2,115200n8 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x02e00000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00420000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x06e00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0c780000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/acer/betouch_e140/kernel

BOARD_RECOVERY_ALWAYS_WIPES := false
BOARD_CUSTOM_GRAPHICS       := ../../../device/acer/betouch_e140/recovery/graphics.c

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
