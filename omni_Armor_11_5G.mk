#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from Armor_11_5G device
$(call inherit-product, device/ulefone/Armor_11_5G/device.mk)

# Inherit some common twrp stuff.
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
    PRODUCT_NAME=Armor_11_5G \
    PRIVATE_BUILD_DESC="full_k6873v1_64-user 11 RP1A.200720.011 p1k61v164bspP21 release-keys"

BUILD_FINGERPRINT := Ulefone/Armor_11_5G/Armor_11_5G:11/RP1A.200720.011/1646618057:user/release-keys
