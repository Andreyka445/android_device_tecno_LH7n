#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/lineage/LH7n/device.mk)

# Inherit some common mica stuff.
$(call inherit-product, vendor/mica/config/common_full_phone.mk)

BOARD_VENDOR := TECNO
PRODUCT_NAME := lineage_LH7n
PRODUCT_DEVICE := LH7n
PRODUCT_MANUFACTURER := TECNO
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO LH7n

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=LH7n \
    BuildFingerprint=TECNO/LH7n-GL/TECNO-LH7n:14/UP1A.231005.007/250416V781:user/release-keys

# Time
LINEAGE_VERSION_APPEND_TIME_OF_DAY := true

# Mistos flags
MISTOS_MAINTAINER := CRAZY_JOKER67
WITH_GMS := true
TARGET_USES_PICO_GAPPS := true
TARGET_ENABLE_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_HEIGHT := 2460
TARGET_SCREEN_WIDTH := 1080
MIST_BUILD_TYPE := UNOFFICIAL
PRODUCT_NO_CAMERA := false
TARGET_DISABLE_EPPE := true
