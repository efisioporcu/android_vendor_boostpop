# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/Linearboost/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := linearboost_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:4.4.4/KTU84Q/1227136:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 4.4.4 KTU84Q 1227136 release-key"

# Inherit media effect blobs
-include vendor/Linearboost/products/common_media_effects.mk

# boot animation
PRODUCT_COPY_FILES += \
    vendor/Linearboost/proprietary/hammerhead/system/media/bootanimation.zip:system/media/bootanimation.zip
