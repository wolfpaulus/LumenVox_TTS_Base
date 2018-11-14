#!/bin/sh
# Copy License File
cp /opt/conf/license_server.conf /etc/lumenvox/license_server.conf
# start the LumenVox services
/usr/bin/lv_manager 
/usr/bin/lv_license_server 
/usr/bin/lv_tts_server 
#start Tomcat
/opt/tomcat/bin/catalina.sh run
