#!/bin/sh
# install lame

wget https://www.rpmfind.net/linux/epel/7/x86_64/Packages/l/lame-3.100-1.el7.x86_64.rpm
wget https://www.rpmfind.net/linux/epel/7/x86_64/Packages/l/lame-devel-3.100-1.el7.x86_64.rpm
wget https://www.rpmfind.net/linux/epel/7/x86_64/Packages/l/lame-libs-3.100-1.el7.x86_64.rpm


rpm -ivh lame-libs-3.100-1.el7.x86_64.rpm
rpm -ivh lame-3.100-1.el7.x86_64.rpm
rpm -ivh lame-devel-3.100-1.el7.x86_64.rpm

rm lame-libs-3.100-1.el7.x86_64.rpm
rm lame-3.100-1.el7.x86_64.rpm
rm lame-devel-3.100-1.el7.x86_64.rpm