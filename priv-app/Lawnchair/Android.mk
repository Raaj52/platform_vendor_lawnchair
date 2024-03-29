LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := Lawnchair
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := Lawnchair.apk
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app/Lawnchair
LOCAL_SRC_FILES := Lawnchair.apk
LOCAL_MODULE_CLASS := ETC
LOCAL_OVERRIDES_PACKAGES := NexusLauncherRelease ParanoidQuickStep Launcher3QuickStep PixelLauncher TrebuchetQuickStep

LOCAL_PREBUILT_JNI_LIBS_arm := \
    lib/armeabi-v7a/libhoko_blur.so

LOCAL_PREBUILT_JNI_LIBS_arm64 := \
    lib/arm64-v8a/libhoko_blur.so

LOCAL_PREBUILT_JNI_LIBS_x86 := \
    lib/x86/libhoko_blur.so

LOCAL_PREBUILT_JNI_LIBS_x86_64 := \
    lib/x86_64/libhoko_blur.so

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Lawnfeed
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_PRODUCT)/app
LOCAL_SRC_FILES := Lawnfeed.apk
LOCAL_DEX_PREOPT := false
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)