#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
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

FORCE_32_BIT := true

# Inherit from msm8916-common
include device/cyanogen/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/gucci

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

# Filesystem
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 335544320
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5939100672
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

# GPS
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true

# Init
TARGET_LIBINIT_MSM8916_DEFINES_FILE := $(DEVICE_PATH)/init/init_gucci.cpp

# Kernel
BOARD_DTBTOOL_ARGS := -2
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_SOURCE := kernel/xiaomi/gucci
TARGET_KERNEL_CONFIG := gucci_defconfig
BOARD_KERNEL_CMDLINE += phy-msm-usb.floated_charger_enable=1
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# Lineage Hardware
JAVA_SOURCE_OVERLAYS := org.lineageos.hardware|$(DEVICE_PATH)/lineagehw|**/*.java

# Power
TARGET_HAS_NO_POWER_STATS := true

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
BOARD_NO_SECURE_DISCARD := true

# SELinux
BOARD_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy

# Shims
TARGET_LD_SHIM_LIBS += \
    /system/vendor/lib/libmmcamera2_imglib_modules.so|libshim_camera.so

# inherit from the proprietary version
include vendor/xiaomi/gucci/BoardConfigVendor.mk
