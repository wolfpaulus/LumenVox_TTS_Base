#!/bin/sh
# start the LumenVox services
/usr/bin/lv_manager 
/usr/bin/lv_license_server 
/usr/bin/lv_tts_server 
#start Tomcat
/opt/tomcat/bin/catalina.sh run
