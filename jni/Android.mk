MY_PATH := $(call my-dir)

include $(CLEAR_VARS)

OPENCV_CAMERA_MODULES:=off
OPENCV_INSTALL_MODULES:=on
OPENCV_LIB_TYPE:=STATIC
include opencv/native/jni/OpenCV.mk
include tesseract/tesseract.mk

include $(CLEAR_VARS)

LOCAL_PATH=$(MY_PATH)

LOCAL_C_INCLUDES = $(MY_C_INCLUDES)
LOCAL_CFLAGS = $(MY_CFLAGS)
LOCAL_CPPFLAGS = -std=c++11

LOCAL_SHARED_LIBRARIES = $(MY_SHARED_LIBRARIES)
LOCAL_STATIC_LIBRARIES = $(MY_STATIC_LIBRARIES)
LOCAL_LDLIBS = $(MY_LDLIBS) -llog

LOCAL_MODULE:=ocr-demo
LOCAL_SRC_FILES:=ocr-demo.cpp

include $(BUILD_SHARED_LIBRARY)
