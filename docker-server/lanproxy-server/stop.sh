#!/bin/bash

count=`ps -ef | grep "lanproxy.server.ProxyServerContainer" | grep -v "grep" | wc -l`

start_path="/lanproxy-server/bin/startup.sh"
stop_path="/lanproxy-server/bin/stop.sh"

if [ $count -gt 0 ]; then
 echo "lanproxy-server: already runing in the process, now stop the lanproxy..."
 sh $stop_path
else
 echo "lanproxy-server: not runing, do not need to stop"
fi
