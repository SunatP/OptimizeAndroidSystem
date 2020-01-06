# CPU Governors (on Note 4 with custom Kernel)

## This is my Record by Custom kernel 


### Lionheart

Summary : PERFORMANCE : GREAT, BATTERY LIFE : GOOD, COMPATIBILITY : GOOD

Description:
Lionheart is a conservative-based governor which is based on samsung's update3 source.
The tunables (such as the thresholds and sampling rate) were changed so the governor behaves more like the performance one, at the cost of battery as the scaling is very aggressive.


### IntelliActive

Summary:
PERFORMANCE : EXCELLENT, BATTERY LIFE : GOOD, COMPATIBILITY : GOOD

Description:
Based off Google's Interactive governor with the following enhancements:

1. self-boost capability from input drivers (no need for PowerHAL assist)
2. two phase scheduling (idle/busy phases to prevent from jumping directly to max freq
3. Checks for offline cpus and short circuits some unnecessary checks to improve code execution paths. Therefore, it avoids CPU hotplugging.

Created by Faux


### Impulse

Summary:
PERFORMANCE : EXCELLENT, BATTERY LIFE : GREAT, COMPATIBILITY : GREAT

Description:
An improved version of interactive modified by neobuddy89. Impulse aims to have a balance between battery and performance just like interactive but has some tweaks to save battery. 

### Alucard

Summary:
PERFORMANCE : GOOD, BATTERY LIFE : EXCELLENT, COMPATIBILITY : GOOD

Description:
Alucard is based on ondemand but has been heavily tweaked to bring better battery life and performance. It has been known to be battery friendly without sacrificing much performance.


### ConservativeX

Summary:
PERFORMANCE : GOOD, BATTERY LIFE : GREAT, COMPATIBILITY : GOOD

Description:
Developed by Imoseyon (feat. briefly in the Lean Kernel for Galaxy Nexus), the ConservativeX governor behaves like the Conservative governor with the added benefit of locking the CPU frequency to the lowest interval when the screen is off. This governor may additionally perform hotplugging on CPU1, but there is no documentation to confirm that suspicion at this time.


### Interactive

Summary:
PERFORMANCE : EXCELLENT, BATTERY LIFE : GOOD, COMPATIBILITY : EXCELLENT

Description:
Interactive scales the clockspeed over the course of a timer set by the kernel developer (or user). In other words, if an application demands a ramp to maximum clockspeed (by placing 100% load on the CPU), a user can execute another task before the governor starts reducing CPU frequency. Because of this timer, Interactive is also better prepared to utilize intermediate clockspeeds that fall between the minimum and maximum CPU frequencies. It is significantly more responsive than OnDemand, because it's faster at scaling to maximum frequency.

Interactive also makes the assumption that a user turning the screen on will shortly be followed by the user interacting with some application on their device. Because of this, screen on triggers a ramp to maximum clockspeed, followed by the timer behavior described above.

Interactive is the default governor of choice for today's smartphone and tablet manufacturers.

### Userspace

Summary:
PERFORMANCE : UNKNOWN, BATTERY LIFE : UNKNOWN, COMPATIBILITY : POOR

Description:
This governor, exceptionally rare for the world of mobile devices, allows any program executed by the user to set the CPU's operating frequency. This governor is more common amongst servers or desktop PCs where an application (like a power profile app) needs privileges to set the CPU clockspeed.

### Bioshock

Summary:
PERFORMANCE : GOOD, BATTERY LIFE : GREAT, COMPATIBILITY : GOOD

Description:
CPU governor developed by Jamison904. A mix of ConservativeX and Lionheart


### Performance

Summary:
PERFORMANCE : EXCELLENT, BATTERY LIFE : POOR, COMPATIBILITY : EXCELLENT

Description:
The performance governor locks the phone's CPU at maximum frequency.


```bash
Smartmax_eps # Extreme Power Saving it is not a very good gaming governor (again!) This is only found on newer devices. 
Smartmax # By default this is configured for battery saving, so this is NOT a gaming or benchmark governor! Additionally
Yankactive # This governor behaves more battery friendly than the original interactive governor without sacrificing performance.
Blu_active # mainly focused on performance like the other things the developer creates but it is also well balanced for gaming and general usage
IntelliMM # It is battery friendly and spends most of the time at lower frequencies.
Pegasusq # It is quite stable and has the same battery life as ondemand.
Hyper # This is a more smoothness oriented governor which means that it is good for performance, without sacrificing much battery life. 
Perservative # This is most beneficial when you are doing something like reading; the screen is static or playing light games that won't need boosting any more. 
ConservativeX # ConservativeX governor behaves like the Conservative governor with the added benefit of locking the CPU frequency to the lowest interval when the screen is off
Alucard # Battery friendly without sacrificing much performance.
SmartassV2 # The motto of this governor is a balance between performance and battery
Darkness # Based on nightmare but more simple and fast,
Nightmare # A good compromise between performance and battery. In addition to the SoD is a prevention because it usually does not hotplug.
Wheatley # Wheatley is a more performance orientated governor as it scales more aggressively than ondemand and sticks with higher frequencies. 
OnDemandPlus # Ondemandplus is an ondemand and interactive-based governor that has additional power-saving capabilities while maintaining very snappy performance.
Dance Dance # It is a performance focused governor but also blends with some battery savings
Conservative # Conservative Governor is also frequently described as a "slow OnDemand"
Ondemand # OnDemand was commonly chosen by smartphone manufacturers in the past because it is well-tested and reliable
Userspace # This governor is more common amongst servers or desktop PCs where an application (like a power profile app) needs privileges to set the CPU clockspeed
Wave # Based on Conservative with some tweaks for speed and battery
Bioshock # Good balance between battery savings and performance
Lionheart # The governor behaves more like the performance one, at the cost of battery as the scaling is very aggressive
Interactive # Interactive is also better prepared to utilize intermediate clockspeeds that fall between the minimum and maximum CPU frequencies
Performance # The performance governor locks the phone's CPU at maximum frequency.
```

For Performance 

```bash
Blu_active
Hyper
Wheatley
Darkness
Dance Dance
Wave
Lionheart
Performance
Interactive
```

For DailyUse/Battery Friendly

```bash
Smartmax_eps
Smartmax
Yankactive
IntelliMM
Pegasusq
Perservative
ConservativeX
Conservative
Alucard
OnDemandPlus
Ondemand
Bioshock
```

For Balanced

```bash
SmartassV2
Nightmare
```