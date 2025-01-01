
#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8650-common
$(call inherit-product, device/xiaomi/sm8650-common/common.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/aurora/aurora-vendor.mk)

# Euicc
PRODUCT_PACKAGES += \
    XiaomiEuicc

# init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/init.aurora.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.aurora.rc

# Powershare
PRODUCT_PACKAGES += \
    vendor.lineage.powershare@1.0-service.default

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-evolution

PRODUCT_PACKAGES += \
    FrameworksResAurora \
    AuroraEuiccOverlay \
    SystemUIResAurora
