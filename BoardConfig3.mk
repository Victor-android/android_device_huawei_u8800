# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# config.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH:= $(call my-dir)

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from common msm7x30
-include device/htc/msm7x30-common/BoardConfigCommon.mk


# inherit from the proprietary version
-include vendor/huawei/u8800/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := u8800
USE_CAMERA_STUB := true


BOARD_OVERLAY_MINIFICATION_LIMIT := 2

# kernel
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei g_android.product_id=0x1038 g_android.serial_number=U8800-Geno
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGE_SIZE := 4096


BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8800


BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04200000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x05300000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/huawei/u8800/kernel


# Filesystem
BOARD_DATA_DEVICE := /dev/block/mmcblk0p13
BOARD_DATA_FILESYSTEM := ext3
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p6
BOARD_CACHE_FILESYSTEM := ext3
#BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
#BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1p2
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk0p1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_SYSTEM_FILESYSTEM := ext3
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p12
#BOARD_HAS_NO_MISC_PARTITION := true


# recovery
#BOARD_USES_RECOVERY_CHARGEMODE := true
BOARD_USES_MMCUTILS := true
BOARD_USES_RECOVERY_CHINESE := true
ifeq ($(BOARD_USES_RECOVERY_CHINESE),true)
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/huawei/u8800/recovery/recovery_ui_cn.c
else
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/huawei/u8800/recovery/recovery_ui_en.c
endif



