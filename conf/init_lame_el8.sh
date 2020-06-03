#!/bin/sh
# install lame on el8
wget http://repo.okay.com.mx/centos/8/x86_64/release/lame-3.100-6.el8.x86_64.rpm
wget http://repo.okay.com.mx/centos/8/x86_64/release/lame-libs-3.100-6.el8.x86_64.rpm
wget http://repo.okay.com.mx/centos/8/x86_64/release/lame-devel-3.100-6.el8.x86_64.rpm

rpm -ivh lame-libs-3.100-6.el8.x86_64.rpm
rpm -ivh lame-3.100-6.el8.x86_64.rpm
rpm -ivh lame-devel-3.100-6.el8.x86_64.rpm

rm lame-libs-3.100-6.el8.x86_64.rpm
rm lame-3.100-6.el8.x86_64.rpm
rm lame-devel-3.100-6.el8.x86_64.rpm