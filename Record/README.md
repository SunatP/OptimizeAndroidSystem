# Record HV(High Voltage) Charging
This is my Record by Tune Kernel And Optimize System with a little Tweak (Change CPU Governors , Offline 2 Core of CPU Arm-Cortex A57(Big-Core), Downclock CPU&GPU)
-----------------------------------------------------------------------------------------------

## While use **HV Charging**(High Voltage 9V 1.67A) Peak Current = 1037 mA 
				            Input Current = 1021 mA

-----------------------------------------------------------------------------------------------

### Temperature while Charge(Degree Celsius) Max = 43 C Temp of A53 = 38 - 46 C Temp of A57 = 40 - 48 C
					 Average = 36 C
					 Min = 33 C

-----------------------------------------------------------------------------------------------

### CPU Frequency (4+4 Cores with **ARM-Cortex A53 4 Cores**(little CPU) and **ARM-Cortex A57 4 Cores**(BIG CPU)) Use Governor **"Bioshock"** 
					 A53 Min-Max = 400 - 1000 MHz (Default From Kernel is 400 - 1300 MHz)
					 A57 Min-Max = 400 - 1000 MHz (Default From Kernel is 700 - 1300 MHz and Offline 2 Cores)
