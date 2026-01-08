#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/tecno/LH7n/device.mk)

# Inherit some common euclid stuff.
$(call inherit-product, vendor/euclid/config/common_full_phone.mk)

BOARD_VENDOR := TECNO
PRODUCT_NAME := euclid_LH7n
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

EUCLID_MAINTAINER := CRAZY_JOKER67

# Disable/enable blur support, false by default
TARGET_ENABLE_BLUR := true


# Gapps
EUCLID_GAPPS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false  
TARGET_BUILD_BCR := true (For Basic Call Recorder)
TARGET_BUILD_DOTGALLERY := false (For Including DotGallery)

# misc
TARGET_SUPPORTS_TOUCHGESTURES := true
EUCLID_DEVICE := TECNO_POVA_5
EUCLID_PROCESSOR := Mediatek_G99
EUCLID_BUILD_TYPE := UNOFFICIAL
