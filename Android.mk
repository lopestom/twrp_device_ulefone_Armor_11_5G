LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),Armor_11_5G)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
