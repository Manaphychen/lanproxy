#!/bin/bash
count=`ps -ef | grep "lanproxy.server.ProxyServerContainer" | grep -v "grep" | wc -l`
if [ $count -gt 0 ]; then
 echo "status: lanproxy-server running"
else
 echo "status: lanproxy-server not running"
fi
