# Copyright (C) 2013 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

PRODUCT_COPY_FILES += \
	device/samsung/serranoltespr/rootdir/init.carrier.rc:root/init.carrier.rc

PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libsec-ril.so

-include device/samsung/serrano-common/BoardConfigCommon.mk
# Assert
TARGET_OTA_ASSERT_DEVICE := serranoltespr,L520,SPH-L520

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8930_serrano_spr_defconfig

# NFC
BOARD_HAVE_NFC := true

# LED
BOARD_HAVE_MULTI_COLOR_LED := true

BOARD_RIL_CLASS := ../../../device/samsung/jf-common/ril

-include vendor/samsung/serranoltespr/BoardConfigVendor.mk

