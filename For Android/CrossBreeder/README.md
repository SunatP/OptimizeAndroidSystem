## Mod info

This is the liter, newer version of CrossBreeder 

## Features

- Tweaks ported from CrossBreeder

> Remove /dev/random as it's blocking.

> Modulate OS entropy levels for lag redution

> Cgroup tweaking (Experimental)

- Liquid Smooth UI - Optimize touch pressure scale

- Fixed "only position independent executables (PIE) are supported" problem on Android 5.0+ device

## Features in [Add-on 1](https://forum.xda-developers.com/attachment.php?attachmentid=4419399&stc=1&d=1518579092)

- Virtual RAM tweak - Improve system performance

- Dynamic ZRAM/LMK tweak - will auto calibration the ZRAM/LMK every 60 sec

- Dynamic power savings - A tool that allows you to save more than 30% battery charge on your Android-device

- Greatly tweaked CPU governors for single and multi-core CPUs. Balanced performance and battery-saving. Currently supported:

> Ondemand

> Sprdemand

> Interactive

> InteractiveX

> Smartass

> SmartAssV2

> SmartAssH3

> PegasusQ

## How to use config files

Usage: cbconf <option> <value>

Options:
    cfs <value>
	    Set cgroup tweak on/off
            0 = off
            1 = on
        Current: $A

    dbs <value>
	    Set dynamic power savings on/off
            0 = off
            1 = on
        Current: $B

    ent <value>
	    Set entropy generator on/off
            0 = off
            1 = on
        Current: $D

    fde <value>
	    Set CPU governor tweak on/off
            0 = off
            1 = on
        Current: $E

    lmk <value>
	    Set dynamic LMK tweak on/off
            0 = off
            1 = on
        Current: $F

    rdm <value>
	    Set random tweak on/off
            0 = off
            1 = on
        Current: $G

    time <value>
        Set your own value
            default : 60
        Current: $N

    ui <value>
	    Set ui optimize on/off
            0 = off
            1 = on
        Current: $J

    vram <value>
	    Set dynamic vram tweak on/off
            0 = off
            1 = on
        Current: $K

    zram <value>
	    Set dynamic vram tweak on/off
            0 = off
            1 = on
        Current: $M

    log - Show the log file
	
## Credits

[Crossbreeder](https://forum.xda-developers.com/showthread.php?t=2113150) - For the main tweak

[FeraDroid Engine](https://forum.xda-developers.com/android/software-hacking/beta-feradroid-engine-v0-19-ultimate-t3284421) - For CPU Governor Tweak

[Dynamic Power Saving](http://4pda.ru/forum/index.php?showtopic=620736&st=1120)

## Support

[XDA Forum](https://forum.xda-developers.com/apps/magisk/tweak-crossbreeder-lite-t3594401)

## Changelog

2.1.1

- Removed network tweak, because a lot of people says it still cause problem.
- Removed Add-on2, because some people says it will cause problem.
- Support system install

2.1

- Changed thy way to configure this module
- Support Magisk v15
- Removed add-on's installation check to avoid install faild

2.0 

- Separate this module to 3 parts
- Fixed system install issue
- x86 support returned
- Removed LoopySmoothness Tweak
- Updated TCP Tweak
- Updated VRAM Tweak
- Add zipalign optimization tweak
- Default disable the Dynamic Power Saving because it cause a lot of problems.
- Fixed Wi-Fi hotspot error
- Fixed virtual ram tweak cause bootloop

1.7 

- Removed X86 support
- Delay 60sec to start this module to avoid some bug
- Changed dnsmasq position
- Add LoopySmoothness Tweak
- Removed Low-Voltage tweak
- Support Magisk v14

-------------------------------------Removed-------------------------------------
