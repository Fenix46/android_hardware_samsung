LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

samsung_required := AdvancedDisplay power liblights ril

include $(call all-named-subdir-makefiles,$(samsung_required))

ifeq ($(TARGET_USE_LESS_BLOB_FILES),true)

blob_less_dirs := exynos_omx libcamera2 libkeymaster libstagefrighthw libcsc \
		  libswconverter libexynosutils libhwjpeg libsecurepath libv4l2 \
		  modemloader mobicore macloader wifiloader
#1    include $(LOCAL_PATH)/exynos_omx/Android.mk
#1    include $(LOCAL_PATH)/libcamera2/Android.mk
#    include $(LOCAL_PATH)/libgscaler/Android.mk
#1    include $(LOCAL_PATH)/libkeymaster/Android.mk
#1    include $(LOCAL_PATH)/libstagefrighthw/Android.mk
#    include $(LOCAL_PATH)/gralloc/Android.mk
#1    include $(LOCAL_PATH)/libcsc/Android.mk
#    include $(LOCAL_PATH)/libhwc/Android.mk
#1    include $(LOCAL_PATH)/libswconverter/Android.mk 
#1    include $(LOCAL_PATH)/libexynosutils/Android.mk 
#1    include $(LOCAL_PATH)/libhwjpeg/Android.mk 
#1    include $(LOCAL_PATH)/libsecurepath/Android.mk   
#1    include $(LOCAL_PATH)/libv4l2/Android.mk 
#1    include $(LOCAL_PATH)/modemloader/Android.mk   
#1    include $(LOCAL_PATH)/mobicore/Android.mk
#1    include $(LOCAL_PATH)/macloader/Android.mk
#1    include $(LOCAL_PATH)/wifiloader/Android.mk
    include $(call all-named-subdir-makefiles,$(blob_less_dirs))
endif
