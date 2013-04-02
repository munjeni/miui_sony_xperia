#!/bin/bash

for LIST in `ls /root/miui_sony_xperia/multilang/system/app`
do
	if [ -d /root/miui_sony_xperia/multilang/system/app/$LIST/res ]; then
		for VALUESLANG in `ls /root/miui_sony_xperia/multilang/system/app/$LIST/res`
		do
			if [ "$VALUESLANG" != "values" ]; then
				if [ -f /root/miui_sony_xperia/multilang/system/app/$LIST/res/$VALUESLANG/strings.xml ]; then
					[ ! -d /root/miui_sony_xperia/translations/$LIST/res/$VALUESLANG ] && mkdir -p /root/miui_sony_xperia/translations/$LIST/res/$VALUESLANG
					cp -fr /root/miui_sony_xperia/multilang/system/app/$LIST/res/$VALUESLANG/strings.xml /root/miui_sony_xperia/translations/$LIST/res/$VALUESLANG/strings.xml
				fi
			fi
		done
	fi 
done
