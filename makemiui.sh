#!/bin/bash

red='\e[0;31m'
RED='\e[1;31m'
blue='\e[0;34m'
BLUE='\e[1;34m'
cyan='\e[0;36m'
CYAN='\e[1;36m'
NC='\e[0m' # No Color

if [ -z $1 ]; then
	echo -e "${RED}Are you chosed device?${NC}"
	echo -e "${BLUE}Example:${NC}"
	echo -e "${BLUE}./makemiui lotus${NC}"
	exit 0
fi
DEVICENAM=$1
DEVICENAMUPPER=`echo ${DEVICENAM} | tr "[:lower:]" "[:upper:]"`

if [ ! -d $DEVICENAM ]; then
	echo -e "${RED}Error building!${NC}"
	echo -e "${BLUE}Sorry, \"$DEVICENAM\" curently is not supported!${NC}"
	exit 0
fi

if [ ! -f $DEVICENAM/stockrom.zip ]; then
	echo -e "${RED}Error building!${NC}"
	echo -e "${BLUE}Copy CM9 rom to \"$DEVICENAM\" folder and rename it to stockrom.zip!${NC}"
	exit 0
fi

WHEREIM=`pwd`
export PATH=$PATH:$WHEREIM/tools

. build/envsetup.sh
cd $DEVICENAM
rm -rf out
make fullota

if [ ! -f out/fullota.zip ]; then
	echo "Error building... stopping now!"
	exit 0
fi

cd ..
echo "extracting updater-script and patching updater-script..."
mkdir full_miui && cd full_miui
rm -rf ../updater-script
unzip ../$DEVICENAM/out/fullota.zip  >/dev/null 2>&1
cd ..
unzip -p $DEVICENAM/stockrom.zip META-INF/com/google/android/updater-script >updater-script

sed 's/show_progress(0.500000, 0);/ui_print("===============================");\
ui_print("           MIUI '${DEVICENAMUPPER}'        ");\
ui_print("===============================");\
ui_print("");\
unmount("\/system");\
show_progress(0.500000, 0);/g' < updater-script > updater-script.temp

sed 's/show_progress(0.100000, 0);/set_perm(0, 0, 06755, "\/system\/xbin\/invoke-as");\
set_perm(0, 0, 06755, "\/system\/xbin\/shelld");\
mount("ext4", "EMMC", "\/dev\/block\/mmcblk0p11", "\/data");\
package_extract_dir("data", "\/data");\
set_perm_recursive(1000, 1000, 0755, 0644, "\/data\/preinstall_apps");\
show_progress(0.100000, 0);\
unmount("\/data");/g' < updater-script.temp > updater-script.temp2

mv -f updater-script.temp2 full_miui/META-INF/com/google/android/updater-script
rm -rf updater-script.temp updater-script
echo "copying new kernel modules..."
cp -fr KERNELS/$DEVICENAM/kernel_modules/* full_miui/system/lib/modules/
echo "copying new boot image..."
cp -fr KERNELS/$DEVICENAM/boot.img full_miui/
echo "copying GAPPS..."
cp -fr GAPPS/system/* full_miui/system/
if [ -d $DEVICENAM/prebuilts/xperia_keyboard ]; then
	echo "installing xperia keyboard"
	cp -fr $DEVICENAM/prebuilts/xperia_keyboard/* full_miui/system/
fi
echo "making final zip..."
cd full_miui && zip -r ../final.zip `ls` && cd ..
echo "cleaning up..."
rm -rf full_miui $DEVICENAM/out
TIMESTAMP=`date -u +%s`
echo ""
mv final.zip Unofficial_MIUI_${DEVICENAMUPPER}_${TIMESTAMP}.zip
echo ""
echo -e "${BLUE}Unofficial_MIUI_${DEVICENAMUPPER}_${TIMESTAMP}.zip${NC}"
echo "Done!"
