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

# fix for green line in videos
PRODUCT_COPY_FILES += \
    vendor/Linearboost/proprietary/hammerhead/system/lib/libmmcamera_interface.so:system/lib/libmmcamera_interface.so

# new adreno drivers
PRODUCT_COPY_FILES += \
    vendor/Linearboost/proprietary/hammerhead/system/NewAdrenoDrivers/firmware/a330_pfp.fw:system/vendor/firmware/a330_pfp.fw \
    vendor/Linearboost/proprietary/hammerhead/system/NewAdrenoDrivers/firmware/a330_pm4.fw:system/vendor/firmware/a330_pm4.fw \
    vendor/Linearboost/proprietary/hammerhead/system/NewAdrenoDrivers/lib/egl/eglsubAndroid.so:system/vendor/lib/egl/eglsubAndroid.so \
    vendor/Linearboost/proprietary/hammerhead/system/NewAdrenoDrivers/lib/egl/libEGL_adreno.so:system/vendor/lib/egl/libEGL_adreno.so \
    vendor/Linearboost/proprietary/hammerhead/system/NewAdrenoDrivers/lib/egl/libGLESv1_CM_adreno.so:system/vendor/lib/egl/libGLESv1_CM_adreno.so \
    vendor/Linearboost/proprietary/hammerhead/system/NewAdrenoDrivers/lib/egl/libGLESv2_adreno.so:system/vendor/lib/egl/libGLESv2_adreno.so \
    vendor/Linearboost/proprietary/hammerhead/system/NewAdrenoDrivers/lib/egl/libplayback_adreno.so:system/vendor/lib/egl/libplayback_adreno.so \
    vendor/Linearboost/proprietary/hammerhead/system/NewAdrenoDrivers/lib/egl/libq3dtools_adreno.so:system/vendor/lib/egl/libq3dtools_adreno.so \
    vendor/Linearboost/proprietary/hammerhead/system/NewAdrenoDrivers/lib/libadreno_utils.so:system/vendor/lib/libadreno_utils.so \
    vendor/Linearboost/proprietary/hammerhead/system/NewAdrenoDrivers/lib/libc2d30-a3xx.so:system/vendor/lib/libc2d30-a3xx.so \
    vendor/Linearboost/proprietary/hammerhead/system/NewAdrenoDrivers/lib/libC2D2.so:system/vendor/lib/libC2D2.so \
    vendor/Linearboost/proprietary/hammerhead/system/NewAdrenoDrivers/lib/libCB.so:system/vendor/lib/libCB.so \
    vendor/Linearboost/proprietary/hammerhead/system/NewAdrenoDrivers/lib/libgsl.so:system/vendor/lib/libgsl.so \
    vendor/Linearboost/proprietary/hammerhead/system/NewAdrenoDrivers/lib/libllvm-qcom.so:system/vendor/lib/libllvm-qcom.so \
    vendor/Linearboost/proprietary/hammerhead/system/NewAdrenoDrivers/lib/libOpenCL.so:system/vendor/lib/libOpenCL.so \
    vendor/Linearboost/proprietary/hammerhead/system/NewAdrenoDrivers/lib/librs_adreno.so:system/vendor/lib/librs_adreno.so \
    vendor/Linearboost/proprietary/hammerhead/system/NewAdrenoDrivers/lib/librs_adreno_sha1.so:system/vendor/lib/librs_adreno_sha1.so \
    vendor/Linearboost/proprietary/hammerhead/system/NewAdrenoDrivers/lib/libRSDriver_adreno.so:system/vendor/lib/libRSDriver_adreno.so \
    vendor/Linearboost/proprietary/hammerhead/system/NewAdrenoDrivers/lib/libsc-a3xx.so:system/vendor/lib/libsc-a3xx.so 
