#
# Copyright (C) 2015 The CyanogenMod Project
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

$(call inherit-product-if-exists, vendor/htc/eyeul/eyeul-vendor.mk)

# Inherit from msm8974-common
$(call inherit-product, device/htc/msm8974-common/msm8974-common.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/htc/eyeul/overlay

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.maxopen=3

PRODUCT_PACKAGES += \
    camera.msm8974 \
    Snap

# LCD Density
#PRODUCT_PROPERTY_OVERRIDES += \
#	ro.sf.lcd_density=400
	
# Filesystem management tools
PRODUCT_PACKAGES += \
    resize2fs_static

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/vendor/lib/libqti-perfd-client.so

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/com.htc.software.market.xml:system/etc/permissions/com.htc.software.market.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/device-keypad.kl:system/usr/keylayout/device-keypad.kl

# Init
PRODUCT_PACKAGES += \
    init.target.rc

# NFC
PRODUCT_PACKAGES += \
    NfcNci \
    nfc_nci.pn54x.default

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/configs/res_ctrl.conf:system/etc/res_ctrl.conf

# SSL Compat
PRODUCT_PACKAGES += \
    libboringssl-compat