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

# Recovery
TARGET_RECOVERY_DEVICE_DIRS += $(DEVICE_PATH)
