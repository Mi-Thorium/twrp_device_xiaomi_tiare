#
# Copyright (C) 2022 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mithorium-common
$(call inherit-product, device/xiaomi/mithorium-common/mithorium.mk)

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_RETROFIT_DYNAMIC_PARTITIONS := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
