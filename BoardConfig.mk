#
# Copyright (C) 2018 Texas Instruments Incorporated - http://www.ti.com/
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

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true

TARGET_BOOTIMAGE_FIT := true
TARGET_USES_64_BIT_BINDER := true

# Use mke2fs to create ext4 images
TARGET_USES_MKE2FS := true

BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648 #   2GB
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 805306368  # 768MB
BOARD_VENDORIMAGE_PARTITION_SIZE   := 268435456  # 256MB

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_BOARD_PLATFORM := am57x
TARGET_COPY_OUT_VENDOR := vendor

TARGET_RECOVERY_FSTAB = device/ti/beagle_x15/fstab.beagle_x15board
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RELEASETOOLS_EXTENSIONS := device/ti/beagle_x15

BOARD_SEPOLICY_DIRS += \
	device/ti/beagle_x15/sepolicy

BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
