
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CLANG_CFLAGS += -Wno-c++11-narrowing

# HAL module implemenation stored in
# hw/<COPYPIX_HARDWARE_MODULE_ID>.<ro.product.board>.so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/hw

LOCAL_C_INCLUDES += \
	hardware/samsung/exynos_3470/include \
	frameworks/native/include \
	system/media/camera/include

LOCAL_SRC_FILES:= \
	SignalDrivenThread.cpp \
	MetadataConverter.cpp \
	ExynosCameraHWInterface2.cpp \
	ExynosCamera2.cpp \
	ExynosJpegEncoderForCamera.cpp


LOCAL_SHARED_LIBRARIES:= libutils libcutils libbinder liblog libcamera_client libhardware

LOCAL_CFLAGS += -DGAIA_FW_BETA

LOCAL_SHARED_LIBRARIES += libexynosutils libhwjpeg libexynosv4l2 libcsc libion_exynos libcamera_metadata

LOCAL_MODULE := camera.$(TARGET_BOOTLOADER_BOARD_NAME)

LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
