# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, device/xiaomi/gucci/full_gucci.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Assert
TARGET_OTA_ASSERT_DEVICE := gucci

PRODUCT_NAME := cm_gucci
BOARD_VENDOR := xiaomi
PRODUCT_DEVICE := gucci

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := gucci
TARGET_VENDOR_DEVICE_NAME := gucci
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=gucci \
    PRODUCT_NAME=gucci \
    BUILD_FINGERPRINT=Xiaomi/gucci/gucci:4.4.4/KTU84P/7.10.12:user/release-keys \
    PRIVATE_BUILD_DESC="gucci-user 4.4.4 KTU84P 7.10.12 release-keys"
