#
# Copyright (C) 2013 Kaschemme
#
# Ideapad K1 specific stuff
#

# include specific apps
PRODUCT_COPY_FILES += \
        device/lenovo/k1/prebuilt/apps/com.s0up.goomanager-34-2.1.2.apk:system/app/com.s0up.goomanager-34-2.1.2.apk \

# include specific lenovo apps
PRODUCT_COPY_FILES += \
       device/lenovo/k1/prebuilt/bin/wwanloader:system/bin/wwanloader \
       device/lenovo/k1/prebuilt/bin/tegrastats:system/bin/tegrastats

# If we want our custom bootanimation, we have to add or change the following files:
# android/vendor/cm/config/common.mk
# android/vendor/cm/config/common_full_phone.mk
# android/vendor/cm/config/common_mini_phone.mk
# android/vendor/cm/config/common_full_tablet_wifionly.mk
# android/vendor/cm/config/common_mini_tablet_wifionly.mk
#
# PRODUCT_COPY_FILES +=  \
#    device/lenovo/k1/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip

