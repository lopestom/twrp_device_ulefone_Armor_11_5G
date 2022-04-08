#
# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from Armor_11_5G device
$(call inherit-product, device/ulefone/Armor_11_5G/device.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)


# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Armor_11_5G
PRODUCT_NAME := twrp_Armor_11_5G
PRODUCT_BRAND := Ulefone
PRODUCT_MODEL := Armor 11 5G
PRODUCT_MANUFACTURER := Ulefone
PRODUCT_RELEASE_NAME := Ulefone Armor 11 5G

PRODUCT_BOARD := k6873v1_64

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Armor_11_5G \
    PRODUCT_NAME=Armor_11_5G \
    PRIVATE_BUILD_DESC="full_k6873v1_64-user 11 RP1A.200720.011 mp1V8132 release-keys"

BUILD_FINGERPRINT := Ulefone/Armor_11_5G/Armor_11_5G:11/RP1A.200720.011/1626674585:user/release-keys
