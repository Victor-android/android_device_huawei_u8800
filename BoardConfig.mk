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
USE_CAMERA_STUB := false

BOARD_NO_RGBX_8888 := true
BOARD_OVERLAY_MINIFICATION_LIMIT := 2
BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
TARGET_NO_BOOTLOADER := true

TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/u8800/kernel

TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOOTLOADER_BOARD_NAME := u8800
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8

# OpenGL drivers config file path
BOARD_EGL_CFG := device/huawei/u8800/egl.cfg

# No fallback font by default (space savings)
#NO_FALLBACK_FONT:=true

BOARD_GPS_LIBRARIES := libloc_api

BOARD_USES_GENERIC_AUDIO := false

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USE_QCOM_PMEM := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8800
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

#TARGET_USES_OLD_LIBSENSORS_HAL:=true
#TARGET_SENSORS_NO_OPEN_CHECK:=true

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=u8800
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

TARGET_PROVIDES_LIBRIL := true
TARGET_PROVIDES_LIBAUDIO := true

TARGET_CUSTOM_RELEASETOOL := device/huawei/u8800/tools/releasetools

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 2
BOARD_VOLD_MAX_PARTITIONS := 20

# TARGET_USERIMAGES_USE_EXT4 := true
# TARGET_USERIMAGES_USE_EXT3 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04200000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x05300000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0Fc60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_CUSTOM_GRAPHICS:= ../../../device/huawei/u8800/graphics.c
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk0p14
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2

BOARD_HAS_NO_MISC_PARTITION := true


# Wifi related defines--by stockwell
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WLAN_DEVICE := libra
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/librasdioif.ko"
WIFI_DRIVER_MODULE_NAME := "libra"
WIFI_EXT_MODULE_NAME := "librasdioif"
WIFI_FIRMWARE_LOADER := load_libra
WIFI_CUSTOM_LOADER          := load_wifi

# USB Tethering
BOARD_CUSTOM_USB_CONTROLLER := ../../device/huawei/u8800/UsbController.cpp

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_MMCUTILS := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/u8800/recovery_kernel
# add for chinese recovery by geno
BOARD_USES_RECOVERY_CHINESE := true
ifeq ($(BOARD_USES_RECOVERY_CHINESE),true)
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/huawei/u8800/recovery/recovery_ui_cn.c
else
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/huawei/u8800/recovery/recovery_ui_en.c
endif
BOARD_HAS_JANKY_BACKBUFFER := true
BOARD_RECOVERY_CHARGEMODE := true
BOARD_RECOVERY_RMT_STORAGE := true
TARGET_RECOVERY_INITRC := device/huawei/u8800/recovery.rc


