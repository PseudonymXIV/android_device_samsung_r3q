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

# Inherit from r3q device
$(call inherit-product, device/samsung/r3q/device.mk)

PRODUCT_DEVICE := r3q
PRODUCT_NAME := omni_r3q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A908B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r3qxx-user 11 RP1A.200720.012 A908BXXU5EVK3 release-keys"

BUILD_FINGERPRINT := samsung/r3qxx/r3q:11/RP1A.200720.012/A908BXXU5EVK3:user/release-keys
