#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from C21 device
$(call inherit-product, device/realme/RMX3201/device.mk)

PRODUCT_DEVICE := RMX3201
PRODUCT_NAME := omni_RMX3201
PRODUCT_BRAND := Realme
PRODUCT_MODEL := RMX3201
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fox_C21-eng 11.0.0 RQ1A.210205.004 eng.yu.20220518.034530 test-keys"

BUILD_FINGERPRINT := Realme/fox_C21/C21:11.0.0/RQ1A.210205.004/yu05180341:eng/test-keys
