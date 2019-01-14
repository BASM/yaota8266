#!/bin/sh
#set -x
# Sonoff Basic connected via CH340 to usb is unstable for me

if [ "$1" = "" ] ; then
	port="/dev/ttyUSB0"
else
	port="$1"
fi


while sleep 1 
do 
	stty -F /dev/ttyUSB0 115200 -inlcr -igncr -icrnl
	cat /dev/ttyUSB0
done        
