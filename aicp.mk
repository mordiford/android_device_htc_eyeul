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

$(call inherit-product, device/htc/eyeul/device.mk)

# Enhanced NFC
# $(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aicp/configs/telephony.mk)

PRODUCT_NAME := aicp_eyeul
PRODUCT_DEVICE := eyeul
PRODUCT_BRAND := htc
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := Desire Eye

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="htc/htc_asia_tw/htc_eyetuhl:6.0.1/MMB29M/707673.1:user/release-keys" \
    PRIVATE_BUILD_DESC="4.11.709.1 CL707673 release-keys"

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
        DEVICE_MAINTAINERS="lindwurm"

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/aicp/configs/bootanimation.mk
