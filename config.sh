#!/bin/sh



useradd ain; echo -e "ainainmarina12\nainainmarina12\n" | passwd ain;usermod -aG sudo ain

#su ain

cd /home/ain

#wget --no-check-certificate -O master.tar.gz https://github.com/gymnasioker4/gymnasioker4.github.io/archive/master.tar.gz

sudo apt-get install cmake zlib1g-dev libboost-system-dev libboost-program-options-dev libpthread-stubs0-dev libfuse-dev

wget --no-check-certificate -O pcloudcc.sh     https://ipxeboot.github.io/pcloudcc.sh
#wget --no-check-certificate -O pcloudcc.sh     https://ipxeboot.github.io/config.sh

echo y\nY\n|sh pcloudcc.sh

echo marina12 |  pcloudcc-2.0.1-Linux/bin/pcloudcc -u evagelosvar@gmail.com -p -d&

# sh pCloudDrive/html/in.sh
