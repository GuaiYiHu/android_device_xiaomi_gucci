# Release name
PRODUCT_RELEASE_NAME := gucci

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/mk/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dt.img:dt.img \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/recovery.fstab:root/etc/recovery.fstab

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gucci
PRODUCT_NAME := mk_gucci
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := HM NOTE 1S
PRODUCT_MANUFACTURER := Xiaomi
