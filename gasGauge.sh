#!/system/bin/sh

while [ true ]
do
	date
	cat /sys/class/power_supply/battery/uevent
	sleep 1
done
