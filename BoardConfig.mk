#
# Copyright (C) 2022 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common mithorium-common
include device/xiaomi/mithorium-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/tiare

# Kernel
TARGET_PREBUILT_KERNEL := device/xiaomi/kernel-mithorium/tiare/Image.gz-dtb

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824

# Ramdisk
BOARD_RAMDISK_USE_LZMA := true
LZMA_RAMDISK_TARGETS := recovery

# Recovery
TARGET_RECOVERY_DEVICE_DIRS += $(DEVICE_PATH)

# TWRP
TW_EXCLUDE_BASH := true
TW_EXCLUDE_NANO := true
TW_EXTRA_LANGUAGES := false
