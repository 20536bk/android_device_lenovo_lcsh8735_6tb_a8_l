ifneq ($(filter lcsh8735_6tb_a8_l,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)
include $(call all-makefiles-under,$(LOCAL_PATH))

endif
