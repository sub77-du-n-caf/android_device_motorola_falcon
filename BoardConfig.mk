#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common msm8226-common
-include device/motorola/msm8226-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/falcon

# Assert
TARGET_BOOTLOADER_BOARD_NAME := falcon

# Camera
BOARD_GLOBAL_CFLAGS += -DCAMERA_VENDOR_L_COMPAT

# Kernel
TARGET_KERNEL_CONFIG := falcon_defconfig

# Init
TARGET_INIT_VENDOR_LIB := libinit_falcon
TARGET_RECOVERY_DEVICE_MODULES := libinit_falcon
TARGET_UNIFIED_DEVICE := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1023410176
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5930598400 # 5930614784 - 16384
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 694288384

# Release tools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# inherit from the proprietary version
-include vendor/motorola/falcon/BoardConfigVendor.mk
