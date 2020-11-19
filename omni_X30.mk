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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from X30 device
$(call inherit-product, device/cubot/X30/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X30
PRODUCT_NAME := omni_X30
PRODUCT_BRAND := CUBOT
PRODUCT_MODEL := X30
PRODUCT_MANUFACTURER := CUBOT
PRODUCT_RELEASE_NAME := CubotX30

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=X30 \
    PRODUCT_NAME=X30_EEA \
    PRIVATE_BUILD_DESC="full_v965-user 10 QP1A.190711.020 20200603 release-keys"

BUILD_FINGERPRINT := CUBOT/X30_EEA/X30:10/QP1A.190711.020/20200603:user/release-keys
PLATFORM_SECURITY_PATCH := 2020-06-05

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.adb.secure=0 \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1
