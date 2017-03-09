# Copyright (C) 2017 The Android Open Source Project
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
#

LOCAL_PATH := $(call my-dir)

# -------------------------------
# Builds the deployable Objenesis TCK for Android
# To build and run:
#    make APP-ObjenesisTck
#    adb install -r out/target/product/generic/data/app/ObjenesisTck.apk
#    adb shell am instrument -w org.objenesis.tck.android/.TckInstrumentation

include $(CLEAR_VARS)
LOCAL_PACKAGE_NAME := ObjenesisUpdatedTck
LOCAL_MODULE_TAGS := tests
LOCAL_CERTIFICATE := platform

LOCAL_STATIC_JAVA_LIBRARIES := \
    objenesis-updated-tck-target \
    junit \
    legacy-android-test
LOCAL_SRC_FILES := $(call all-java-files-under, src)
include $(BUILD_PACKAGE)