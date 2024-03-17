#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Infinix-X689F device
$(call inherit-product, device/infinix/Infinix-X689F/device.mk)

PRODUCT_DEVICE := Infinix-X689F
PRODUCT_NAME := twrp_Infinix-X689F
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X689F
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x689f_h6510-user 11 RP1A.200720.011 451352 release-keys"

BUILD_FINGERPRINT := Infinix/X689F-OP/Infinix-X689F:11/RP1A.200720.011/231012V857:user/release-keys
