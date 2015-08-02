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

$(call inherit-product, device/xiaomi/hm2014811/full_hm2014811.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_hm2014811
BOARD_VENDOR := xiaomi
PRODUCT_DEVICE := hm2014811

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := 2014811
TARGET_VENDOR_DEVICE_NAME := HM2014811
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=HM2014811 \
    PRODUCT_NAME=2014811 \
    BUILD_FINGERPRINT=Xiaomi/2014811/HM2014811:4.4.4/KTU84P/V6.6.6.0.KHJMICF:user/release-keys \
    PRIVATE_BUILD_DESC="2014811-user 4.4.4 KTU84P HM2014811 release-keys"
