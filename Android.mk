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

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),x3)

include $(call all-makefiles-under,$(LOCAL_PATH))

# Prebuilt kernel
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

endif
