#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
echo "original dir: $2"
echo "target dir:$1"
if [ $1 = "AntiSpam" ]; then
	for LIST in `ls $PORT_ROOT/translations/$1/res/`
	do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		php -f $PORT_ROOT/tools/prevod.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
	done
fi

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

