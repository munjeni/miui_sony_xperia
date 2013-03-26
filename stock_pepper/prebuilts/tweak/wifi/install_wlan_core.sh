#!/system/bin/sh

MAC_FILE=/data/etc/wlan_macaddr
COMMAND="/system/bin/insmod"
MOD_PATH="/system/lib/modules"
MOD_CORE="cw1200_core.ko"
MOD_WLAN="cw1200_wlan.ko"
ARG="macaddr="

if ( /system/bin/ls $MAC_FILE > /dev/null ); then
     ADDR=`/system/bin/cat $MAC_FILE`
     echo $COMMAND $MOD_PATH/$MOD_CORE $ARG$ADDR
     $COMMAND $MOD_PATH/$MOD_CORE $ARG$ADDR

else
     echo $COMMAND $MOD_PATH/$MOD_CORE
     $COMMAND $MOD_PATH/$MOD_CORE
fi

echo $COMMAND $MOD_PATH/$MOD_WLAN
$COMMAND $MOD_PATH/$MOD_WLAN
