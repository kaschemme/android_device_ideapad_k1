#
# Copyright (C) 2012 kaschemme
#
# Ideapad K1 specific stuff
#

PRODUCT_PROPERTY_OVERRIDES += \
        ro.goo.developerid=krook1 \
        ro.goo.rom=cm7_CM10_K1 \
        ro.goo.version=1

# include specific apps
PRODUCT_COPY_FILES += \
	device/lenovo/k1/prebuilt/apps/com.jrummy.root.browserfree-203-v2.0.3.apk:system/app/com.jrummy.root.browserfree-203-v2.0.3.apk \
	device/lenovo/k1/prebuilt/apps/com.nolanlawson.logcat-39-v1.4.2.apk:system/app/com.nolanlawson.logcat-39-v1.4.2.apk \
	device/lenovo/k1/prebuilt/apps/com.s0up.goomanager-34-v2.1.2.apk:system/app/com.s0up.goomanager-34-v2.1.2.apk \
	device/lenovo/k1/prebuilt/apps/dk.andsen.aShell-3-v0.7.apk:system/app/dk.andsen.aShell-3-v0.7.apk \
	device/lenovo/k1/prebuilt/apps/org.nathan.jf.build.prop.editor-3-v2.0.0.apk:system/app/org.nathan.jf.build.prop.editor-3-v2.0.0.apk \
	device/lenovo/k1/prebuilt/apps/org.openintents.filemanager-20-v1.2.apk:system/app/org.openintents.filemanager-20-v1.2.apk \
        device/lenovo/k1/prebuilt/bootanimation.zip:/data/local/bootanimation.zip
