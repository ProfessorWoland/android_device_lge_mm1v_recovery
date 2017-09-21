#
# Copyright (C) 2015 The Android Open-Source Project
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
#

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product, device/lge/mm1v/full_mm1v.mk)

PRODUCT_NAME := omni_mm1v

PRODUCT_PACKAGES += \
    fstab.mt6735 \
    init.mt6735.rc \
    init.mt6735.modem.rc \
    init.mt6735.usb.rc \
    meta_init.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    factory_init.rc \
    factory_init.usb.rc \
    factory_init.project.rc \
    ueventd.mt6735.rc
