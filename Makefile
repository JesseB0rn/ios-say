THEOS=/var/mobile/theos
THEOS_DEVICE_IP=127.0.0.1
TARGET=iphone:clang:12.2:11.0

include $(THEOS)/makefiles/common.mk

TOOL_NAME = say

say_FILES = main.m
say_FRAMEWORKS = UIKit AVFoundation
say_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tool.mk
