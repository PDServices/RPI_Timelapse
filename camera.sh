#!/bin/bash
##########
# HEADER
##########
# SCRIPT:		Camera.sh
# AUTHOR:		Paul Spencer
# DATE:			24/08/2016
# COPYRIGHT:	Copyright (c) Paul Spencer
# LICENCE:		MIT License
#
# PURPOSE: This is a simple loop to take a timelapse series of pictures
#			with the RPI Camera
#
##########
# HISTORY
##########
#	Date		Author	Description
# 	24/08/2016	PDS		Script creation
#	09/06/2017	PDS		Added std Header
#
##########
# USAGE
##########
# Comment out if not needed
# USAGE="Please provide end date in format yyyy-mm-dd_hhmmss"

# if [ $# == 0 ] ; then
#     echo $USAGE
#     exit 1;
# fi
##########
# END_OF_HEADER
##########
DELAY=10

while [ 1 = 1 ]
	do
		DATE=$(date +"%Y-%m-%d_%H%M%S")
		# -o = Output
		# -sh 50 = Image sharpness to 50 (-100 > 100)
		# -co 0 = Image contrast (-100 > 100)
		# -br 50 = Brightness (0 > 100)
		# -sa 0 = Saturation (-100 > 100)
		# - ISO 300 = set capture ISO (100 > 800)
		# -hf = Horizontal Flip
		# -vf = Vertical Flip
		raspistill -o /media/pi/OPTIMA/$DATE.jpg -sh 25 -ex night -awb incandescent
		sleep $DELAY
	done
