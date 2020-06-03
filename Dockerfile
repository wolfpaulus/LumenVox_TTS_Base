# LumenVox Speech Synthesis Base on CentOS 
FROM techcasita/centos_tomcat_openjdk
MAINTAINER Wolf Paulus <wolf@paulus.com>
WORKDIR /opt/tomcat

# Deploy native java lib and Re-configure tomcat
COPY libs/libTTS.so /usr/lib
RUN chmod +x /usr/lib/libTTS.so
COPY conf/setenv.sh /opt/tomcat/bin
RUN chmod +x /opt/tomcat/bin/setenv.sh

# Re-configure tomcat
COPY conf/server.xml /opt/tomcat/conf

# Deploy WebApp 
RUN rm -rf /opt/tomcat/webapps/*
COPY apps/TTSServer.war /opt/tomcat/webapps

# Install Lame MP3 Encoder
COPY conf/init_lame.sh /opt
RUN chmod +x /opt/init_lame.sh
RUN /opt/init_lame_el7.sh

# Install LumenVox Software (libncurses.so.5()(64bit) and libtinfo.so.5()(64bit) needed by lame-3.100-1.el7.x86_64
COPY conf/LumenVox.repo /etc/yum.repos.d
COPY conf/LumenVox386.repo /etc/yum.repos.d
RUN yum -y update && \
 yum -y upgrade && \
 yum -y install libncurses && \
 yum -y install LumenVoxCore && \
 yum -y install LumenVoxClient && \
 yum -y install LumenVoxTTS && \
 yum -y install LumenVoxLicenseServer

# Install LumenVox Voices
RUN yum -y install LumenVox-Amanda-VoiceDB && \
 yum -y install LumenVox-Chris-VoiceDB && \
 yum -y install LumenVox-Amanda_22-VoiceDB  && \
 yum -y install LumenVox-Chris_22-VoiceDB

# Set ADMIN_PORT
COPY conf/manager.conf /etc/lumenvox/manager.conf
COPY conf/license_server.txt /etc/lumenvox/license_server.txt
# license_server.conf configures license and license code to env var $LV_LIC
# manager.conf configures ADMIN_PORT to 8000
# LIC PORT NUM : 7569 
# TTS PORT NUM : 7579 
# ADMIN PORT   : 8000
# TOMCAT : 8080

EXPOSE 7569
EXPOSE 7579 
EXPOSE 8000
EXPOSE 8080

COPY conf/init.sh /opt
RUN chmod +x /opt/init.sh
RUN ln -s /dev/stdout /var/log/lumenvox/license/license_server_app.txt
RUN ln -s /dev/stdout /var/log/lumenvox/ttsserver/tts_server_app.txt

WORKDIR /etc/lumenvox
CMD ["/opt/init.sh"]