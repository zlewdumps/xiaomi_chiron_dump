#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# API levels
PRODUCT_SHIPPING_API_LEVEL := 25

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Rootdir
PRODUCT_PACKAGES += \
    capture.sh \
    init.class_late.sh \
    init.class_main.sh \
    init.crda.sh \
    init.leds.sh \
    init.mdm.sh \
    init.panel_info.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.crashdata.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.can.sh \
    init.qti.fm.sh \
    init.qti.ims.sh \
    init.qti.manifest_sku.sh \
    init.qti.qseecomd.sh \
    playback.sh \
    qca6234-service.sh \
    setup_frontmic2headphone.sh \
    setup_headsetmic2headphone.sh \
    setup_mainmic2headphone.sh \
    setup_topmic2headphone.sh \
    teardown_loopback.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.msm.usb.configfs.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    init.batteryd.rc \
    init.environ.rc \
    init.miui.cust.rc \
    init.miui.google_revenue_share.rc \
    init.miui.google_revenue_share_v2.rc \
    init.miui.nativedebug.rc \
    init.miui.rc \
    init.rc \
    init.recovery.hardware.rc \
    init.recovery.qcom.rc \
    init.usb.configfs.rc \
    init.usb.rc \
    init.zygote32.rc \
    init.zygote64_32.rc \
    ueventd.rc \

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/chiron/chiron-vendor.mk)
