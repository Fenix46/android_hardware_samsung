LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
	Exynos_OSAL_Android.cpp \
	Exynos_OSAL_Event.c \
	Exynos_OSAL_Queue.c \
	Exynos_OSAL_ETC.c \
	Exynos_OSAL_Mutex.c \
	Exynos_OSAL_Thread.c \
	Exynos_OSAL_Memory.c \
	Exynos_OSAL_Semaphore.c \
	Exynos_OSAL_Library.c \
	Exynos_OSAL_Log.c \
	Exynos_OSAL_SharedMemory.c

LOCAL_MODULE := libExynosOMX_OSAL

LOCAL_CFLAGS :=

LOCAL_CLANG_CFLAGS += \
	-Wno-implicit-function-declaration \
	-Wno-int-conversion \
	-Wno-sign-compare

ifeq ($(BOARD_USE_S3D_SUPPORT), true)
LOCAL_CFLAGS += -DS3D_SUPPORT
endif

LOCAL_SHARED_LIBRARIES := libhardware
LOCAL_STATIC_LIBRARIES := liblog libcutils

LOCAL_C_INCLUDES := $(EXYNOS_OMX_INC)/khronos \
	$(EXYNOS_OMX_INC)/exynos \
	$(EXYNOS_OMX_TOP)/osal \
	$(EXYNOS_OMX_COMPONENT)/common \
	$(EXYNOS_OMX_COMPONENT)/video/dec \
	$(EXYNOS_OMX_COMPONENT)/video/enc \
	$(EXYNOS_OMX_TOP)/video/dec \
	$(EXYNOS_OMX_TOP)/video/enc \
	hardware/samsung/universal3470/include \
	frameworks/native/include/media/hardware \
	frameworks/native/include/media/openmax \
	hardware/samsung/universal3470/exynos_omx/codecs/exynos_codecs/video/exynos3/mfc_v4l2/include

include $(BUILD_STATIC_LIBRARY)