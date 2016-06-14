#!/bin/sh
# put other system startup commands here, the boot process will wait until they complete.
# Use bootlocal.sh for system startup commands that can run in the background 
# and therefore not slow down the boot process.
/usr/bin/sethostname box
/opt/bootlocal.sh &


#=====================
#Load Rdesktop
#=====================
#su - tc -c 'tce-load -wi rdesktop.tcz'

show_menu() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	echo " M A I N - M E N U"
	echo "~~~~~~~~~~~~~~~~~~~~~"
	echo "1. X Connection (The linux Server must have installed Telnet Server and the Lxpanel)"
	echo "2. RDP Connection"
	echo "3. Exit to Prompt, in order to get back to main menu type 'sh /opt/bootsync.sh'"
	
}


read_options(){
	local choice
	read -p "Enter choice [ 1 - 3] " choice
	echo ""
	echo ""
	echo "---------------------"
	echo ""
	echo ""
	case $choice in
		1) XSRmenu ;;
		2) RDPmenu ;;
		*) killall Xvesa;;

	esac
}



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
aterm -g 50x50+10+10 -e sh -c 'sh /tmp/xsr' || break
sleep 1
count=$((count + 1))
done




exit


#===============
#testing
count=0
while [ "$count" -lt 600 ]; 
do

	read -p "Enter choice [ 1 - 3] " choice
	
	case $choice in
		1) su - tc -c 'startx';aterm -g 50x50+10+10 -e sh -c 'sh /tmp/xsr';;
		2) echo "2";;
	*) echo "---";;
	esac
sleep 1
count=$((count + 1))
done



