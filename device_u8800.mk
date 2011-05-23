$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

DEVICE_PACKAGE_OVERLAYS := device/huawei/u8800/overlay




PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := huawei_u8800
PRODUCT_DEVICE := u8800
PRODUCT_MODEL := huawei u8800
PRODUCT_MANUFACTURER := huawei
PRODUCT_LOCALES := zh_CN zh_TW en_US

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

#PRODUCT_COPY_FILES += \
#    device/huawei/u8800/gps.conf:/system/etc/gps.conf

PRODUCT_COPY_FILES += \
    device/huawei/u8800/init.u8800.rc:root/init.u8800.rc \
    device/huawei/u8800/ueventd.u8800.rc:root/ueventd.u8800.rc

$(call inherit-product-if-exists, vendor/huawei/u8800/u8800-vendor.mk)



PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:/system/etc/permissions/android.hardware.telephony.gsm.xml


PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    Gallery3d \
    SpareParts \
    Term \
    librs_jni \
    gralloc.msm7x30 \
    overlay.default \
    gps.u8800 \
    sensors.u8800 \
    libOmxCore \
    libOmxVenc \
    libOmxVdec

# Firmware
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/etc/firmware/vidc_720p_command_control.fw:/system/etc/firmware/vidc_720p_command_control.fw \
    device/huawei/u8800/system/etc/firmware/vidc_720p_h263_dec_mc.fw:/system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/huawei/u8800/system/etc/firmware/vidc_720p_h264_dec_mc.fw:/system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/huawei/u8800/system/etc/firmware/vidc_720p_h264_enc_mc.fw:/system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/huawei/u8800/system/etc/firmware/vidc_720p_mp4_dec_mc.fw:/system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/huawei/u8800/system/etc/firmware/vidc_720p_mp4_enc_mc.fw:/system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/huawei/u8800/system/etc/firmware/vidc_720p_vc1_dec_mc.fw:/system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/huawei/u8800/system/etc/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    device/huawei/u8800/system/etc/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw

# Fireware wlan
PRODUCT_COPY_FILES += \
device/huawei/u8800/system/etc/firmware/wlan/qcom_fw.bin:/system/etc/firmware/wlan/qcom_fw.bin \
device/huawei/u8800/system/etc/firmware/wlan/qcom_wapi_fw.bin:/system/etc/firmware/wlan/qcom_wapi_fw.bin \
device/huawei/u8800/system/etc/firmware/wlan/qcom_wlan_nv.bin:/system/etc/firmware/wlan/qcom_wlan_nv.bin \
device/huawei/u8800/system/etc/firmware/wlan/cfg.dat:/system/etc/firmware/wlan/cfg.dat \
device/huawei/u8800/system/etc/firmware/wlan/hostapd_default.conf:/system/etc/firmware/wlan/hostapd_default.conf \
device/huawei/u8800/system/etc/firmware/wlan/qcom_cfg.ini:/system/etc/firmware/wlan/qcom_cfg.ini \
device/huawei/u8800/system/etc/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \

# egl
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/egl/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
    device/huawei/u8800/system/lib/egl/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
    device/huawei/u8800/system/lib/egl/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
    device/huawei/u8800/system/lib/egl/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \
    device/huawei/u8800/system/lib/libgsl.so:/system/lib/libgsl.so \


# etc
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/etc/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/huawei/u8800/system/etc/init.qcom.bt.sh:/system/etc/init.qcom.fm.sh \
    device/huawei/u8800/system/etc/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/huawei/u8800/system/etc/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh \
    device/huawei/u8800/system/etc/media_profiles.xml:/system/etc/media_profiles.xml \
    device/huawei/u8800/system/etc/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh\
    device/huawei/u8800/system/etc/vold.fstab:/system/etc/vold.fstab

# OMX
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/libOmxEvrcEnc.so:/system/lib/libOmxEvrcEnc.so \
    device/huawei/u8800/system/lib/libOmxAacDec.so:/system/lib/libOmxAacDec.so \
    device/huawei/u8800/system/lib/libOmxQcelpDec.so:/system/lib/libOmxQcelpDec.so \
    device/huawei/u8800/system/lib/libOmxAmrEnc.so:/system/lib/libOmxAmrEnc.so \
    device/huawei/u8800/system/lib/libOmxAdpcmDec.so:/system/lib/libOmxAdpcmDec.so \
    device/huawei/u8800/system/lib/libOmxEvrcDec.so:/system/lib/libOmxEvrcDec.so \
    device/huawei/u8800/system/lib/libOmxAmrDec.so:/system/lib/libOmxAmrDec.so \
    device/huawei/u8800/system/lib/libOmxAmrwbDec.so:/system/lib/libOmxAmrwbDec.so \
    device/huawei/u8800/system/lib/libOmxWmaDec.so:/system/lib/libOmxWmaDec.so \
    device/huawei/u8800/system/lib/libOmxQcelp13Enc.so:/system/lib/libOmxQcelp13Enc.so \
    device/huawei/u8800/system/lib/libOmxMp3Dec.so:/system/lib/libOmxMp3Dec.so \
    device/huawei/u8800/system/lib/libOmxAmrRtpDec.so:/system/lib/libOmxAmrRtpDec.so \
    device/huawei/u8800/system/lib/libOmxAacEnc.so:/system/lib/libOmxAacEnc.so \
    device/huawei/u8800/system/lib/libmm-adspsvc.so:/system/lib/libmm-adspsvc.so \
    device/huawei/u8800/system/lib/libomx_aacdec_sharedlibrary.so:/system/lib/libomx_aacdec_sharedlibrary.so \
    device/huawei/u8800/system/lib/libomx_amrdec_sharedlibrary.so:/system/lib/libomx_amrdec_sharedlibrary.so \
    device/huawei/u8800/system/lib/libomx_amrenc_sharedlibrary.so:/system/lib/libomx_amrenc_sharedlibrary.so \
    device/huawei/u8800/system/lib/libomx_avcdec_sharedlibrary.so:/system/lib/libomx_avcdec_sharedlibrary.so \
    device/huawei/u8800/system/lib/libomx_m4vdec_sharedlibrary.so:/system/lib/libomx_m4vdec_sharedlibrary.so \
    device/huawei/u8800/system/lib/libomx_mp3dec_sharedlibrary.so:/system/lib/libomx_mp3dec_sharedlibrary.so \
    device/huawei/u8800/system/lib/libomx_sharedlibrary.so:/system/lib/libomx_sharedlibrary.so

# opencore
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/libopencore_author.so:/system/lib/libopencore_author.so \
    device/huawei/u8800/system/lib/libopencore_common.so:/system/lib/libopencore_common.so \
    device/huawei/u8800/system/lib/libopencore_downloadreg.so:/system/lib/libopencore_downloadreg.so \
    device/huawei/u8800/system/lib/libopencore_download.so:/system/lib/libopencore_download.so \
    device/huawei/u8800/system/lib/libopencorehw.so:/system/lib/libopencorehw.so \
    device/huawei/u8800/system/lib/libopencore_mp4localreg.so:/system/lib/libopencore_mp4localreg.so \
    device/huawei/u8800/system/lib/libopencore_mp4local.so:/system/lib/libopencore_mp4local.so \
    device/huawei/u8800/system/lib/libopencore_net_support.so:/system/lib/libopencore_net_support.so \
    device/huawei/u8800/system/lib/libopencore_player.so:/system/lib/libopencore_player.so \
    device/huawei/u8800/system/lib/libopencore_rtspreg.so:/system/lib/libopencore_rtspreg.so \
    device/huawei/u8800/system/lib/libopencore_rtsp.so:/system/lib/libopencore_rtsp.so \
    device/huawei/u8800/system/lib/libOpenVG.so:/system/lib/libOpenVG.so \

# bin MM
PRODUCT_COPY_FILES += \
device/huawei/u8800/system/bin/mm-abl-test:/system/bin/mm-abl-test \
device/huawei/u8800/system/bin/mm-adec-omxaac-test:/system/bin/mm-adec-omxaac-test \
device/huawei/u8800/system/bin/mm-adec-omxadpcm-test:/system/bin/mm-adec-omxadpcm-test \
device/huawei/u8800/system/bin/mm-adec-omxamr-test:/system/bin/mm-adec-omxamr-test \
device/huawei/u8800/system/bin/mm-adec-omxamrwb-test:/system/bin/mm-adec-omxamrwb-test \
device/huawei/u8800/system/bin/mm-adec-omxevrc-test:/system/bin/mm-adec-omxevrc-test \
device/huawei/u8800/system/bin/mm-adec-omxmp3-test:/system/bin/mm-adec-omxmp3-test \
device/huawei/u8800/system/bin/mm-adec-omxvam-test:/system/bin/mm-adec-omxvam-test \
device/huawei/u8800/system/bin/mm-adec-omxwma-test:/system/bin/mm-adec-omxwma-test \
device/huawei/u8800/system/bin/mm-adspsvc-test:/system/bin/mm-adspsvc-test \
device/huawei/u8800/system/bin/mm-aenc-omxaac-test:/system/bin/mm-aenc-omxaac-test \
device/huawei/u8800/system/bin/mm-aenc-omxamr-test:/system/bin/mm-aenc-omxamr-test \
device/huawei/u8800/system/bin/mm-aenc-omxevrc-test:/system/bin/mm-aenc-omxevrc-test \
device/huawei/u8800/system/bin/mm-aenc-omxqcelp13-test:/system/bin/mm-aenc-omxqcelp13-test \
device/huawei/u8800/system/bin/mm-audio-alsa-test:/system/bin/mm-audio-alsa-test \
device/huawei/u8800/system/bin/mm-audio-ctrl-test:/system/bin/mm-audio-ctrl-test \
device/huawei/u8800/system/bin/mm-audio-native-test:/system/bin/mm-audio-native-test \
device/huawei/u8800/system/bin/mm-audio-voem_if-test:/system/bin/mm-audio-voem_if-test \
device/huawei/u8800/system/bin/mm-jpeg-dec-test:/system/bin/mm-jpeg-dec-test \
device/huawei/u8800/system/bin/mm-jpeg-enc-test:/system/bin/mm-jpeg-enc-test \
device/huawei/u8800/system/bin/mm-omx-devmgr:/system/bin/mm-omx-devmgr \
device/huawei/u8800/system/bin/mm-qcamera-test:/system/bin/mm-qcamera-test \
device/huawei/u8800/system/bin/mm-qcamera-testsuite-client:/system/bin/mm-qcamera-testsuite-client \
device/huawei/u8800/system/bin/mm-venc-omx-test:/system/bin/mm-venc-omx-test \

#ril
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/libril-qc-1.so:/system/lib/libril-qc-1.so \
    device/huawei/u8800/system/lib/libreference-ril.so:/system/lib/libreference-ril.so \
    device/huawei/u8800/system/lib/libril-qcril-hook-oem.so:/system/lib/libril-qcril-hook-oem.so \
    device/huawei/u8800/system/lib/libdiag.so:/system/lib/libdiag.so \
    device/huawei/u8800/system/lib/liboncrpc.so:/system/lib/liboncrpc.so \
    device/huawei/u8800/system/lib/libqmi.so:/system/lib/libqmi.so \
    device/huawei/u8800/system/lib/libdsm.so:/system/lib/libdsm.so \
    device/huawei/u8800/system/lib/libqueue.so:/system/lib/libqueue.so \
    device/huawei/u8800/system/lib/libdll.so:/system/lib/libdll.so \
    device/huawei/u8800/system/lib/libcm.so:/system/lib/libcm.so \
    device/huawei/u8800/system/lib/libmmgsdilib.so:/system/lib/libmmgsdilib.so \
    device/huawei/u8800/system/lib/libgsdi_exp.so:/system/lib/libgsdi_exp.so \
    device/huawei/u8800/system/lib/libgstk_exp.so:/system/lib/libgstk_exp.so \
    device/huawei/u8800/system/lib/libwms.so:/system/lib/libwms.so \
    device/huawei/u8800/system/lib/libnv.so:/system/lib/libnv.so \
    device/huawei/u8800/system/lib/libwmsts.so:/system/lib/libwmsts.so \
    device/huawei/u8800/system/lib/libpbmlib.so:/system/lib/libpbmlib.so \
    device/huawei/u8800/system/lib/libdss.so:/system/lib/libdss.so \
    device/huawei/u8800/system/lib/libauth.so:/system/lib/libauth.so

#ril 2
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/libril.so:/system/lib/libril.so \
    device/huawei/u8800/system/bin/rild:/system/bin/rild \
    device/huawei/u8800/system/lib/libgemini.so:/system/lib/libgemini.so \
    device/huawei/u8800/system/lib/libicudata.so:/system/lib/libicudata.so \
    device/huawei/u8800/system/lib/libhwrpc.so:/system/lib/libhwrpc.so \

# security
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/etc/security/otacerts.zip:/system/etc/security/otacerts.zip \
    device/huawei/u8800/system/etc/security/cacerts.bks:/system/etc/security/cacerts.bks

# init bin
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/bin/qmuxd:/system/bin/qmuxd \
    device/huawei/u8800/system/bin/hci_qcomm_init:/system/bin/hci_qcomm_init \

# other bin
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/bin/compassd:/system/bin/compassd \
    device/huawei/u8800/system/bin/rmt_oeminfo:/system/bin/rmt_oeminfo \
    device/huawei/u8800/system/bin/rmt_storage:/system/bin/rmt_storage \
    device/huawei/u8800/system/bin/hw_diag_app:/system/bin/hw_diag_app \
    device/huawei/u8800/system/bin/oem_rpc_svc:/system/bin/oem_rpc_svc \
    device/huawei/u8800/system/bin/hwvefs:/system/bin/hwvefs \
    device/huawei/u8800/system/bin/load_oemlogo:/system/bin/load_oemlogo \
    device/huawei/u8800/system/bin/oeminfo_test:/system/bin/oeminfo_test \
    device/huawei/u8800/system/bin/kmsgcat:/system/bin/kmsgcat \


# bluetooth bin
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/bin/bluetoothd:/system/bin/bluetoothd \
    device/huawei/u8800/system/bin/btwlancoex:/system/bin/btwlancoex \
    device/huawei/u8800/system/bin/hciattach:/system/bin/hciattach \
    device/huawei/u8800/system/bin/port-bridge:/system/bin/port-bridge \

# Camera
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/liboemcamera.so:/system/lib/liboemcamera.so \
    device/huawei/u8800/system/lib/libcamera.so:/system/lib/libcamera.so \
    device/huawei/u8800/system/lib/libmmjpeg.so:/system/lib/libmmjpeg.so \
    device/huawei/u8800/system/lib/libmmipl.so:/system/lib/libmmipl.so \
    device/huawei/u8800/system/lib/libcamera.so:/obj/lib/libcamera.so \

# audio
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/libaudioalsa.so:/system/lib/libaudioalsa.so \
    device/huawei/u8800/system/lib/libaudioeq.so:/system/lib/libaudioeq.so \
    device/huawei/u8800/system/lib/libaudioalsa.so:/obj/lib/libaudioalsa.so \
#    device/huawei/u8800/system/lib/libaudio.so:/system/lib/libaudio.so \
#    device/huawei/u8800/system/lib/libaudio.so:/obj/lib/libaudio.so \

#system patch
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/app/RootExplorer.apk:/system/app/RootExplorer.apk \
    device/huawei/u8800/system/app/SystemInfoPro.apk:/system/app/SystemInfoPro.apk \

# sensors
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/hw/lights.msm7k.so:/system/lib/hw/lights.msm7k.so \
#    device/huawei/u8800/system/lib/hw/sensors.default.so:/system/lib/hw/sensors.default.so \

PRODUCT_PROPERTY_OVERRIDES := \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.build.baseband_version=129005 \
    ro.telephony.default_network=0 \
    ro.telephony.call_ring.multiple=false
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \


PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-1.so \
    rild.libargs=-d /dev/smd0 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    persist.sys.language=zh \
    persist.sys.country=CN \
    persist.sys.timezone=Asia/Shanghai

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.hwfeature_slavecamera=yes \
    ro.config.hwcameraset=63 \
    hw.secondary_mic=0 \
    ro.config.hw_addsettingsdbex=1 \
    ro.config.hw_gcf_mms=true \
    ro.config.wifi_chip_is_bcm=true \
    ro.config.hwft_PNN_function=true \
    persist.cust.tel.adapt=1 \
    persist.cust.tel.eons=1 \
    ro.config.hwfeature_gps_test=0 \
    ro.config.hwfeature_ecc=true \
    ro.config.lowbattery_shutdown=1 \
    ro.config.hwfeature_wakeupkey=1 \
    ro.config.endkeybehavior=true \
    ro.config.hw_menu_unlockscreen=false \
    ro.media.enc.lprof.duration=30 \
    ro.config.PicMaxSize=3mp \
    ro.config.hw_temperature_warn=true \
    ro.config.hw_clocksetting=0

# u8800 uses high-density artwork where available
PRODUCT_LOCALES += hdpi

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# This should not be needed but on-screen keyboard uses the wrong density without it.
PRODUCT_PROPERTY_OVERRIDES += \
    qemu.sf.lcd_density=240 


PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enable_bypass=1 \
    ro.media.dec.jpeg.memcap=20000000 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.heapsize=32m \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.dexopt-data-only=1 \
    ro.opengles.version=131072  \
    ro.compcache.default=0


$(call inherit-product-if-exists, vendor/huawei/u8800/u8800-vendor.mk)

# common msm7x30 configs
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)
