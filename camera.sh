#!/bin/bash
##################################################
# HEADER
##################################################
# SCRIPT:		Camera.sh
# AUTHOR:		Paul Spencer
# DATE:			24/08/2016
#
# PURPOSE: This is a simple loop to take a timelapse series of pictures
##			with the RPI Camera
#
##################################################
# HISTORY
##################################################
#	Date		Author	Description
# 	24/08/2016	PDS		Script creation
#	09/06/2017	PDS		Added std Header
#
##################################################
# END_OF_HEADER
##################################################

DELAY=10

while [ 1 = 1 ]
	do
		DATE=$(date +"%Y-%m-%d_%H%M%S")
		# -o = Output
		# -sh 50 = Image sharpness to 50 (-100 > 100)
		# -co 0 = Image contrast (-100 > 100)
		# -br 50 = Brightness (0 > 100)
		# -sa 0 = Saturation (-100 > 100)
		# -ISO 300 = set capture ISO (100 > 800)
		# -hf = Horizontal Flip
		# -vf = Vertical Flip
		# -ex night = Night exposure
		# -awb = Auto White Balance
		raspistill -o /media/pi/OPTIMA/$DATE.jpg -sh 25 -ex night -awb incandescent
		raspistill -o /media/pi/OPTIMA/$DATE.jpg -sh 25 -ex night -awb incandescent
		fswebcam -r 1280x720 --no-banner --rotate 180 /media/pi/OPTIMA/webcam_$DATE.jpg 
			#Take the image using the webcam - sudo apt-get install fswebcam to install
		sleep $DELAY
	done
