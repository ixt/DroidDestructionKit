#!/bin/bash
# Push various .apk tools to a connected Android device. Giles R. Greenway 05/2015
# Giles R. Greenway 05/2015

cd /tools
adb install /tools/apk/Android-SSL-TrustKiller.apk && adb install /tools/apk/VpnReverseTether.apk && adb install /tools/drozer/agent.apk

case $? in
         0)
                zenity --info --text="Tools installed.";;
         1)
                zenity --error --text="An unexpected error has occurred.";;
        -1)
                zenity --error --text="An unexpected error has occurred.";;
esac