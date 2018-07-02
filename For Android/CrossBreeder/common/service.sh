#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread

rm -f /data/*.pid
rm -f /cache/crossbreeder.log

setprop $(grep cfs /data/cbconf.prop)
setprop $(grep dbs /data/cbconf.prop)
setprop $(grep ent /data/cbconf.prop)
setprop $(grep fde /data/cbconf.prop)
setprop $(grep lmk /data/cbconf.prop)
setprop $(grep rdm /data/cbconf.prop)
setprop $(grep time /data/cbconf.prop)
setprop $(grep vram /data/cbconf.prop)
setprop $(grep ui /data/cbconf.prop)
setprop $(grep zram /data/cbconf.prop)

touch /cache/crossbreeder.log

sleep 60

( /system/etc/CrossBreeder/CHECK_PROCS )&

/system/etc/CrossBreeder/zzCrossBreeder

/system/etc/CrossBreeder/FDE

( /system/etc/CrossBreeder/DBS )&

( while [ -f /system/etc/CrossBreeder/RAM ]; do

/system/etc/CrossBreeder/RAM

sleep $(getprop persist.crossbreeder.time)

done )&
