LOCAL_PATH := device/samsung/e5lte

# Architecture
TARGET_BOARD_PLATFORM      := msm8916
TARGET_BOARD_PLATFORM_GPU  := qcom-adreno306
TARGET_ARCH                := arm
TARGET_ARCH_VARIANT        := armv7-a-neon
TARGET_CPU_ABI             := armeabi-v7a
TARGET_CPU_ABI2            := armeabi
TARGET_CPU_SMP             := true
TARGET_CPU_VARIANT         := cortex-a53
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_CPU_CORTEX_A53 := true

TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER := true

BOARD_USES_QCOM_HARDWARE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Kernel
#TARGET_PREBUILT_KERNEL := device/samsung/e5lte/kernel
BOARD_CUSTOM_BOOTIMG_MK      := device/samsung/e5lte/mkbootimg.mk
BOARD_KERNEL_CMDLINE         := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_BASE            := 0x80000000
BOARD_RAMDISK_OFFSET         := 0x02000000
BOARD_KERNEL_TAGS_OFFSET     := 0x01E00000
BOARD_KERNEL_SEPARATED_DT    := true
BOARD_KERNEL_PAGESIZE        := 2048
#BOARD_MKBOOTIMG_ARGS 		 := --dt $(LOCAL_PATH)/dt.img --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --tags_offset 0x01E00000
TARGET_KERNEL_SOURCE         := /home/nepalbiraj/cm11/kernel/samsung/e5lte
#TARGET_KERNEL_CONFIG         := msm8916_sec_defconfig
TARGET_KERNEL_CONFIG         := msm8916_sec_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_e5_eur_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
#BOARD_MKRECOVERYIMG_ARGS := --dt device/samsung/e5lte/dt.img --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --tags_offset 0x01E00000

# Partition Info
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2516582400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12775829504
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_FLASH_BLOCK_SIZE := 131072

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Recovery
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := $(LOCAL_PATH)/recovery/recovery_keys.c
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/twrp.fstab
BOARD_USES_MMC_UTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
#TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP
DEVICE_RESOLUTION := 720x1280
#TW_BRIGHTNESS_PATH := "/sys/devices/soc.0/1a00000.qcom,mdss_mdp/qcom,mdss_fb_primary.135/leds/lcd-backlight/brightness"
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_BRIGHTNESS_PATH := "/sys/devices/virtual/lcd/panel/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_USB_STORAGE := true
TW_MTP_DEVICE := /dev/usb_mtp_gadget
RECOVERY_SDCARD_ON_DATA := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
TW_HAS_DOWNLOAD_MODE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NEW_ION_HEAP := true
TW_TARGET_USES_QCOM_BSP := true
BOARD_RECOVERY_SWIPE := true
