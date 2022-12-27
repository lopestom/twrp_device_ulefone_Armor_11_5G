#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from Armor_11_5G device
$(call inherit-product, device/ulefone/Armor_11_5G/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)


# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Armor_11_5G
PRODUCT_NAME := omni_Armor_11_5G
PRODUCT_BRAND := Ulefone
PRODUCT_MODEL := Armor 11 5G
PRODUCT_MANUFACTURER := Ulefone
PRODUCT_RELEASE_NAME := Ulefone Armor 11 5G

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Armor_11_5G \
    PRODUCT_NAME=Armor_11_5G_EEA \
    PRIVATE_BUILD_DESC="full_k6873v1_64-user 10 QP1A.190711.020 mp2k6885v164P10 release-keys"

BUILD_FINGERPRINT := Ulefone/Armor_11_5G_EEA/Armor_11_5G:10/QP1A.190711.020/1608088743:user/release-keys
