LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := src/srp_api.c
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_MODULE := libsrpapi
LOCAL_MODULE_TAGS := optional
LOCAL_ARM_MODE := arm

include $(BUILD_STATIC_LIBRARY)