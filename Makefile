TWEAK_NAME = ColorRoadModMenu
ColorRoadModMenu_FILES = $(wildcard *.x) Menu.mm
ColorRoadModMenu_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/common.mk
include $(THEOS)/makefiles/tweak.mk
