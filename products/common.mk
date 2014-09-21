# Generic product
PRODUCT_NAME := Linearboost
PRODUCT_BRAND := Linearboost
PRODUCT_DEVICE := generic

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    pm.sleep_mode=1 \
    wifi.supplicant_scan_interval=90 \
    ro.com.android.dataroaming=false

# NOVA LAUNCHER 3
PRODUCT_COPY_FILES += \
    vendor/Linearboost/prebuilt/apk/NovaLauncher.apk:system/app/NovaLauncher.apk
PRODUCT_COPY_FILES += \
    vendor/Linearboost/prebuilt/lib/libgif.so:system/lib/libgif.so

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/Linearboost/overlay/common

# Latin IME lib
PRODUCT_COPY_FILES += \
    vendor/Linearboost/proprietary/common/system/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
