# Under Voltage by using Init.d

```bash
cpucl1voltage: echo'clock voltage(mV)' > /sys/devices/system/cpu/cpufreq/mp-cpufreq/kfc_volt_table # Little

cpucl1 400 - 1400 MHz = 0.4 - 1.4 GHz Little Core

cpucl0voltage: echo'clock voltage(mV)' > /sys/devices/system/cpu/cpufreq/mp-cpufreq/cpu_volt_table

cpucl0 400 - 2100 MHz = 0.4 - 2.1 GHz Big Core

```

|CPU CL1(Big) Clock<br>(MHz)|Voltage Default<br>(mV)|Voltage UnderVolt<br>(-25 mV)|
|:-:|:-:|:-:|
|1400|1237.5|1212.5|
|1300|1175.0|1150.0|
|1200|1125.0|1100.0|
|1100|1087.5|1062.5|
|1000|1050.0|1025.0|
|900|987.5|962.5|
|800|962.5|937.5|
|700|925.0|900.0|
|600|900.0|875.0|
|500|875.0|850.0|
|400|837.5|812.5|

|CPU CL0(Little) Clock<br>(MHz)|Voltage Default<br>(mV)|Voltage UnderVolt<br>(-25 mV)|
|:-:|:-:|:-:|
|2100|1350.0|1325.0|
|2000|1312.5|1287.5|
|1900|1262.5|1237.5|
|1800|1225.0|1200.0|
|1700|1187.5|1162.5|
|1600|1137.5|1112.5|
|1500|1100.0|1075.0|
|1400|1075.0|1050.0|
|1300|1050.0|1025.0|
|1200|1025.0|1000.0|
|1100|1000.0|975.0|
|1000|975.0|950.0|
|900|975.0|943.75 (925.00)|
|800|950.0|918.75 (900.00)|
|700|925.0|893.75 (875.00)|
|600|900.0|868.75 (875.00)|
|500|900.0|868.75 (875.00)|
|400|900.0|868.75 (875.00)|


```bash
cpucl0voltage: echo'400000 875000' > /sys/devices/system/cpu/cpufreq/mp-cpufreq/cpu_volt_table
# Big Core
# 400000 = 0.4 or 400 MHz
# 875000 = 875.00 mV or 868.75 mV

cpucl1voltage: echo'400000 812500' > /sys/devices/system/cpu/cpufreq/mp-cpufreq/kfc_volt_table
# Little Core
# 400000 = 0.4 or 400 MHz
# 812500 = 812.50 mV 

```

```bash
cd /sys/devices/system/cpu/cpufreq/mp-cpufreq
cat kfc_volt_table
# Stock
root@treltexx:/sys/devices/system/cpu/cpufreq/mp-cpufreq # cat kfc_volt_table
1400000 1212500
1300000 1150000
1200000 1100000
1100000 1062500
1000000 1025000
900000 962500
800000 937500
700000 900000
600000 875000
500000 850000
400000 812500
root@treltexx:/sys/devices/system/cpu/cpufreq/mp-cpufreq # cat cpu_volt_table
2100000 1300000
2000000 1262500
1900000 1212500
1800000 1175000
1700000 1137500
1600000 1087500
1500000 1050000
1400000 1025000
1300000 1000000
1200000 975000
1100000 950000
1000000 925000
900000 925000
800000 900000
700000 875000
600000 850000
500000 850000
400000 850000
root@treltexx:/sys/devices/system/cpu/cpufreq/mp-cpufreq #

```