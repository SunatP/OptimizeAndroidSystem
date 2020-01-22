#!/system/bin/sh
chmod 0777 /sys/devices/system/cpu/cpufreq/mp-cpufreq/cpu_volt_table
chmod 0777 /sys/devices/system/cpu/cpufreq/mp-cpufreq/kfc_volt_table

echo 1900000 1237500 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/cpu_volt_table
echo 1800000 1200000 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/cpu_volt_table
echo 1700000 1162500 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/cpu_volt_table
echo 1600000 1112500 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/cpu_volt_table
echo 1500000 1075000 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/cpu_volt_table
echo 1400000 1050000 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/cpu_volt_table
echo 1300000 1025000 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/cpu_volt_table
echo 1200000 1000000 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/cpu_volt_table
echo 1100000 975000 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/cpu_volt_table
echo 1000000 950000 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/cpu_volt_table
echo 900000 950000 > /sys/devices/system/c4pu/cpufreq/mp-cpufreq/cpu_volt_table
echo 800000 925000 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/cpu_volt_table
echo 700000 900000 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/cpu_volt_table
echo 600000 875000 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/cpu_volt_table
echo 500000 875000 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/cpu_volt_table
echo 400000 875000 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/cpu_volt_table

echo 1400000 1212500 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/kfc_volt_table
echo 1300000 1150000 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/kfc_volt_table
echo 1200000 1100000 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/kfc_volt_table
echo 1100000 1062500 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/kfc_volt_table
echo 1000000 1025000 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/kfc_volt_table
echo 900000 962500 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/kfc_volt_table
echo 800000 937500 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/kfc_volt_table
echo 700000 900000 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/kfc_volt_table
echo 600000 875000 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/kfc_volt_table
echo 500000 850000 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/kfc_volt_table
echo 400000 837500 > /sys/devices/system/cpu/cpufreq/mp-cpufreq/kfc_volt_table