#!/bin/sh

# umount
umount /system
umount /data

#classic mount from fstab
mount `cat /etc/fstab | grep /system | cut -d " " -f1,2` || exit 1;
mount `cat /etc/fstab | grep /data | cut -d " " -f1,2` || exit 1;

/tmp/busybox mount -o rw,remount /system
/tmp/busybox mount -o rw,remount /data

exit 0;
