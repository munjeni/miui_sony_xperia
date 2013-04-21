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
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "Mms" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "MiuiHome" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "Settings" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "Music" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "Phone" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "MiuiGallery" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "ThemeManager" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "AntiSpam" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "Backup" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "Browser" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "BugReport" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "Calculator" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "Calendar" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "CalendarProvider" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "CloudService" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "Contacts" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "ContactsProvider" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "DeskClock" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "DownloadProvider" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "DownloadProviderUi" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "FileExplorer" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "Notes" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "PackageInstaller" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "QuickSearchBox" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "SettingsProvider" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "SoundRecorder" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "TelephonyProvider" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "TelocationProvider" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "Updater" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "Stk" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "Bluetooth" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "WeatherProvider" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "NetworkAssistant" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "XiaomiServiceFramework" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "MiuiVideoPlayer" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "VpnDialogs" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi

if [ $1 = "AirkanPhoneService" ]; then
	[ -d $PORT_ROOT/translations/$1/assets ] && cp -fr $PORT_ROOT/translations/$1/assets $2/
       for LIST in `ls $PORT_ROOT/translations/$1/res/`
       do
		[ ! -d $2/res/$LIST ] && mkdir $2/res/$LIST
		if [ -f $2/res/values/strings.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/strings.xml ] && php -f $PORT_ROOT/tools/strings.php a=$2/res/values/strings.xml b=$PORT_ROOT/translations/$1/res/$LIST/strings.xml c=$2/res/$LIST/strings.xml
		fi
		if [ -f $2/res/values/arrays.xml ]; then
			if [ "$LIST" != "values" ]; then
				if [ -f $PORT_ROOT/translations/$1/res/$LIST/arrays.xml ]; then
					php -f $PORT_ROOT/tools/arrays.php a=$2/res/values/arrays.xml b=$PORT_ROOT/translations/$1/res/$LIST/arrays.xml c=$2/res/$LIST/arrays.xml
				fi
			fi
		fi
		if [ -f $2/res/values/plurals.xml ]; then
			[ -f $PORT_ROOT/translations/$1/res/$LIST/plurals.xml ] && php -f $PORT_ROOT/tools/plurals.php a=$2/res/values/plurals.xml b=$PORT_ROOT/translations/$1/res/$LIST/plurals.xml c=$2/res/$LIST/plurals.xml
		fi
	done
	#WARNING!!! This will copy all drawables including xml files!
	for RAW in `ls $PORT_ROOT/translations/$1/res | grep raw`
	do
		[ -d $PORT_ROOT/translations/$1/res/$RAW ] && cp -fr $PORT_ROOT/translations/$1/res/$RAW $2/res/
	done
fi
