LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),gt510wifi)
	include $(call all-makefiles-under,$(LOCAL_PATH))
endif
