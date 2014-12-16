# Inherit AOSP device configuration for hammerhead
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files
$(call inherit-product, vendor/Linearboost/products/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := BoostPop_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="hammerhead" 
BUILD_FINGERPRINT="google/hammerhead/hammerhead:5.0.1/LRX22C/1570415:user/release-keys" 
PRIVATE_BUILD_DESC="hammerhead-user 5.0.1 LRX22C 1570415 release-keys"

# Linear kernel files
PRODUCT_COPY_FILES += \
    vendor/Linearboost/prebuilt/bin/linear.sh:system/bin/linear.sh \
    vendor/Linearboost/prebuilt/etc/linear.conf:system/etc/linear.conf \
    vendor/Linearboost/prebuilt/etc/init.d/99linear:system/etc/init.d/99linear \
