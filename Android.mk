# Copyright 2011 Google Inc. All Rights Reserved.
# Google Android makefile for c-ares and libcares

LOCAL_PATH:= $(call my-dir)

#########################
# Build the libcares library

include $(CLEAR_VARS)
include $(LOCAL_PATH)/Makefile.inc

LOCAL_SRC_FILES := $(CSOURCES)

LOCAL_CFLAGS += -Wpointer-arith -Wwrite-strings -Wunused -Winline
LOCAL_CFLAGS += -Wnested-externs -Wmissing-declarations -Wmissing-prototypes
LOCAL_CFLAGS += -Wno-long-long -Wfloat-equal -Wno-multichar -Wsign-compare
LOCAL_CFLAGS += -Wno-format-nonliteral -Wendif-labels -Wstrict-prototypes
LOCAL_CFLAGS += -Wdeclaration-after-statement -Wno-system-headers
LOCAL_CFLAGS += -DHAVE_CONFIG_H

LOCAL_MODULE:= libcares
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
