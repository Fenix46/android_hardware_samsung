SAMSUNG_HW_PATH:= $(call my-dir)

include $(CLEAR_VARS)

include $(SAMSUNG_HW_PATH)/ril/Android.mk
include $(SAMSUNG_HW_PATH)/audio/Android.mk
include $(SAMSUNG_HW_PATH)/consumerir/Android.mk
include $(SAMSUNG_HW_PATH)/fingerprint/Android.mk
include $(SAMSUNG_HW_PATH)/liblights/Android.mk
include $(SAMSUNG_HW_PATH)/libsensors/Android.mk
include $(SAMSUNG_HW_PATH)/power/Android.mk
include $(SAMSUNG_HW_PATH)/soundtrigger/Android.mk
include $(SAMSUNG_HW_PATH)/wifiloader/Android.mk

ifeq ($(BOARD_USES_BLOB_LESS),true)

BOARD_USE_V4L2 := true
BOARD_USE_V4L2_ION := true
BOARD_USE_SAMSUNG_COLORFORMAT := true
BOARD_FIX_NATIVE_COLOR_FORMAT := true
BOARD_NONBLOCK_MODE_PROCESS := true
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USES_MFC_FPS := true
BOARD_USE_S3D_SUPPORT := true
BOARD_USE_EXYNOS_OMX := true

include $(SAMSUNG_HW_PATH)/libhwc/Android.mk
include $(SAMSUNG_HW_PATH)/libexynosutils/Android.mk
include $(SAMSUNG_HW_PATH)/libhwjpeg/Android.mk
include $(SAMSUNG_HW_PATH)/libswconverter/Android.mk
include $(SAMSUNG_HW_PATH)/libcamera2/Android.mk
include $(SAMSUNG_HW_PATH)/mobicore/Android.mk
include $(SAMSUNG_HW_PATH)/libgscaler/Android.mk
include $(SAMSUNG_HW_PATH)/libion_exynos/Android.mk
include $(SAMSUNG_HW_PATH)/libsecurepath/Android.mk
include $(SAMSUNG_HW_PATH)/libv4l2/Android.mk
#include $(SAMSUNG_HW_PATH)/modemloader/Android.mk
include $(SAMSUNG_HW_PATH)/libcsc/Android.mk
include $(SAMSUNG_HW_PATH)/libstagefrighthw/Android.mk
#include $(SAMSUNG_HW_PATH)/macloader/Android.mk
ifeq ($(TARGET_USES_STD_GRALLC), false)
include $(SAMSUNG_HW_PATH)/gralloc_mali/Android.mk
else
include $(SAMSUNG_HW_PATH)/gralloc_std/Android.mk
endif
include $(SAMSUNG_HW_PATH)/exynos_omx/Android.mk
endif