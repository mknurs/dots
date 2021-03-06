#!/bin/sh

# battery
percent="$(cat /sys/class/power_supply/BAT0/capacity)"
if [ $percent -lt '15' ];
then
	battery="<span color='#ff5533'>$percent%%</span>"
else
	battery="$percent%%"
fi
# datetime
datetime="$(date "+%a %d %b %Y %H:%M")"
# result
printf "[${battery}] [${datetime}]"
