LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),gt5note10lte)
	include $(call all-makefiles-under,$(LOCAL_PATH))
endif
