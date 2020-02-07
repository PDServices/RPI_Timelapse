<<<<<<< HEAD
#!/bin/bash

##################################################
# HEADER
##################################################
# SCRIPT:		PID Kill script
# AUTHOR:		Paul Spencer
# DATE:			01/04/2019
#
# PURPOSE: This script identifies a PID of a given process
#           and kill's it
#
##################################################
# HISTORY
##################################################
#	Date		Author	Description
# 	01/04/2019	PDS		Script creation
#
##################################################
# END_OF_HEADER
##################################################

PROCESS=camera.sh
PID=`ps -ef | grep ${PROCESS} | grep -v grep | awk '{print$2}'`
=======
PID=`ps -ef | grep camera.sh | grep -v grep | awk '{print$2}'`
>>>>>>> f9597fb7ec3f5b57dc2833b981ef7d0f578fa7ea

kill -9 $PID
