LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),universal3470)

include $($(LOCAL_PATH)/audio/Android.mk)
include $($(LOCAL_PATH)/consumerir/Android.mk)
include $($(LOCAL_PATH)/fingerprint/Android.mk)
include $($(LOCAL_PATH)/liblights/Android.mk)
include $($(LOCAL_PATH)/libsensors/Android.mk)
include $($(LOCAL_PATH)/power/Android.mk)
include $($(LOCAL_PATH)/soundtrigger/Android.mk)
include $($(LOCAL_PATH)/ril/Android.mk)

ifeq ($(BOARD_USES_BLOB_LESS),true)

include $($(LOCAL_PATH)/libexynosutils/Android.mk)
include $($(LOCAL_PATH)/libhwjpeg/Android.mk)
include $($(LOCAL_PATH)/libswconverter/Android.mk)
include $($(LOCAL_PATH)/libcamera2/Android.mk)
include $($(LOCAL_PATH)/mobicore/Android.mk)
include $($(LOCAL_PATH)/libgscaler/Android.mk)
include $($(LOCAL_PATH)/libion_exynos/Android.mk)
include $($(LOCAL_PATH)/libsecurepath/Android.mk)
include $($(LOCAL_PATH)/libv4l2/Android.mk)
include $($(LOCAL_PATH)/modemloader/Android.mk)
include $($(LOCAL_PATH)/libcsc/Android.mk)
include $($(LOCAL_PATH)/libhwc/Android.mk)
include $($(LOCAL_PATH)/libstagefrighthw/Android.mk)
include $($(LOCAL_PATH)/macloader/Android.mk)
include $($(LOCAL_PATH)/wifiloader/Android.mk)

endif
endif