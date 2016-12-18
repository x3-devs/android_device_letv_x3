# Miscellenious

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=8

# Default.prop
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.service.acm.enable=0 \
    persist.sys.dun.override=0 \
    camera.disable_zsl_mode=1

PRODUCT_PACKAGES += \
    libnl_2
