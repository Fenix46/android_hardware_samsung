SAMSUNG_HW_PATH:= $(call my-dir)

include $(CLEAR_VARS)

include $(SAMSUNG_HW_PATH)/audio/Android.mk
include $(SAMSUNG_HW_PATH)/consumerir/Android.mk
include $(SAMSUNG_HW_PATH)/fingerprint/Android.mk
include $(SAMSUNG_HW_PATH)/liblights/Android.mk
include $(SAMSUNG_HW_PATH)/libsensors/Android.mk
include $(SAMSUNG_HW_PATH)/power/Android.mk
include $(SAMSUNG_HW_PATH)/soundtrigger/Android.mk
include $(SAMSUNG_HW_PATH)/ril/Android.mk

ifeq ($(BOARD_USES_BLOB_LESS),true)

include $(SAMSUNG_HW_PATH)/libexynosutils/Android.mk
include $(SAMSUNG_HW_PATH)/libhwjpeg/Android.mk
include $(SAMSUNG_HW_PATH)/libswconverter/Android.mk
include $(SAMSUNG_HW_PATH)/libcamera2/Android.mk
include $(SAMSUNG_HW_PATH)/mobicore/Android.mk
include $(SAMSUNG_HW_PATH)/libgscaler/Android.mk
include $(SAMSUNG_HW_PATH)/libion_exynos/Android.mk
include $(SAMSUNG_HW_PATH)/libsecurepath/Android.mk
include $(SAMSUNG_HW_PATH)/libv4l2/Android.mk
include $(SAMSUNG_HW_PATH)/modemloader/Android.mk
include $(SAMSUNG_HW_PATH)/libcsc/Android.mk
include $(SAMSUNG_HW_PATH)/libhwc/Android.mk
include $(SAMSUNG_HW_PATH)/libstagefrighthw/Android.mk
include $(SAMSUNG_HW_PATH)/macloader/Android.mk
include $(SAMSUNG_HW_PATH)/wifiloader/Android.mk
include $(SAMSUNG_HW_PATH)/gralloc/Android.mk
include $(SAMSUNG_HW_PATH)/exynos_omx/Android.mk

endif