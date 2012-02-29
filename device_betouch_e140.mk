$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/acer/betouch_e140/betouch_e140-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/acer/betouch_e140/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/acer/betouch_e140/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := amx_betouch_e140
PRODUCT_DEVICE := betouch_e140
PRODUCT_MODEL := E140
PRODUCT_LOCALES += ldpi
