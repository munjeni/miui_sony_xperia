#!/system/bin/sh

# Simple memory tweak for Xperia @ Munjeni 2012
#
# NOTE: this script is executed on every minute by crontab!
# ~80mb of the memory is awailable after executing this script

# free pagecache, dentries and inodes
sync && echo 3 > /proc/sys/vm/drop_caches

# check zram memory and empty if zram memory is full 
ZRAMUSSED=`cat /proc/swaps | grep /dev/zram0 | awk '{print $4}'`
if [[ $ZRAMUSSED > 60000 ]]; then
	/system/xbin/busybox swapoff /dev/zram0
	sleep 2
	/system/xbin/busybox swapon /dev/zram0
fi

# tweak lowmemorykiller
#MINFREE=`cat /sys/module/lowmemorykiller/parameters/minfree`
#if [ ! "$MINFREE" = "1536,2048,4096,5120,15360,23040" ]; then
#	echo "1536,2048,4096,5120,15360,23040" >/sys/module/lowmemorykiller/parameters/minfree
#fi
