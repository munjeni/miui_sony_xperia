#!/bin/bash

#-------------SETTINGS--------------

# comment this if you want default theme! Or set another theme name.
CWM_THEME_NAME="miui"

#-----------------------------------

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
rm -rf out ../full_miui ../miui/data/media/preinstall_apps/.placeholder
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

sed 's/mount("ext4", "EMMC", "\/dev\/block\/mmcblk0p10", "\/system");/ui_print("===============================");\
ui_print("           MIUI '${DEVICENAMUPPER}'        ");\
ui_print("===============================");\
ui_print("");\
unmount("\/system");\
unmount("\/data");\
ui_print("wipe data factory reset...");\
format("ext4", "EMMC", "\/dev\/block\/mmcblk0p11", "0");\
ui_print("deleting old android folders...");\
run_program("\/sbin\/sh", "\/sbin\/misc_del.sh");\
ui_print("installing android, please wait...");\
mount("ext4", "EMMC", "\/dev\/block\/mmcblk0p10", "\/system");/g' < updater-script > updater-script.temp

sed 's/package_extract_file("boot.img", "\/dev\/block\/mmcblk0p9");/set_perm(0, 0, 06755, "\/system\/xbin\/invoke-as");\
set_perm(0, 0, 06755, "\/system\/xbin\/shelld");\
mount("ext4", "EMMC", "\/dev\/block\/mmcblk0p11", "\/data");\
package_extract_dir("data", "\/data");\
set_perm_recursive(1000, 1000, 0755, 0644, "\/data\/preinstall_apps");\
set_perm(0, 0, 0755, "\/system\/bin\/sysinit");\
set_perm(0, 2000, 0755, "\/system\/bin\/tweak_mem.sh");\
set_perm(0, 0, 0755, "\/system\/etc\/init.d\/01ksm");\
set_perm(0, 0, 0755, "\/system\/etc\/init.d\/01cpufreq");\
set_perm(0, 0, 0755, "\/system\/etc\/init.d\/02zram");\
set_perm(0, 0, 0755, "\/system\/etc\/init.d\/03tweak");\
set_perm(0, 0, 0755, "\/system\/etc\/init.d\/90test");\
set_perm_recursive(0, 0, 0755, 0644, "\/system\/etc\/cron.d");\
package_extract_file("boot.img", "\/dev\/block\/mmcblk0p9");\
ui_print("===============================");\
ui_print("            WARNING:           ");\
ui_print("      Do not wipe anything!    ");\
ui_print("===============================");\
unmount("\/data");/g' < updater-script.temp > updater-script.temp2

mv -f updater-script.temp2 full_miui/META-INF/com/google/android/updater-script
rm -rf updater-script.temp updater-script
echo "copying new kernel modules..."
cp -fr KERNELS/$DEVICENAM/kernel_modules/* full_miui/system/lib/modules/

if [ ! -z $CWM_THEME_NAME ]; then
	echo -e "Aplying CWM Touch \"${CWM_THEME_NAME}\" theme..."
	'cp' -fr KERNELS/$DEVICENAM/cwm_themes/$CWM_THEME_NAME/res/images/* KERNELS/$DEVICENAM/ramdisk/res/images/
	cp -fr KERNELS/$DEVICENAM/recovery_rc16 KERNELS/$DEVICENAM/ramdisk/sbin/recovery
	chmod 755 KERNELS/$DEVICENAM/ramdisk/sbin/recovery
else
	echo "Using default CWM Touch theme."
	rm -rf KERNELS/$DEVICENAM/ramdisk/res/images/menu.txt
	'cp' -fr KERNELS/$DEVICENAM/cwm_themes/default/res/images/* KERNELS/$DEVICENAM/ramdisk/res/images/
	cp -fr KERNELS/$DEVICENAM/recovery_rc15 KERNELS/$DEVICENAM/ramdisk/sbin/recovery
	chmod 755 KERNELS/$DEVICENAM/ramdisk/sbin/recovery
fi

echo "compressing ramdisk..."
cd KERNELS/$DEVICENAM
rm -rf ramdisk/system/.placeholder ramdisk/sys/.placeholder ramdisk/dev/.placeholder ramdisk/data/.placeholder ramdisk/proc/.placeholder
../../tools/mkbootfs ./ramdisk | gzip > initrd.gz
echo "" >ramdisk/system/.placeholder
echo "" >ramdisk/sys/.placeholder
echo "" >ramdisk/dev/.placeholder
echo "" >ramdisk/data/.placeholder
echo "" >ramdisk/proc/.placeholder
echo "making new boot.img..."
rm -rf boot.img
python ../../tools/mkelf.py -o kernel.elf zImage@0x00008000 initrd.gz@0x01000000,ramdisk cmdline@cmdline
dd if=kernel.elf of=kernel.elf.bak bs=1 count=44
printf "\x04" >04
cat kernel.elf.bak 04 >kernel.elf.bak2
rm -rf kernel.elf.bak
dd if=kernel.elf of=kernel.elf.bak bs=1 skip=45 count=99
cat kernel.elf.bak2 kernel.elf.bak >kernel.elf.bak3
rm -rf kernel.elf.bak kernel.elf.bak2
cat kernel.elf.bak3 elf.3 >kernel.elf.bak
rm -rf kernel.elf.bak3
dd if=kernel.elf of=kernel.elf.bak2 bs=16 skip=79
cat kernel.elf.bak kernel.elf.bak2 >kernel.elf.bak3
rm -rf kernel.elf.bak kernel.elf.bak2 kernel.elf 04
mv kernel.elf.bak3 boot.img
cd ../..

echo "copying new boot image..."
cp -fr KERNELS/$DEVICENAM/boot.img full_miui/
rm -rf KERNELS/$DEVICENAM/boot.img KERNELS/$DEVICENAM/initrd.gz
if [ ! -z $CWM_THEME_NAME ]; then
	# just for git
	rm -rf KERNELS/$DEVICENAM/ramdisk/res/images/menu.txt
	'cp' -fr KERNELS/$DEVICENAM/cwm_themes/default/res/images/* KERNELS/$DEVICENAM/ramdisk/res/images/
	cp -fr KERNELS/$DEVICENAM/recovery_rc15 KERNELS/$DEVICENAM/ramdisk/sbin/recovery
	chmod 755 KERNELS/$DEVICENAM/ramdisk/sbin/recovery
fi

echo "copying GAPPS..."
cp -fr GAPPS/system/* full_miui/system/

if [ -d $DEVICENAM/prebuilts/xperia_keyboard ]; then
	echo "installing xperia keyboard..."
	cp -fr $DEVICENAM/prebuilts/xperia_keyboard/* full_miui/system/
else
	echo "Not adding xperia keyboard! If you want to add xperia keyboard to ${DEVICENAM}"
	echo "...copy them from stock rom! See lotus prebuilts folder to get idea!"
fi

if [ -d $DEVICENAM/prebuilts/agps ]; then
	echo "Adding agps support..."
	cp -fr $DEVICENAM/prebuilts/agps/etc/* full_miui/system/etc/
else
	echo "Not adding agps support! If you want to add agps support to ${DEVICENAM}"
	echo "...copy them from an rom! See lotus prebuilts folder to get idea!"
fi

if [ -d $DEVICENAM/prebuilts/fm_radio ]; then
	echo "Adding cracked stock FM radio package..."
	cp -fr $DEVICENAM/prebuilts/fm_radio/* full_miui/system/
else
	echo "Not adding cracked stock FM radio package! If you want to add FM radio to ${DEVICENAM}"
	echo "...copy them from an rom! See lotus prebuilts folder to get idea!"
fi

if [ -d $DEVICENAM/prebuilts/tweak ]; then
	echo "Adding tweak scripts..."
	cp -fr $DEVICENAM/prebuilts/tweak/* full_miui/system/
else
	echo "Not adding tweak scripts! If you want to add tweak scripts to ${DEVICENAM}"
	echo "...copy them from an rom! See lotus prebuilts folder to get idea!"
fi

if [ -d $DEVICENAM/prebuilts/nfc ]; then
	echo "Adding NFC permission xml file..."
	cp -fr $DEVICENAM/prebuilts/nfc/* full_miui/system/etc/permissions/
else
	echo "Not adding NFC permission xml file! If you want to add NFC permission xml file to ${DEVICENAM}"
	echo "...copy them from an rom! See lotus prebuilts folder to get idea! Make sure your phone support NFC!"
fi

echo "Replacing some MIUI files with needed files for current rom:"

MIUI_FILES_FOR_REPLACING="\
	system/bin/installd \
	system/lib/libhwui.so \
	system/lib/libjni_latinime.so"

for MFFRPC in $MIUI_FILES_FOR_REPLACING
do
	rm -rf full_miui/$MFFRPC && echo -e ${BLUE}full_miui/$MFFRPC${NC}
	unzip -p $DEVICENAM/stockrom.zip $MFFRPC > full_miui/$MFFRPC
done

echo "making final zip..."
cd full_miui && zip -r ../final.zip `ls` && cd ..

echo "cleaning up..."
rm -rf full_miui $DEVICENAM/out
echo "" >miui/data/media/preinstall_apps/.placeholder

TIMESTAMP=`date -u +%s`
echo ""
mv final.zip Unofficial_MIUI_${DEVICENAMUPPER}_${TIMESTAMP}.zip
echo ""
echo -e "${BLUE}Unofficial_MIUI_${DEVICENAMUPPER}_${TIMESTAMP}.zip${NC}"
echo "Done!"
