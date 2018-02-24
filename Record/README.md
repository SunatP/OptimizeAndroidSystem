# This is Conclusion of My Galaxy Note 4 


## This is my Record by Tune Kernel And Optimize System with a little Tweak (Change CPU Governors , Offline 2 Core of CPU Arm-Cortex A57(Big-Core), Downclock CPU&GPU)


## While use **HV Charging**(High Voltage 9V 1.67A) 
					    Peak Current = 2245 mA (Over current that's mean Over Charge) 
				            Input Current = 1021 mA
						Solve Use Charger 5V 2A is better than 9V 1.67A Charger

### Temperature of Battery while Charge(Degree Celsius) Update 5/2/2017
					    Max = 43 C 
					    Temp of CPU A53 = 33 - 46 C 
					    Temp of CPU A57 = 43 - 48 C
					    Average = 37 C
					    Min = 30 C


### CPU Frequency (4+4 Cores with **ARM-Cortex A53 4 Cores**(little CPU) and **ARM-Cortex A57 4 Cores**(BIG CPU)) Use Governor **"Bioshock"** Now Selected to use on ARM-A53 & ARM-A57  
	A53 Min-Max = 400 - 1000 MHz (Default From Kernel is 400 - 1300 MHz)
	A57 Min-Max = 400 - 1000 MHz (Default From Kernel is 700 - 1300 MHz and Offline 2 Cores)

### Firmware Base On Android 6.0.1 
						AP : N910CXXU2DQJ2
						CP : N910CXXU1DQH1
			Security Patch : 1 August G , 2017
	 SE Status for Android : Enable (Permissive)
	 Magisk Version 	   : v15.3
	 Kernel				   : Custom Kernel 
	 Root				   : Already
	 Knox Count Warranty   : 1

### Battery Drain Fast? 
						Cause From Android Firmware ------> Solve Update Or Flash New Firmware(If you don't need to root)