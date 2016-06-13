#!/bin/sh

#=====================
#Load Rdesktop
#=====================
su - tc -c 'tce-load -wi rdesktop.tcz'


#=====================
#Configure REMOTE DISPLAY for X for Xvesa & Set Xvesa SCREEN ANALYSIS 800x600x16 compatible for most monitors
#=====================
VGA="800x600x16"
sudo sed -i -e 's/1024x768x32/'$VGA'/' /home/tc/.xsession
sudo sed -i -e 's/-nolisten/-ac/' /home/tc/.xsession
sudo sed -i -e 's/tcp//' /home/tc/.xsession



su - tc -c 'startx'



#=====================
#Loop for main script
#=====================
count=0
while [ "$count" -lt 60 ]; 
do
aterm -g 50x50+10+10 -e sh -c 'sh /tmp/xsr'
sleep 1
count=$((count + 1))
done



