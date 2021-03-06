#
# Copyright (C) 2014 The Android-x86 Open Source Project
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

GAPPS_VARIANT := micro
PRODUCT_PACKAGES += Chrome
PRODUCT_PACKAGES += Maps
PRODUCT_PACKAGES += GooglePlus
PRODUCT_PACKAGES += Hangouts
PRODUCT_PACKAGES += Japanese
PRODUCT_PACKAGES += Korean
GAPPS_EXCLUDED_PACKAGES := PrebuiltGmsCoreInstantApps

PRODUCT_PROPERTY_OVERRIDES := \
    ro.kernel.android.gps=ttyUSB0 \
    ro.kernel.android.gpsttybaud=4800

$(call inherit-product,build/target/product/languages_full.mk)

# includes the base of Android-x86 platform
$(call inherit-product,device/generic/common/x86_64.mk)

$(call inherit-product,vendor/opengapps/build/opengapps-packages.mk)

# Overrides
PRODUCT_NAME := android_x86_64
PRODUCT_BRAND := Android-x86
PRODUCT_DEVICE := x86_64
PRODUCT_MODEL := Generic Android-x86_64
