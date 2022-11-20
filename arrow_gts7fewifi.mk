#
# Copyright (C) 2019-2022 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from gts7fewifi device
$(call inherit-product, device/samsung/gts7fewifi/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gts7fewifi
PRODUCT_NAME := lineage_gts7fewifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T733
PRODUCT_MANUFACTURER := samsung

PRODUCT_SYSTEM_NAME := gts7fewifixx

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=gts7fewifixx \
    PRIVATE_BUILD_DESC="gts7fewifixx-user 12 SP2A.220305.013 T733XXU1BVH4 release-keys"

BUILD_FINGERPRINT := "samsung/gts7fewifixx/gts7fewifi:12/SP2A.220305.013/T733XXU1BVH4:user/release-keys"
