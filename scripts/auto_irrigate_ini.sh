#!/bin/bash
#
#Author: Jongilanga Guma
#Date: 2015-04-06
#This script clears all pins and set GPIO port to LOW of OFF

#put the GIO ports in safe mode

gpio mode 0 out
gpio mode 1 out
