PRODUCT_COPY_FILES += device/htc/eyeul/recovery/twrp.fstab:recovery/root/etc/twrp.fstab

RECOVERY_VARIANT := twrp

TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TARGET_RECOVERY_FSTAB := device/htc/eyeul/recovery/twrp.fstab
TW_IGNORE_MAJOR_AXIS_0 := true
TW_MAX_BRIGHTNESS := 255
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_DEFAULT_USB_INIT := true

PRODUCT_PACKAGES += \
    device/htc/eyeul/recovery/root/init.recovery.usb.rc