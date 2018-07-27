LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CLANG_CFLAGS += \
        -Wno-error=unused-private-field \
        -Wno-error=strlcpy-strlcat-size \
        -Wno-error=gnu-designator \
        -Wno-error=unused-variable \
        -Wno-error=format

LOCAL_SRC_FILES := \
        QCamera2Factory.cpp \
        QCamera2Hal.cpp \
        QCamera2HWI.cpp \
        QCameraMem.cpp \
        ../util/QCameraQueue.cpp \
        ../util/QCameraCmdThread.cpp \
        QCameraStateMachine.cpp \
        QCameraChannel.cpp \
        QCameraStream.cpp \
        QCameraPostProc.cpp \
        QCamera2HWICallbacks.cpp \
        QCameraParameters.cpp \
        QCameraThermalAdapter.cpp \
        wrapper/QualcommCamera.cpp

LOCAL_CFLAGS = -Wall -Wextra -Werror -DDEFAULT_DENOISE_MODE_ON
LOCAL_CFLAGS += -DHAS_MULTIMEDIA_HINTS
LOCAL_CFLAGS += -DUSE_MEDIA_EXTENSIONS

LOCAL_C_INCLUDES := \
        $(LOCAL_PATH)/../stack/common \
        frameworks/native/include \
        frameworks/native/include/media/hardware \
        frameworks/native/include/media/openmax \
        frameworks/native/libs/nativebase/include \
        frameworks/native/libs/nativewindow/include \
        $(call project-path-for,qcom-display)/libgralloc \
        $(call project-path-for,qcom-media)/libstagefrighthw \
        system/media/camera/include \
        $(LOCAL_PATH)/../../mm-image-codec/qexif \
        $(LOCAL_PATH)/../../mm-image-codec/qomx_core \
        $(LOCAL_PATH)/../util \
        $(LOCAL_PATH)/wrapper

LOCAL_C_INCLUDES += system/media/camera/include
LOCAL_C_INCLUDES += \
        $(TARGET_OUT_HEADERS)/qcom/display
LOCAL_C_INCLUDES += \
        $(call project-path-for,qcom-display)/libqservice
LOCAL_C_INCLUDES += $(call project-path-for,qcom-display)/libgralloc

LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include/media
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_SHARED_LIBRARIES := libcamera_client liblog libhardware libutils libcutils libdl liblog libsensor
LOCAL_SHARED_LIBRARIES += libmmcamera_interface libmmjpeg_interface libnativewindow
LOCAL_SHARED_LIBRARIES += libhidltransport libsensor android.hidl.token@1.0-utils android.hardware.graphics.bufferqueue@1.0
LOCAL_STATIC_LIBRARIES := libarect

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE := camera.$(TARGET_BOARD_PLATFORM)
LOCAL_32_BIT_ONLY := true
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
