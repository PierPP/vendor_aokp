# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/samsung/i9100g/full_i9100g.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# SGS2 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/i9100g

# Setup device specific product configuration.
PRODUCT_DEVICE := i9100g
PRODUCT_NAME := aokp_i9100g
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9100G

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100G TARGET_DEVICE=GT-I9100G BUILD_FINGERPRINT=samsung/GT-I9100G/GT-I9100G:4.1.1/JRO03H/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100G-user 4.1.1 JRO03H XXLPQ release-keys"

PRODUCT_RELEASE_NAME := I9100G

# Copy i9100 specific prebuilt files
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
   vendor/aokp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip

