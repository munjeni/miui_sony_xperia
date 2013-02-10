#!/sbin/sh

find /sdcard/Android -type f -exec rm -rf {} \;
find /sdcard/Android -type d -exec rm -rf {} \;
find /sdcard/.android_secure -type f -exec rm -rf {} \;
find /sdcard/.android_secure -type d -exec rm -rf {} \;
