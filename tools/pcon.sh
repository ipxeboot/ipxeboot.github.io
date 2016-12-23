#!/bin/sh

echo evagelosvar |  pcloudcc-2.0.1-Linux/bin/pcloudcc -u evagelosvar@gmail.com -p -s -d
sleep 5
rsync -avzh --delete "pCloudDrive/uploads/" "www/"
sudo chmod a+x www/master-scripts/*
sudo chmod a+x www/tools/*
cp www/tools/cron.sh cron.sh
#www/tools/cron.sh

#sh cron.sh > /tmp/out
