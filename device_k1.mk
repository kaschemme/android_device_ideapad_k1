#
# Copyright (C) 2012 The CyanogenMod Project
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
#
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# modified init.rc
PRODUCT_COPY_FILES += \
         $(LOCAL_PATH)/prebuilt/ueventd.rc:root/ueventd.rc \

# inherit proprietary files
$(call inherit-product-if-exists, vendor/lenovo/k1/k1-vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, build/target/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)

# Prebuilt kernel location
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Files needed for boot image
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.ventana.rc:root/init.ventana.rc \
    $(LOCAL_PATH)/prebuilt/init.goldfish.rc:root/init.goldfish.rc \
    $(LOCAL_PATH)/prebuilt/init.nv_dev_board.usb.rc:root/init.nv_dev_board.usb.rc \
    $(LOCAL_PATH)/prebuilt/init.logging.rc:root/init.logging.rc \
    $(LOCAL_PATH)/prebuilt/ueventd.ventana.rc:root/ueventd.ventana.rc \
    $(LOCAL_PATH)/prebuilt/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    $(LOCAL_PATH)/prebuilt/gsm::root/sbin/gsm 

#/system/bin
PRODUCT_COPY_FILES += \
    vendor/lenovo/k1/proprietary/bin/rild:system/bin/rild \
    $(LOCAL_PATH)/prebuilt/nvcpud:system/bin/nvcpud \
    $(LOCAL_PATH)/prebuilt/k1recovery:system/bin/k1recovery \
    $(LOCAL_PATH)/misc_command:system/bin/misc_command


#/system/etc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/prebuilt/audio_effects.conf:system/etc/audio_effeects.conf \
    $(LOCAL_PATH)/prebuilt/audio_policy.conf:system/etc/audio_policy.conf

#/system/etc - GPS configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/prebuilt/SuplRootCert:system/etc/SuplRootCert

# apns config file
PRODUCT_COPY_FILES += $(LOCAL_PATH)/apns/apns-conf.xml:system/etc/apns-conf.xml


#/system/etc/permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Final fix for 3G SOD
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/init.d/50em820w:system/etc/init.d/50em820w \
    $(LOCAL_PATH)/prebuilt/xbin/em820w_tool:system/xbin/em820w_tool

#/system/etc/ppp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/ppp/ip-down:system/etc/ppp/ip-down \
    $(LOCAL_PATH)/prebuilt/ppp/ip-up:system/etc/ppp/ip-up \
    $(LOCAL_PATH)/prebuilt/etc/init.d/02ppp.sh:system/etc/init.d/02ppp.sh \
    $(LOCAL_PATH)/prebuilt/etc/ppp/peers/3g:system/etc/ppp/peers/3g \
    $(LOCAL_PATH)/prebuilt/etc/ppp/peers/gprs:system/etc/ppp/peers/gprs \
    $(LOCAL_PATH)/prebuilt/etc/ppp/peers/pppd-ril.options:system/etc/ppp/peers/pppd-ril.options \
    $(LOCAL_PATH)/prebuilt/etc/ppp/chap-secrets:system/etc/ppp/chap-secrets \
    $(LOCAL_PATH)/prebuilt/etc/ppp/gprs-connect-chat:system/etc/ppp/gprs-connect-chat \
    $(LOCAL_PATH)/prebuilt/etc/ppp/ip-down-HUAWEI:system/etc/ppp/ip-down-HUAWEI \
    $(LOCAL_PATH)/prebuilt/etc/ppp/ip-up-HUAWEI:system/etc/ppp/ip-up-HUAWEI \
    $(LOCAL_PATH)/prebuilt/etc/ppp/options.huawei:system/etc/ppp/options.huawei \
    $(LOCAL_PATH)/prebuilt/etc/ppp/pap-secrets:system/etc/ppp/pap-secrets


#/system/lib
PRODUCT_COPY_FILES += \
    device/lenovo/libwvm.so:system/lib/libwvm.so

#/system/lib/modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/cifs.ko:system/lib/modules/cifs.ko \
    $(LOCAL_PATH)/prebuilt/md4.ko:system/lib/modules/md4.ko \
    $(LOCAL_PATH)/prebuilt/tun.ko:system/lib/modules/tun.ko \
    $(LOCAL_PATH)/prebuilt/bcm4329.ko:system/lib/modules/bcm4329.ko \
    $(LOCAL_PATH)/prebuilt/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko

# Boot Animation
PRODUCT_COPY_FILES += $(LOCAL_PATH)/prebuilt/bootanimation.zip:system/media/bootanimation.zip

#/system/usr/keylayout
PRODUCT_COPY_FILES += \
    vendor/lenovo/k1/proprietary/usr/keylayout/avago-pt.kl:system/usr/keylayout/avago-pt.kl

PRODUCT_PACKAGES := \
    camera.tegra \
    gps.tegra \
    lights.ventana \
    sensors.ventana \
    librs_jni \
    make_ext4fs \
    setup_fs \
    audio.a2dp.default \
    com.android.future.usb.accessory \
    whisperd \
    liba2dp \
    camera.tegra \
    libtinyalsa \
    libaudioutils \
    tinyplay \
    tinycap \
    tinymix \
    su \
    Superuser \
    Trebuchet \
    ToggleBar \
    libhuaweigeneric-ril

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.secure=0
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.sf.lcd_density=160 \
    persist.sys.usb.config=mtp \
    dalvik.vm.heapstartsize=5m \
    dalvik.vm.heapgrowthlimit=48m \
    dalvik.vm.heapsize=256m \
    net.bt.name=Android


PRODUCT_PROPERTY_OVERRIDES := \
    wifi.interface=wlan0 \
    mobiledata.interfaces=ppp0,wlan0 \
    wifi.supplicant_scan_interval=15 \

# DEVICE_PACKAGE_OVERLAYS := \ $(LOCAL_PATH)/overlay

PRODUCT_CHARACTERISTICS := tablet

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# media config xml file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml \

# goo.im stuff
$(call inherit-product, $(LOCAL_PATH)/goo.mk)

WIFI_BAND := 802_11_ABG
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)
