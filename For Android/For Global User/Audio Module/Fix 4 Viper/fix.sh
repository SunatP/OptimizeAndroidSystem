#!/sbin/sh

busybox sed -i '/deep_buffer {/,/}/s/^/#/' /system/etc/audio_policy.conf

# Normal/vendor config locations
CONFIG_FILE=/system/etc/audio_effects.conf
VENDOR_CONFIG=/system/vendor/etc/audio_effects.conf

# If vendor exists, patch it
if [ -f $VENDOR_CONFIG ];
then
	# Remove library & effect
 sed -i '/v4a_fx {/,/}/d' $VENDOR_CONFIG

 # Remove library & effect
 sed -i '/v4a_standard_fx {/,/}/d' $VENDOR_CONFIG
 
fi
 
 # Remove library & effect
 sed -i '/v4a_fx {/,/}/d' $CONFIG_FILE

 # Remove library & effect
 sed -i '/v4a_standard_fx {/,/}/d' $CONFIG_FILE

# Normal/vendor config locations
CONFIG_FILE=/system/etc/audio_effects.conf
VENDOR_CONFIG=/system/vendor/etc/audio_effects.conf
# If vendor exists, patch it
if [ -f $VENDOR_CONFIG ];
then
 # Add libary
	sed -i 's/^libraries {/libraries {\n  v4a_fx {\n    path \/system\/lib\/soundfx\/libv4a_fx_ics.so\n  }/g' $VENDOR_CONFIG
	
	# Add effect
	sed -i 's/^effects {/effects {\n  v4a_standard_fx {\n    library v4a_fx\n    uuid 41d3c987-e6cf-11e3-a88a-11aba5d5c51b\n  }/g' $VENDOR_CONFIG
fi

 # Add libary
 sed -i 's/^libraries {/libraries {\n  v4a_fx {\n    path \/system\/lib\/soundfx\/libv4a_fx_ics.so\n  }/g' $CONFIG_FILE

 # Add effect
 sed -i 's/^effects {/effects {\n  v4a_standard_fx {\n    library v4a_fx\n    uuid 41d3c987-e6cf-11e3-a88a-11aba5d5c51b\n  }/g' $CONFIG_FILE

# Normal/vendor config locations
CONFIG_FILE=/system/etc/htc_audio_effects.conf
VENDOR_CONFIG=/vendor/etc/audio_effects.conf
# If vendor exists, patch it
if [ -f $VENDOR_CONFIG ];
then
 # Remove library & effect
 sed -i '/v4a_fx {/,/}/d' $VENDOR_CONFIG

 # Remove library & effect
 sed -i '/v4a_standard_fx {/,/}/d' $VENDOR_CONFIG
fi

 # Remove library & effect
 sed -i '/v4a_fx {/,/}/d' $CONFIG_FILE

 # Remove library & effect
 sed -i '/v4a_standard_fx {/,/}/d' $CONFIG_FILE


# Normal/vendor config locations
CONFIG_FILE=/system/etc/htc_audio_effects.conf
VENDOR_CONFIG=/vendor/etc/audio_effects.conf
# If vendor exists, patch it
if [ -f $VENDOR_CONFIG ];
then
 # Add libary
	sed -i 's/^libraries {/libraries {\n  v4a_fx {\n    path \/system\/lib\/soundfx\/libv4a_fx_ics.so\n  }/g' $VENDOR_CONFIG
	
	# Add effect
	sed -i 's/^effects {/effects {\n  v4a_standard_fx {\n    library v4a_fx\n    uuid 41d3c987-e6cf-11e3-a88a-11aba5d5c51b\n  }/g' $VENDOR_CONFIG
fi

 # Add libary
	sed -i 's/^libraries {/libraries {\n  v4a_fx {\n    path \/system\/lib\/soundfx\/libv4a_fx_ics.so\n  }/g' $CONFIG_FILE
	
	# Add effect
	sed -i 's/^effects {/effects {\n  v4a_standard_fx {\n    library v4a_fx\n    uuid 41d3c987-e6cf-11e3-a88a-11aba5d5c51b\n  }/g' $CONFIG_FILE

echo " " >> /system/build.prop
echo "# ViPER Fix By androidexpert35" >> /system/build.prop
echo " " >> /system/build.prop
echo "audio.deep_buffer.media=false" >> /system/build.prop
echo "ro.ril.enable.amr.wideband=1" >> /system/build.prop
echo " " >> /system/build.prop