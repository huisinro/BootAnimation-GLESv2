LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	bootanimation_main.cpp \
	BootAnimation.cpp

LOCAL_CFLAGS += -DGL_GLEXT_PROTOTYPES -DEGL_EGLEXT_PROTOTYPES
LOCAL_CFLAGS += -I/home/leapdroid/android-4.4.4/frameworks/native/opengl/tests/include 
LOCAL_CFLAGS += -I/home/leapdroid/android-4.4.4/frameworks/native/opengl/include 


LOCAL_SHARED_LIBRARIES := \
	libcutils \
	liblog \
	libandroidfw \
	libutils \
	libbinder \
    libui \
	libskia \
    libEGL \
    libGLESv2 \
    libgui \
    libdl
#    libGLESv1_CM \

LOCAL_C_INCLUDES := \
	$(call include-path-for, corecg graphics)

LOCAL_MODULE:= bootanimation


include $(BUILD_EXECUTABLE)
