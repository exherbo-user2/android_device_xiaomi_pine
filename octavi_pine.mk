#
# Copyright (C) 2021 The OctaviOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common OctaviOS stuff.
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)

# Inherit from pine device
$(call inherit-product, device/xiaomi/pine/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pine
PRODUCT_NAME := octavi_pine
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 7A
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/pine/pine:10/QKQ1.191014.001/V12.0.2.0.QCMMIXM:user/release-keys"

# OctaviOS - HW
YOUR_HW_PLATFORM := msm8996
PRODUCT_USES_QCOM_HARDWARE := true
PRODUCT_BOARD_PLATFORM := $(YOUR_HW_PLATFORM)
SRC_AUDIO_HAL_DIR := hardware/qcom-caf/$(YOUR_HW_PLATFORM)/audio
SRC_DISPLAY_HAL_DIR := hardware/qcom-caf/$(YOUR_HW_PLATFORM)/display
SRC_MEDIA_HAL_DIR := hardware/qcom-caf/$(YOUR_HW_PLATFORM)/media
PRODUCT_SOONG_NAMESPACES += hardware/qcom-caf/$(YOUR_HW_PLATFORM)

# OctaviOS - SW
TARGET_FACE_UNLOCK_SUPPORTED := true
