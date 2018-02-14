# Inherit full common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/lineage/overlay/dictionaries


ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/cm/prebuilt/common/bootanimation/480.zip:system/media/bootanimation.zip
endif

$(call inherit-product, vendor/lineage/config/telephony.mk)
