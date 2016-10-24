SAMSUNG_HW_PATH:= $(call my-dir)
include $(CLEAR_VARS)

SAMSUNG_DEFAULT_DIRS := AdvancedDisplay power liblights ril audio consumerir fingerprint soundtrigger libsensors
include $(foreach client_dirs,$(SAMSUNG_DEFAULT_DIRS),$(SAMSUNG_HW_PATH)/$(client_dirs)/Android.mk)


ifeq ($(BOARD_USES_BLOB_LESS),true)
common_exynos_dirs += \
	libexynosutils \
	libhwjpeg \
	libswconverter \
	mobicore \
	libgscaler \
	libion_exynos \
	libsecurepath \
	libv4l2 \
	modemloader \
	libcsc \
	libhwc \
	libstagefrighthw \
	macloader \
	wifiloader

include $(foreach client_dirs,$(common_exynos_dirs),$(SAMSUNG_HW_PATH)/$(client_dirs)/Android.mk)
endif
