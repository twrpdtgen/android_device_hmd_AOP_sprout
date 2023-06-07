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

# Inherit from AOP_sprout device
$(call inherit-product, device/hmd/AOP_sprout/device.mk)

PRODUCT_DEVICE := AOP_sprout
PRODUCT_NAME := omni_AOP_sprout
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 9
PRODUCT_MANUFACTURER := hmd

PRODUCT_GMS_CLIENTID_BASE := android-hmd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Beholder_00WW-user 10 QKQ1.190725.002 00WW_5_13B release-keys"

BUILD_FINGERPRINT := Nokia/Beholder_00WW/AOP_sprout:10/QKQ1.190725.002/00WW_5_13B:user/release-keys
