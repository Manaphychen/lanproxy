#!/bin/bash

count=`ps -ef | grep "lanproxy.client.ProxyClientContainer" | grep -v "grep" | wc -l`

start_path="/lanproxy-client/bin/startup.sh"
stop_path="/lanproxy-client/bin/stop.sh"


if [ $count -gt 0 ]; then
 echo "already runing in the process, now restart the lanproxy..."
 sh $stop_path
 sh $start_path
else
 echo "start the lanproxy ... ";sh $start_path
fi
