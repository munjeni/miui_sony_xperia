#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
echo "original dir: $2"
echo "target dir:$1"

if [ $1 = "MiuiSystemUI" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "Mms" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "MiuiHome" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "Settings" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "Music" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "Phone" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "MiuiGallery" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "ThemeManager" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "AntiSpam" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "Backup" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "Browser" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "BugReport" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "Calculator" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "Calendar" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
	[ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ] && cp -fr $PORT_ROOT/translations/$1/res/$LIST/arrays.xml $2/res/$LIST/arrays.xml
	[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && cp -fr $PORT_ROOT/translations/$1/res/$LIST/arrays.xml $2/res/$LIST/plurals.xml
fi

if [ $1 = "CalendarProvider" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "CloudService" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "Contacts" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "ContactsProvider" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "DeskClock" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
	[ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ] && cp -fr $PORT_ROOT/translations/$1/res/$LIST/arrays.xml $2/res/$LIST/arrays.xml
	[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && cp -fr $PORT_ROOT/translations/$1/res/$LIST/arrays.xml $2/res/$LIST/plurals.xml
fi

if [ $1 = "DownloadProvider" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "DownloadProviderUi" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "FileExplorer" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "MiuiCompass" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "Notes" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "PackageInstaller" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "QuickSearchBox" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "SettingsProvider" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "SoundRecorder" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "TelephonyProvider" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "TelocationProvider" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "Updater" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "Stk" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "Bluetooth" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "WeatherProvider" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "NetworkAssistant" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "XiaomiServiceFramework" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "MiuiVideoPlayer" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "VpnDialogs" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

if [ $1 = "AirkanPhoneService" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi
