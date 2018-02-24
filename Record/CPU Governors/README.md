# CPU Govornors (on Note 4 with custom Kernel)

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


