# Copyright 2015 Marek Szanyi
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

# Inherit from the Hammerhead product configuration
$(call inherit-product, device/lge/hammerhead/aosp_hammerhead.mk)

PRODUCT_NAME := aosp_memdump
PRODUCT_BRAND := memdump
PRODUCT_MODEL := memdump on hammerhead
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := true

$(call inherit-product, vendor/memdump/device.mk)
$(call inherit-product-if-exists, vendor/lge/hammerhead/device-vendor.mk)

PRODUCT_NAME := aosp_memdump

PRODUCT_PACKAGES += \
    Callguard \
    Callblocking