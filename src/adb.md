# adb

Download the 
[Android SDK Platform Tools](https://developer.android.com/studio/releases/platform-tools).

```bash
$ cd ~/Downloads
$ unzip platform-tools_r$VERSION-linux.zip
$ mv platform-tools ~/android-sdk-tools-v$VERSION
```

```bash
# ~/.bashrc
ANDROID_SDK_VERSION=31.0.3
PATH="$HOME/android-sdk-tools-v$ANDROID_SDK_VERSION:$PATH"
```

## update android os

[[source](https://developers.google.com/android/ota)]

Download OTA update image, enable USB debugging, then:

```bash
$ adb reboot recovery
# select "Apply update from ADB."
$ adb devices
$ filename=walleye-ota-rp1a.201005.004.a1-ccd1069b.zip
$ adb sideload $filename.zip
```

## install patched boot image

[[source](https://www.thecustomdroid.com/android-11-magisk-rooting-guide/)]

```bash
$ adb reboot bootloader
$ fastboot flashing unlock
$ fastboot devices
$ fastboot flash boot magisk_patched.img
$ fastboot reboot
```

- added patched image to zip, ran ./flash-all.sh

ps3 48:9E:BD:98:94:1F 48-9E-BD-98-94-1F
