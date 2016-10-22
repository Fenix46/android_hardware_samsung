SAMSUNG_HW_PATH:= $(call my-dir)
include $(CLEAR_VARS)

#include $(LOCAL_PATH)/AdvancedDisplay
#include $(LOCAL_PATH)/power
#include $(LOCAL_PATH)/liblights
#include $(LOCAL_PATH)/ril

SAMSUNG_DEFAULT_DIRS := AdvancedDisplay power liblights ril
include $(foreach client_dirs,$(SAMSUNG_DEFAULT_DIRS),$(SAMSUNG_HW_PATH)/$(client_dirs)/Android.mk)


ifeq ($(TARGET_USE_LESS_BLOB_FILES),true)
SAMSUNG_BLOB_LESS_DIRS := exynos_omx libcamera2 libkeymaster libstagefrighthw \
                          libcsc libswconverter libexynosutils libhwjpeg \
                          libsecurepath libv4l2 modemloader mobicore macloader \
                          wifiloader
                          
include $(foreach client_dirs,$(SAMSUNG_BLOB_LESS_DIRS),$(SAMSUNG_HW_PATH)/$(client_dirs)/Android.mk)
    #include $(LOCAL_PATH)/exynos_omx/Android.mk
    #include $(LOCAL_PATH)/libcamera2/Android.mk
    #    include $(LOCAL_PATH)/libgscaler/Android.mk
    #include $(LOCAL_PATH)/libkeymaster/Android.mk
    #include $(LOCAL_PATH)/libstagefrighthw/Android.mk
    #    include $(LOCAL_PATH)/gralloc/Android.mk
    #include $(LOCAL_PATH)/libcsc/Android.mk
    #    include $(LOCAL_PATH)/libhwc/Android.mk
    #include $(LOCAL_PATH)/libswconverter/Android.mk 
    #include $(LOCAL_PATH)/libexynosutils/Android.mk 
    #include $(LOCAL_PATH)/libhwjpeg/Android.mk 
    #include $(LOCAL_PATH)/libsecurepath/Android.mk   
    #include $(LOCAL_PATH)/libv4l2/Android.mk 
    #include $(LOCAL_PATH)/modemloader/Android.mk   
    #include $(LOCAL_PATH)/mobicore/Android.mk
    #include $(LOCAL_PATH)/macloader/Android.mk
    #include $(LOCAL_PATH)/wifiloader/Android.mk
endif
