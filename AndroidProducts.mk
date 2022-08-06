#
# Copyright (C) 2022 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/twrp_tiare.mk

COMMON_LUNCH_CHOICES := \
    twrp_tiare-user \
    twrp_tiare-userdebug \
    twrp_tiare-eng

PRODUCT_MAKEFILES += \
    $(LOCAL_DIR)/omni_tiare.mk

COMMON_LUNCH_CHOICES += \
    omni_tiare-user \
    omni_tiare-userdebug \
    omni_tiare-eng
