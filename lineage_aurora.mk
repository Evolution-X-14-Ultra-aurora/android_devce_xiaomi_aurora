#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from aurora device.
$(call inherit-product, device/xiaomi/aurora/device.mk)

## Device identifier
PRODUCT_DEVICE := aurora
PRODUCT_NAME := lineage_aurora
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 24030PN60G
PRODUCT_MANUFACTURER := xiaomi

# Evolution-X stuff
EVO_BUILD_TYPE := special
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Xiaomi camera stuff
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_USES_MIUI_CAMERA := true
TARGET_INCLUDES_MIUI_CAMERA := true
TARGET_CAMERA_OVERRIDE_FORMAT_FROM_RESERVED := true
TARGET_GRALLOC_HANDLE_HAS_UBWCP_FORMAT := true

# GMS
WITH_GMS := true
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "aurora_eea-user 15 AQ3A.240627.003 OS2.0.2.0.VNAEUXM release-keys")

BUILD_FINGERPRINT := Xiaomi/aurora_eea:15/AQ3A.240627.003/OS2.0.2.0.VNAEUXM:user/release-keys

