TARGET := iphone:clang:latest:15.0
ARCHS := arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME := ColorRoadModMenu

ColorRoadModMenu_FILES := tweak.x menu.mm
ColorRoadModMenu_CFLAGS := -fobjc-arc

include $(THEOS)/makefiles/tweak.mk
