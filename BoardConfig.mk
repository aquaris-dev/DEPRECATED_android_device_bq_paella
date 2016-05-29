#
# Copyright (C) 2016 The CyanogenMod Project
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

-include device/bq/common/BoardConfigCommon.mk

# Platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306

# Kernel
TARGET_KERNEL_SOURCE := kernel/bq/common
TARGET_KERNEL_CONFIG := cyanogenmod_picmt_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := piccolometal,picmt,Aquaris_X5

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/bq/picmt/bluetooth

# CMHW
BOARD_HARDWARE_CLASS := device/bq/picmt/cmhw/src
TARGET_TAP_TO_WAKE_NODE := "/sys/android_touch/SMWP"

# Filesystem
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12895622922 # (BOARD_USERDATAIMAGE_PARTITION_SIZE - 16384 for crypto footer)

# Properties
TARGET_SYSTEM_PROP += device/bq/picmt/system.prop

# Inherit from the proprietary version
-include vendor/bq/picmt/BoardConfigVendor.mk