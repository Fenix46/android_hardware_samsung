LOCAL_PATH := $(call my-dir)

OMX_NAME := exynos

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    csc_helper.c

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)

LOCAL_C_INCLUDES := \
    system/core/include \
    hardware/samsung/exynos_3470/$(OMX_NAME)_omx/openmax/include/khronos \
    hardware/samsung/exynos_3470/$(OMX_NAME)_omx/openmax/include/$(OMX_NAME) \
    hardware/samsung/exynos_3470/include

LOCAL_CFLAGS := \
    -DUSE_SAMSUNG_COLORFORMAT \
    -DEXYNOS_OMX

LOCAL_MODULE := libcsc_helper
LOCAL_MODULE_TAGS := optional
LOCAL_STATIC_LIBRARIES := liblog

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
	csc.c

LOCAL_C_INCLUDES := \
	hardware/samsung/exynos_3470/include \
	hardware/samsung/exynos_3470/$(OMX_NAME)_omx/openmax/include/khronos \
	hardware/samsung/exynos_3470/$(OMX_NAME)_omx/openmax/include/$(OMX_NAME) \
	hardware/samsung/exynos_3470/libexynosutils

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)

LOCAL_CFLAGS :=

LOCAL_MODULE := libcsc


LOCAL_ARM_MODE := arm

LOCAL_STATIC_LIBRARIES := libswconverter
LOCAL_WHOLE_STATIC_LIBRARIES := libcsc_helper
LOCAL_SHARED_LIBRARIES := liblog libexynosutils

LOCAL_CFLAGS += -DUSE_SAMSUNG_COLORFORMAT

LOCAL_C_INCLUDES += hardware/samsung/exynos_3470/include
LOCAL_CFLAGS += -DENABLE_GSCALER -DENABLE_G2D
LOCAL_SHARED_LIBRARIES += libexynosgscaler

LOCAL_CFLAGS += -DUSE_ION
LOCAL_SHARED_LIBRARIES += libion_exynos

LOCAL_CFLAGS += -DEXYNOS_OMX

include $(BUILD_SHARED_LIBRARY)
