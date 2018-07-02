##########################################################################################
#
# Magisk Module Template Config Script
# by topjohnwu
#
##########################################################################################
##########################################################################################
#
# Instructions:
#
# 1. Place your files into system folder (delete the placeholder file)
# 2. Fill in your module's info into module.prop
# 3. Configure the settings in this file (config.sh)
# 4. If you need boot scripts, add them into common/post-fs-data.sh or common/service.sh
# 5. Add your additional or modified system properties into common/system.prop
#
##########################################################################################

##########################################################################################
# Configs
##########################################################################################

# Set to true if you need to enable Magic Mount
# Most mods would like it to be enabled
AUTOMOUNT=true

# Set to true if you need to load system.prop
PROPFILE=false

# Set to true if you need post-fs-data script
POSTFSDATA=false

# Set to true if you need late_start service script
LATESTARTSERVICE=true

# Set to true if you need system install function
SYSTEMINSTALL=true

##########################################################################################
# Installation Message
##########################################################################################

# Set what you want to show when installing your mod

print_modname() {
  ui_print "******************************"
  ui_print "CrossBreeder Lite Edition v2.1.1"
  ui_print "******************************"
}

##########################################################################################
# Replace list
##########################################################################################

# List all directories you want to directly replace in the system
# Check the documentations for more info about how Magic Mount works, and why you need this

# This is an example
REPLACE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

# Construct your own list here, it will override the example above
# !DO NOT! remove this if you don't need to replace anything, leave it empty as it is now
REPLACE="
"

##########################################################################################
# System Install
##########################################################################################

system_install() {

  # Extract files to real system. Use your own method if needed
  ui_print "- Extracting module files to system"
  
  ui_print "- Mounting partitions"
  mount -o rw,remount /system 2>/dev/null
  mount -o rw,remount /data 2>/dev/null
  mount -o rw,remount /cache 2>/dev/null
  mount -o rw,remount /vendor 2>/dev/null
  
  cp -rf $INSTALLER/system-$ABI/* /system
  
  RNGD=/system/bin/rngd
  XRNGD=/system/xbin/rngd
  QRNGD=/system/bin/qrngd
  XQRNGD=/system/xbin/qrngd
  for SEED in $RNGD $XRNGD $QRNGD $XQRNGD; do
    [ -f $SEED ] && rm -f $SEED
  done
  
  cp -af $INSTALLER/common/service.sh /system/etc/init.d/CBL_initd
	
  set_perm_recursive /system/etc/CrossBreeder  0  0  0755  0755
  set_perm_recursive /system/etc/init.d        0  0  0755  0755
  set_perm_recursive /system/xbin  0  0  0755  0755
  
  ui_print "- Unmounting partitions"
  umount -l /system_root 2>/dev/null
  umount -l /system 2>/dev/null
  umount -l /vendor 2>/dev/null
  umount -l /dev/random 2>/dev/null
  
  exit 0
}

##########################################################################################
# Extract process
##########################################################################################

extract_process() { 
  # Extract files to system. Use your own method if needed
  ui_print "- Extracting module files"
  unzip -o "$ZIP" -d $INSTALLER 2>/dev/null
  mkdir -p $MODPATH/system
  cp -rf $INSTALLER/system-$ABI/* $MODPATH/system

  RNGD=/system/bin/rngd
  XRNGD=/system/xbin/rngd
  QRNGD=/system/bin/qrngd
  XQRNGD=/system/xbin/qrngd
  for SEED in $RNGD $XRNGD $QRNGD $XQRNGD; do
    [ -f $SEED ] && touch $MODPATH$SEED
  done

  cp -af $INSTALLER/common/cbconf.prop /data/cbconf.prop

}

##########################################################################################
# Uninstall process
##########################################################################################

uninstall_process() {
  # Remove files during uninstall. Use your own method if needed

  ui_print "- Removing module files"
  rm -f /data/cbconf.prop
  rm -f /data/*.pid
  rm -f /cache/*.log

}

##########################################################################################
# Permissions
##########################################################################################

set_permissions() {
  # Only some special files require specific permissions
  # The default permissions should be good enough for most cases

  # Here are some examples for the set_perm functions:

  # set_perm_recursive  <dirname>                <owner> <group> <dirpermission> <filepermission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm_recursive  $MODPATH/system/lib       0       0       0755            0644

  # set_perm  <filename>                         <owner> <group> <permission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm  $MODPATH/system/bin/app_process32   0       2000    0755         u:object_r:zygote_exec:s0
  # set_perm  $MODPATH/system/bin/dex2oat         0       2000    0755         u:object_r:dex2oat_exec:s0
  # set_perm  $MODPATH/system/lib/libart.so       0       0       0644

  # The following is default permissions, DO NOT remove
  set_perm_recursive  $MODPATH  0  0  0755  0644
  set_perm_recursive  $MODPATH/system  0  0  0755  0755

}

##########################################################################################
# Custom Functions
##########################################################################################

# This file (config.sh) will be sourced by the main flash script after util_functions.sh
# If you need custom logic, please add them here as functions, and call these functions in
# update-binary. Refrain from adding code directly into update-binary, as it will make it
# difficult for you to migrate your modules to newer template versions.
# Make update-binary as clean as possible, try to only do function calls in it.

