#
# Copyright (C) 2008 The Android Open Source Project
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
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_JAVA_LIBRARIES := org.apache.http.legacy
LOCAL_SRC_FILES := $(call all-subdir-java-files)
LOCAL_PACKAGE_NAME := OmniJaws
LOCAL_PRODUCT_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_SDK_VERSION := system_current
LOCAL_REQUIRED_MODULES := default_permissions_org.omnirom.omnijaws.xml
LOCAL_OPTIONAL_USES_LIBRARIES += org.apache.http.legacy
include $(BUILD_PACKAGE)

include $(CLEAR_VARS)
LOCAL_MODULE := default_permissions_org.omnirom.omnijaws.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT_ETC)/default-permissions
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)
