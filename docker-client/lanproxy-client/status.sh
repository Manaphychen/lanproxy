#!/bin/bash

count=`ps -ef | grep "lanproxy.client.ProxyClientContainer" | grep -v "grep" | wc -l`

if [ $count -gt 0 ]; then
 echo "status: running"
else
 echo "status: not running"
fi
