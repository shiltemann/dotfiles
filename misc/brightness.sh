#!/bin/bash

# control brighntess
# ./brightness.sh 5 to increase 5
# ./brightness.sh -5 to decrease 5
val=$(cat /sys/class/backlight/acpi_video0/brightness)
newval=$((val+$1))
echo $newval > /sys/class/backlight/acpi_video0/brightness
