#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=u8800

mkdir -p ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/bin/qmuxd -d ../../../vendor/huawei/$DEVICE/proprietary/
chmod 755 ../../../vendor/huawei/$DEVICE/proprietary/qmuxd
unzip -j -o ../../../${DEVICE}_update.zip system/bin/rild -d ../../../vendor/huawei/$DEVICE/proprietary/
chmod 755 ../../../vendor/huawei/$DEVICE/proprietary/rild
unzip -j -o ../../../${DEVICE}_update.zip system/bin/hci_qcomm_init -d ../../../vendor/huawei/$DEVICE/proprietary/
chmod 755 ../../../vendor/huawei/$DEVICE/proprietary/hci_qcomm_init

# EGL
unzip -j -o ../../../${DEVICE}_update.zip system/lib/egl/libEGL_adreno200.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/egl/libGLESv2_adreno200.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/egl/libGLESv1_CM_adreno200.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/egl/libq3dtools_adreno200.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libgsl.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/etc/firmware/yamato_pfp.fw -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/etc/firmware/yamato_pm4.fw -d ../../../vendor/huawei/$DEVICE/proprietary/

#Audio
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libaudio.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libaudioalsa.so -d ../../../vendor/huawei/$DEVICE/proprietary/

#RIL files
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libhwrpc.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libril-qc-1.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libril-qcril-hook-oem.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libdiag.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/liboncrpc.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libqmi.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libdsm.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libqueue.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libdll.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libcm.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libmmgsdilib.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libgsdi_exp.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libgstk_exp.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libwms.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libnv.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libwmsts.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libpbmlib.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libdss.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libauth.so -d ../../../vendor/huawei/$DEVICE/proprietary/

#lights
unzip -j -o ../../../${DEVICE}_update.zip system/lib/hw/lights.msm7k.so -d ../../../vendor/huawei/$DEVICE/proprietary/

#sensor
unzip -j -o ../../../${DEVICE}_update.zip system/lib/hw/sensors.default.so -d ../../../vendor/huawei/$DEVICE/proprietary/

#camera
unzip -j -o ../../../${DEVICE}_update.zip system/lib/liboemcamera.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libmmjpeg.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libmmipl.so -d ../../../vendor/huawei/$DEVICE/proprietary/

#OMX
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxEvrcEnc.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAacDec.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxQcelpDec.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAmrEnc.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAdpcmDec.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxEvrcDec.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAmrDec.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAmrwbDec.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxWmaDec.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxQcelp13Enc.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxMp3Dec.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAmrRtpDec.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAacEnc.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libmm-adspsvc.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_aacdec_sharedlibrary.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_amrdec_sharedlibrary.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_amrenc_sharedlibrary.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_avcdec_sharedlibrary.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_m4vdec_sharedlibrary.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_mp3dec_sharedlibrary.so -d ../../../vendor/huawei/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_sharedlibrary.so -d ../../../vendor/huawei/$DEVICE/proprietary/




(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/huawei/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/huawei/__DEVICE__/unzip-files.sh - DO NOT EDIT

PRODUCT_COPY_FILES += \\
    vendor/huawei/__DEVICE__/proprietary/libaudio.so:obj/lib/libaudio.so \\
    vendor/huawei/__DEVICE__/proprietary/libaudioalsa.so:obj/lib/libaudioalsa.so \\

# All the blobs necessary for blade
PRODUCT_COPY_FILES += \\
    vendor/huawei/__DEVICE__/proprietary/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/huawei/__DEVICE__/proprietary/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/huawei/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/huawei/__DEVICE__/proprietary/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/huawei/__DEVICE__/proprietary/libgsl.so:system/lib//libgsl.so \\
    vendor/huawei/__DEVICE__/proprietary/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/huawei/__DEVICE__/proprietary/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\
    vendor/huawei/__DEVICE__/proprietary/qmuxd:system/bin/qmuxd \\
    vendor/huawei/__DEVICE__/proprietary/libaudio.so:system/lib/libaudio.so \\
    vendor/huawei/__DEVICE__/proprietary/libaudioalsa.so:system/lib/libaudioalsa.so \\
    vendor/huawei/__DEVICE__/proprietary/libhwrpc.so:system/lib/libhwrpc.so \\
    vendor/huawei/__DEVICE__/proprietary/libril-qc-1.so:system/lib/libril-qc-1.so \\
    vendor/huawei/__DEVICE__/proprietary/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \\
    vendor/huawei/__DEVICE__/proprietary/libdiag.so:system/lib/libdiag.so \\
    vendor/huawei/__DEVICE__/proprietary/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/huawei/__DEVICE__/proprietary/libqmi.so:system/lib/libqmi.so \\
    vendor/huawei/__DEVICE__/proprietary/libdsm.so:system/lib/libdsm.so \\
    vendor/huawei/__DEVICE__/proprietary/libqueue.so:system/lib/libqueue.so \\
    vendor/huawei/__DEVICE__/proprietary/libdll.so:system/lib/libdll.so \\
    vendor/huawei/__DEVICE__/proprietary/libcm.so:system/lib/libcm.so \\
    vendor/huawei/__DEVICE__/proprietary/libmmgsdilib.so:system/lib/libmmgsdilib.so \\
    vendor/huawei/__DEVICE__/proprietary/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
    vendor/huawei/__DEVICE__/proprietary/libgstk_exp.so:system/lib/libgstk_exp.so \\
    vendor/huawei/__DEVICE__/proprietary/libwms.so:system/lib/libwms.so \\
    vendor/huawei/__DEVICE__/proprietary/libnv.so:system/lib/libnv.so \\
    vendor/huawei/__DEVICE__/proprietary/libwmsts.so:system/lib/libwmsts.so \\
    vendor/huawei/__DEVICE__/proprietary/libpbmlib.so:system/lib/libpbmlib.so \\
    vendor/huawei/__DEVICE__/proprietary/libdss.so:system/lib/libdss.so \\
    vendor/huawei/__DEVICE__/proprietary/libauth.so:system/lib/libauth.so \\
    vendor/huawei/__DEVICE__/proprietary/lights.msm7k.so:system/lib/hw/lights.msm7k.so \\
    vendor/huawei/__DEVICE__/proprietary/sensors.default.so:system/lib/hw/sensors.default.so \\
    vendor/huawei/__DEVICE__/proprietary/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/huawei/__DEVICE__/proprietary/liboemcamera.so:obj/lib/liboemcamera.so \\
    vendor/huawei/__DEVICE__/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/huawei/__DEVICE__/proprietary/libmmipl.so:system/lib/libmmipl.so \\
    vendor/huawei/__DEVICE__/proprietary/hci_qcomm_init:system/bin/hci_qcomm_init\\
    vendor/huawei/__DEVICE__/proprietary/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \\
    vendor/huawei/__DEVICE__/proprietary/libOmxAacDec.so:system/lib/libOmxAacDec.so \\
    vendor/huawei/__DEVICE__/proprietary/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \\
    vendor/huawei/__DEVICE__/proprietary/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \\
    vendor/huawei/__DEVICE__/proprietary/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \\
    vendor/huawei/__DEVICE__/proprietary/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \\
    vendor/huawei/__DEVICE__/proprietary/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \\
    vendor/huawei/__DEVICE__/proprietary/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \\
    vendor/huawei/__DEVICE__/proprietary/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \\
    vendor/huawei/__DEVICE__/proprietary/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \\
    vendor/huawei/__DEVICE__/proprietary/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \\
    vendor/huawei/__DEVICE__/proprietary/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \\
    vendor/huawei/__DEVICE__/proprietary/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \\
    vendor/huawei/__DEVICE__/proprietary/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/huawei/__DEVICE__/proprietary/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \\
    vendor/huawei/__DEVICE__/proprietary/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \\
    vendor/huawei/__DEVICE__/proprietary/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \\
    vendor/huawei/__DEVICE__/proprietary/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \\
    vendor/huawei/__DEVICE__/proprietary/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \\
    vendor/huawei/__DEVICE__/proprietary/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \\
    vendor/huawei/__DEVICE__/proprietary/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so


EOF

./setup-makefiles.sh
