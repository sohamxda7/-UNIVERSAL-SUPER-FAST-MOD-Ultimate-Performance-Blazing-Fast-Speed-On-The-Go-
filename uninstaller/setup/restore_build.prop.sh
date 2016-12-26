#!/tmp/busybox sh

# if backup exit
if [ -f /system/build.prop.backupUPB01 ]; then
	mv /system/build.prop /system/build.prop.modedUP01;
	mv /system/build.prop.backupUPB01 /system/build.prop;
fi
return 0;