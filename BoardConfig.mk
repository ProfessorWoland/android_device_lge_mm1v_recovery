#
# Copyright (C) 2015-2016 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/lge/mm1v

# Platform
TARGET_BOARD_PLATFORM := mt6735
#TARGET_BOARD_PLATFORM_GPU := mali-T720

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MM1V
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

# Partitions
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_SYSTEMIMAGE_PARTITION_SIZE:=2879565824
BOARD_CACHEIMAGE_PARTITION_SIZE:=318767104
BOARD_USERDATAIMAGE_PARTITION_SIZE:=3807903744

# KERNEL
BOARD_KERNEL_CMDLINE = bootopt=64S3,32N2,32N2
BOARD_KERNEL_BASE = 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)

# Power questionable???
TARGET_POWERHAL_VARIANT := MTK

# Mediatek support
BOARD_USES_MTK_HARDWARE := true

# Recovery
#BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true
TARGET_PREBUILT_KERNEL := device/lge/mm1v/recovery/kernel

# TWRP
TW_THEME := portrait_hdpi
#TW_SCREEN_BLANK_ON_BOOT := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_INCLUDE_CRYPTO := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/twrp.fstab
