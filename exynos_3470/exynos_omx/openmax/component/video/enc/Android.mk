LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CLANG_CFLAGS += -Wno-int-conversion

LOCAL_SRC_FILES := \
	Exynos_OMX_VencControl.c \
	Exynos_OMX_Venc.c

LOCAL_MODULE := libExynosOMX_Venc
LOCAL_ARM_MODE := arm
LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := -DUSE_CSC_G2D

LOCAL_C_INCLUDES := $(EXYNOS_OMX_INC)/khronos \
	$(EXYNOS_OMX_INC)/exynos \
	$(EXYNOS_OMX_TOP)/osal \
	$(EXYNOS_OMX_TOP)/core \
	$(EXYNOS_OMX_COMPONENT)/common \
	$(EXYNOS_OMX_COMPONENT)/video/enc \
	$(SAMSUNG_HW_PATH)/include \
	$(SAMSUNG_HW_PATH)/libcsc \
	$(SAMSUNG_HW_PATH)/exynos_omx/codecs/exynos_codecs/video/exynos3/mfc_v4l2/include

ifeq ($(BOARD_USE_METADATABUFFERTYPE), true)
LOCAL_CFLAGS += -DUSE_METADATABUFFERTYPE
endif

ifeq ($(BOARD_USE_STOREMETADATA), true)
LOCAL_CFLAGS += -DUSE_STOREMETADATA
endif

LOCAL_SHARED_LIBRARIES := libcsc

include $(BUILD_STATIC_LIBRARY)
