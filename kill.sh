PID=`ps -ef | grep camera.sh | grep -v grep | awk '{print$2}'`

kill -9 $PID
