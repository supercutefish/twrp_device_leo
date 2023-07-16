# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from leo device
$(call inherit-product, device/xiaomi/leo/device.mk)

PRODUCT_DEVICE := leo
PRODUCT_NAME := omni_leo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note Pro
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mk_leo-userdebug 7.1.2 N2G47O 9d000636ed test-keys"

BUILD_FINGERPRINT := Xiaomi/mk_leo/leo:7.1.2/N2G47O/9d000636ed:userdebug/test-keys
