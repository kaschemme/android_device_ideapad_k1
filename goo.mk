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
       device/lenovo/k1/prebuilt/wwanloader:system/bin/wwanloader \
       device/lenovo/k1/prebuilt/tegrastats:system/bin/tegrastats

# include custom bootanimation
PRODUCT_COPY_FILES += \
        device/lenovo/k1/prebuilt/bootanimation.zip:/data/local/bootanimation.zip
