#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/cubot/X30

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Platform
TARGET_BOARD_PLATFORM := mt6771

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6771
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Assert
TARGET_OTA_ASSERT_DEVICE := X30

# File systems and partitions
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432 
TARGET_COPY_OUT_VENDOR := vendor
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_TAGS_OFFSET := 0x13f88000
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_HASH_TYPE := sha1
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_RAMDISK_OFFSET := 0x14f88000
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE) --board ""

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
#PLATFORM_VERSION := 10

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FBE := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
BOARD_USES_METADATA_PARTITION := true


# TWRP Configuration
TARGET_RECOVERY_FSTAB := device/cubot/X30/twrp.fstab
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TW_MAX_BRIGHTNESS := 255
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_NO_USB_STORAGE := false
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_MTP_DEVICE := /dev/mtp_usb
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_USE_TOOLBOX := true
TW_EXTRA_LANGUAGES := false
TW_DEFAULT_LANGUAGE := ru
TW_NO_SCREEN_BLANK := true
TW_NO_BATT_PERCENT := false
TW_EXCLUDE_TWRPAPP := true
DEVICE_RESOLUTION := 1080x2310
RECOVERY_SDCARD_ON_DATA := true
TARGET_DISABLE_TRIPLE_BUFFERING := false

# Debug
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

TW_DEVICE_VERSION := by LobsterOK(4pda)

#All commented
#BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
#BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
#TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_KERNEL_SOURCE := kernel/cubot/X30
#TARGET_KERNEL_CONFIG := X30_defconfig

#BOARD_USES_METADATA_PARTITION := true
