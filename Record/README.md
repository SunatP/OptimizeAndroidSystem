# Fix Stuttering on Spotify while playing screen off 

## While use _**HV Charging** (High Voltage 9V 1.67A) 
```
	Peak Current = 2245 mA (Over current that's mean Over Charge) 
	Input Current = 1021 mA
	Solve Use Charger 5V 2A is better than 9V 1.67A Charger
```

### Temperature of Battery while Charge(Degree Celsius) Update 5/2/2017
```
	Max = 43 C 
	Temp of CPU A53 = 33 - 46 C 
	Temp of CPU A57 = 43 - 48 C
	Average = 37 C
	Min = 30 C
```

### CPU Frequency (4+4 Cores with **ARM-Cortex A53 4 Cores**(little CPU) and **ARM-Cortex A57 4 Cores**(BIG CPU)) Use Governor **"Bioshock"** Now Selected to use on ARM-A53 & ARM-A57  
		A53 Min-Max = 400 - 1300 MHz (Default From Kernel is 400 - 1300 MHz)
		A57 Min-Max = 700 - 1300 MHz (Default From Kernel is 700 - 1300 MHz Online 4 Core)

### Firmware Base On Android 6.0.1 
```
	AP : N910CXXU2DQJ2
	CP : N910CXXU1DQH1
	Security Patch : 1 August G , 2017
	SE Status for Android : Enable (Permissive)
	Magisk Version : v16.0
	Kernel : Custom Kernel 
	Root : Already
	Knox Count Warranty : 1 (Tripped)
```

### Interactive governor from Suemax keernel 

```
	Updated ramdisks to N910CXXS2DPL8 & N910UXXS2DPL1

	For A57
	above_hispeed_delay : 59000 1200000:119000 1700000:19000
	boost : 0
	boostpulse_duration : 40000
	cpu_util : L_I L_I L_I L_I (Maybe 100) # 0 22 74 L_I
	enforce_mode : 0
	go_highspeed_load : 89
	hispeed_freq : 1000000
	io_is_busy : 0 
	min_sample_time : 40000
	mode : 0
	multi_enter_load : 360
	mutli_enter_time : 99000
	multi_exit_load : 240
	multi_exit_time : 299000
	param_index : 0 
	single_enter_load : 95
	single_enter_time : 199000
	single_exit_load : 60
	single_exit_time : 99000
	target_loads : 80 1000000:81 1400000:87 1700000:90  
	timer_rate : 20000
	timer_slack : 20000

	For A53
	above_hispeed_delay : 19000
	boost : 0
	boostpulse_duration : 40000
	cpu_util : 50 74 33 62 (Maybe 100) # Cpu Load
	enforce_mode : 0
	go_highspeed_load : 85
	hispeed_freq : 900000
	io_is_busy : 0 
	min_sample_time : 40000
	mode : 0
	multi_enter_load : 800
	mutli_enter_time : 80000
	multi_exit_load : 360
	multi_exit_time : 320000
	param_index : 0 
	single_enter_load : 200
	single_enter_time : 160000
	single_exit_load : 90
	single_exit_time : 80000
	target_loads : 75
	timer_rate : 20000
	timer_slack : 20000

	sys/devices/system/cpu/cpu4/cpufreq
```

## Example
```python
target_loads : 80 1000000:81 1400000:87 1700000:90 # 80 is mean if load below 80 % will run with 1 GHz if Load reach 81% Cpu will run Between 1.4 GHz - 1.7 GHz if more than 90% will rise to ~1.7 GHz

```



```
	I/O
	Read-ahead : 1024 kb for ext. and int.
	RQ Affinity : 1
	cfq tunable 
	back_seek_max : 16384
	back_seek_penalty : 2
	fifo_expire_async : 250
	fifio_expire_sync 125
	grouop_ idle : 0
	low_latency : 1
	quantum : 8
	slice_async : 40
	slice_async_rq : 2
	slice_idle : 5
	slice_sync : 100
	target_latency : 300
```

```
	Kernel Samepage Merging

	Full scans 0
	Page sharing 0 
	pages shared 0 
	pages unshared 0 
	pages volatile 0 
	page to scan 100
	KSM : disable impact for cpu
	sleep between scans 0ms
```

```
	LMK 56 84 113 141 169 197
```

```
	VM
	dirty_ratio 0 
	background_ratio 0 
	dirty_expire 200 
	dirty_writeback 500 
	min_free_kbytes 3055 
	oom_kill 0 
	overcommit 50 
	swappiness 190 
	vfs_cache 100 laptop 0 
	free bytes 43200  
	Zswap 50%
	maximum compression ratio 80 %
```

```
	Entropy 320 320
```