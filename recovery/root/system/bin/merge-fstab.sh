#!/system/bin/sh
echo >> /system/etc/recovery.fstab
cat /system/etc/recovery.fstab.device >> /system/etc/recovery.fstab
echo >> /system/etc/twrp.flags
cat /system/etc/twrp.flags.device >> /system/etc/twrp.flags

# Dynamic Partitions
if dd if=/dev/block/by-name/system bs=256k count=1|strings|grep tiare_dynpart > /dev/null; then
    sed -i 's|/dev/block/bootdevice/by-name/cache|/dev/block/bootdevice/by-name/logdump|g' /system/etc/twrp.flags
    echo >> /system/etc/recovery.fstab
    cat /system/etc/recovery.fstab.dynpart >> /system/etc/recovery.fstab
else
    echo >> /system/etc/twrp.flags
    cat /system/etc/twrp.flags.nondynpart >> /system/etc/twrp.flags
fi
