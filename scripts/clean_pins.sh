#!/bin/bash
#
#Author: Jongilanga Guma
#Date: 2013-06-2
#This script clears all pins and set GPIO port to LOW of OFF

#put the GIO ports in safe mode

gpio mode 0 out
gpio write 0 1
gpio write 0 0

gpio mode 3 out
gpio write 3 1
sleep 5
gpio write 3 0
#Wait for one second for pins to be set to off
sleep 1

#Display pin status
gpio readall
