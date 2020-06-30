#
# Copyright (C) 2015-2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/lenovo/A6020/overlay

# Include package config fragments
include $(LOCAL_PATH)/product/*.mk

$(call inherit-product, vendor/lenovo/A6020/A6020-vendor.mk)

# Wifi and Bluetooth
PRODUCT_PACKAGES += \
		wcnss_service \
		WCNSS_qcom_cfg.ini

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini \

# Radio
PRODUCT_PACKAGES += \
    wcnss_service \
    qti-telephony-common

PRODUCT_BOOT_JARS += \
    telephony-ext
