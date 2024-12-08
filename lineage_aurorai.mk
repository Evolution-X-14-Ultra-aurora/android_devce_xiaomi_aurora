#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from aurora device.
$(call inherit-product, device/xiaomi/aurora/device.mk)

## Device identifier
PRODUCT_DEVICE := aurora
PRODUCT_NAME := lineage_aurora
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 24031PN0DC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "aurora_global-user 14 UKQ1.231003.002 V816.0.11.3.UNACNXM release-keys")

BUILD_FINGERPRINT := Xiaomi/aurora_global/aurora:14/UKQ1.231003.002/V816.0.11.3.UNACNXM:user/release-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
