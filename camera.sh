#!/bin/bash																		#
#===============================================================================#
# HEADER																		#
#===============================================================================#
# SCRIPT:		Camera.sh 														#
# AUTHOR:		Paul Spencer													#
# DATE:			24/08/2016														#
# COPYRIGHT:	Copyright (c) Paul Spencer		 								#
# LICENCE:		MIT License														#
#																				#
# PURPOSE: This is a simple loop to take a timelapse series of pictures			#
#			with the RPI Camera													#
#																				#
#===============================================================================#
# HISTORY																		#
#===============================================================================#
#	Date		Author	Description												#
# 	24/08/2016	PDS		Script creation 										#
#	09/06/2017	PDS		Added std Header 										#
# 																				#
#===============================================================================#
# USAGE																			#
#===============================================================================#
# Comment out if not needed														#
# USAGE="Please provide end date in format yyyy-mm-dd_hhmmss"

# if [ $# == 0 ] ; then
#     echo $USAGE
#     exit 1;
# fi
#===============================================================================#
# END_OF_HEADER																	#
#===============================================================================#
DELAY=30

while [ 1 = 1 ]
	do
		DATE=$(date +"%Y-%m-%d_%H%M%S")
		raspistill -o /home/pi/timelapse/photos/$DATE.jpg -sh 50 -co 0 -br 50 -sa 0 -ISO 300 -q 75 -hf -vf
		sleep $DELAY
	done
