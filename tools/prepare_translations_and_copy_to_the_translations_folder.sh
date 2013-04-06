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
				if [ -f /root/miui_sony_xperia/multilang/system/app/$LIST/res/$VALUESLANG/arrays.xml ]; then
					[ ! -d /root/miui_sony_xperia/translations/$LIST/res/$VALUESLANG ] && mkdir -p /root/miui_sony_xperia/translations/$LIST/res/$VALUESLANG
					cp -fr /root/miui_sony_xperia/multilang/system/app/$LIST/res/$VALUESLANG/arrays.xml /root/miui_sony_xperia/translations/$LIST/res/$VALUESLANG/arrays.xml
				fi
				if [ -f /root/miui_sony_xperia/multilang/system/app/$LIST/res/$VALUESLANG/plurals.xml ]; then
					[ ! -d /root/miui_sony_xperia/translations/$LIST/res/$VALUESLANG ] && mkdir -p /root/miui_sony_xperia/translations/$LIST/res/$VALUESLANG
					cp -fr /root/miui_sony_xperia/multilang/system/app/$LIST/res/$VALUESLANG/plurals.xml /root/miui_sony_xperia/translations/$LIST/res/$VALUESLANG/plurals.xml
				fi
				rm -rf /root/miui_sony_xperia/translations/*/res/values-land
				rm -rf /root/miui_sony_xperia/translations/*/res/values-port
				rm -rf /root/miui_sony_xperia/translations/*/res/values-sw*dp
			fi
		done
	fi

	if [ -d /root/miui_sony_xperia/multilang/system/app/$LIST/assets ]; then
		cp -fr /root/miui_sony_xperia/multilang/system/app/$LIST/assets /root/miui_sony_xperia/translations/$LIST/
	fi

	cp -fr /root/miui_sony_xperia/multilang/system/app/$LIST/res/drawable* /root/miui_sony_xperia/translations/$LIST/res/ 
	cp -fr /root/miui_sony_xperia/multilang/system/app/$LIST/res/raw* /root/miui_sony_xperia/translations/$LIST/res/ 
done
