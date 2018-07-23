# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/gucci
TARGET_KERNEL_CONFIG := gucci_defconfig
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000

BOARD_KERNEL_CMDLINE += \
    sched_enable_hmp=1 \
    phy-msm-usb.floated_charger_enable=1

BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk
