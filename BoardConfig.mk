#    Android Device Tree of Letv Le 1S (codenamed as x500 or x3)
#    Copyright (C) 2016-2017 Sai Vishal
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Device path
LOCAL_PATH := device/letv/x3

# Device board elements
include $(LOCAL_PATH)/PlatformConfig.mk
include $(LOCAL_PATH)/board/*.mk

PROPRIETARY_VENDOR_PATH := vendor/letv/x3/proprietary 

# Device vendor board
-include vendor/letv/x3/BoardConfigVendor.mk

#######################################################################

# Kernel
TARGET_KMODULES := true
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# EGL
BOARD_EGL_CFG :=  vendor/letv/x3/proprietary/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Block based ota
# see http://review.cyanogenmod.org/#/c/78849/1/core/Makefile
BLOCK_BASED_OTA := false

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# init
TARGET_PROVIDES_INIT_RC := true

# system.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := sys/class/android_usb/android0/f_mass_storage/lun/file

# Assert
TARGET_OTA_ASSERT_DEVICE := X3

# VT
TARGET_USES_CSVT := true
