LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CLANG_CFLAGS += \
	-Wno-int-conversion \
	-Wno-incompatible-pointer-types

LOCAL_SRC_FILES := \
	dec/src/ExynosVideoDecoder.c \
	enc/src/ExynosVideoEncoder.c

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include \
	$(SAMSUNG_HW_PATH)/include \
	$(SAMSUNG_HW_PATH)/exynos_omx/openmax/include/khronos

LOCAL_MODULE := libExynosVideoApi
LOCAL_MODULE_TAGS := optional
LOCAL_ARM_MODE := arm

include $(BUILD_STATIC_LIBRARY)
