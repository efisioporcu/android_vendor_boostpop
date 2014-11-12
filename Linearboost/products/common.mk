# Generic product
PRODUCT_NAME := Linearboost
PRODUCT_BRAND := Linearboost
PRODUCT_DEVICE := generic

# Common build prop overrides 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dataroaming=false \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    keyguard.no_require_sim=true

# Linearboost build prop
PRODUCT_PROPERTY_OVERRIDES += \
    pm.sleep.mode=1 \
    wifi.supplicant_scan_interval=300 

# Proprietary latinime lib needed for swyping
PRODUCT_COPY_FILES += \
    vendor/Linearboost/prebuilt/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/Linearboost/overlays/common

# CDMA APN list
PRODUCT_COPY_FILES += \
    vendor/Linearboost/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Enable SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Bootanimation support
PRODUCT_COPY_FILES += \
    vendor/Linearboost/prebuilt/system/media/bootanimation.zip:system/media/bootanimation.zip