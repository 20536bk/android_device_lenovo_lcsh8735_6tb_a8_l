$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_DEVICE := lcsh8735_6tb_a8_l
PRODUCT_NAME := omni_lcsh8735_6tb_a8_l
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TAB2 501LV
PRODUCT_MANUFACTURER := Lenovo

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_AAPT_CONFIG := normal tvdpi hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := tvdpi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=213
