# Copyright (C) 2008 The Android Open Source Project
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

LOCAL_PATH := $(my-dir)
ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),u8800)
    subdir_makefiles := \
        $(LOCAL_PATH)/libaudio/Android.mk \
        $(LOCAL_PATH)/liblights/Android.mk \
        $(LOCAL_PATH)/libgralloc/Android.mk \
        $(LOCAL_PATH)/libril/Android.mk \
        $(LOCAL_PATH)/libcamera/Android.mk \
        $(LOCAL_PATH)/X5settings/Android.mk \
        $(LOCAL_PATH)/recovery/rmt_storage/Android.mk \
        $(LOCAL_PATH)/recovery/offmode/Android.mk \
        $(LOCAL_PATH)/load_libra/Android.mk \

    include $(subdir_makefiles)
endif
