# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from udon device
$(call inherit-product, device/oneplus/udon/device.mk)

# Inherit some common LineageOS / Infinity stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1240
INFINITY_MAINTAINER := SUJΛL
INFINITY_BUILD_TYPE := UNOFFICIAL
TARGET_SUPPORTS_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_NAME := infinity_udon
PRODUCT_DEVICE := udon
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2487

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 16 BP2A.250605.015 1788248988419 release-keys" \
    BuildFingerprint=OnePlus/CPH2487/OP5961L1:16/BP2A.250605.015/T.R4T3.1ec16aa_6c695f_698c49:user/release-keys \
    DeviceName=OP5961L1 \
    DeviceProduct=CPH2487 \
    SystemDevice=OP5961L1 \
    SystemName=CPH2487
