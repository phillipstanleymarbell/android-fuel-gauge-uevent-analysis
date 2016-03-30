#!/system/bin/sh

while [ true ]
do
	date
#	cat /sys/class/power_supply/battery/uevent
	cat /sys/class/power_supply/max17047_battery/uevent
	sleep 1
done
