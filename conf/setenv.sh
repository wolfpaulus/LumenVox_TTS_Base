#!/bin/sh
export CATALINA_OPTS="$CATALINA_OPTS -Xms128m"
export CATALINA_OPTS="$CATALINA_OPTS -Xmx8192m"
export CATALINA_OPTS="$CATALINA_OPTS -Xss1024k"
export CATALINA_OPTS="$CATALINA_OPTS -Djava.security.egd=file:/dev/urandom"
export CATALINA_OPTS="$CATALINA_OPTS -Djava.library.path=/usr/lib"
