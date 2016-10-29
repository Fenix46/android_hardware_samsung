# Copyright (C) 2014, The CyanogenMod Project <http://www.cyanogenmod.org>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_POWERHAL_VARIANT),samsung)

include $(CLEAR_VARS)

LOCAL_MODULE := power.universal3470
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SHARED_LIBRARIES := liblog libcutils
LOCAL_SRC_FILES := power.c
LOCAL_MODULE_TAGS := optional

ifneq ($(TARGET_TAP_TO_WAKE_NODE),)
    LOCAL_CFLAGS := -DDT2W_PATH=\"$(TARGET_DT2W_PATH)\"
endif

include $(BUILD_SHARED_LIBRARY)

endif # TARGET_POWERHAL_VARIANT == universal3470