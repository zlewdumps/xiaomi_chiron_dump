#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from chiron device
$(call inherit-product, device/xiaomi/chiron/device.mk)

PRODUCT_DEVICE := chiron
PRODUCT_NAME := lineage_chiron
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX 2
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="chiron-user 9 PKQ1.190118.001 V12.0.1.0.PDEMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/chiron/chiron:9/PKQ1.190118.001/V12.0.1.0.PDEMIXM:user/release-keys
