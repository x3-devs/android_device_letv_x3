#
# Copyright (C) 2017 The LinearOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Device identifier
PRODUCT_BRAND := Letv
PRODUCT_DEVICE := x3
PRODUCT_MANUFACTURER := Letv
PRODUCT_MODEL := x500
PRODUCT_NAME := cm_x3
PRODUCT_RELEASE_NAME := Le 1S

PRODUCT_GMS_CLIENTID_BASE := android-letv

TARGET_VENDOR_PRODUCT_NAME := Le1S_IN
TARGET_VENDOR_DEVICE_NAME := X3_HK

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Letv/Le1s_IN/X3_HK:6.0/DHXOSOP5801708261S/1472150001:user/release-keys" \
    PRIVATE_BUILD_DESC="full_x500-user 6.0 DHXOSOP5801708261S 1472150001 release-keys"
endif