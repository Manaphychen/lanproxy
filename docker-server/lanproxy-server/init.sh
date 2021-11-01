#!/bin/bash
sed -i "s|input_username|$LANPROXY_USERNAME|g" /lanproxy-server/conf/config.properties
sed -i "s|input_password|$LANPROXY_PASSWORD|g" /lanproxy-server/conf/config.properties

# starting
sh /lanproxy-server/start.sh

touch /index.txt
echo "start lanproxy-server ..."  > /index.txt
tail -f /index.txt

