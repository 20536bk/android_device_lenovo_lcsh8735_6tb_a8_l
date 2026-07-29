#!/sbin/sh

LOG=/tmp/disable-stock-recovery.log

echo "Disabling stock recovery restore mechanism" > "$LOG"

mount /system >> "$LOG" 2>&1

mount -o remount,rw /system >> "$LOG" 2>&1 ||
mount -o rw,remount /system >> "$LOG" 2>&1

disable_file()
{
    src="$1"
    dst="${src}.twrp-disabled"

    if [ -e "$src" ]; then
        rm -f "$dst"
        if mv "$src" "$dst"; then
            echo "Disabled: $src" >> "$LOG"
        else
            echo "Failed: $src" >> "$LOG"
        fi
    fi
}

disable_file /system/recovery-from-boot.p
disable_file /system/bin/install-recovery.sh
disable_file /system/etc/install-recovery.sh
disable_file /system/recovery.img
disable_file /system/etc/recovery.img

sync
umount /system >> "$LOG" 2>&1

exit 0
