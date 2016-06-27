# Tinycore384GIT

Tinycore384GIT is a light thin client for Xserver.

Using tinycore384GIT you can setup Linux Terminal Services very easy.

#Procedure

The tinycore384GIT is a modified distro from tinycore 384.

Booting the modified iPXE iso http://ipxeboot.github.io/booting/iso/ipxegit.iso  tinycore384GIT is downloaded and run on your computer. The modification is done on the fly. The main script that does the job on the fly ( when tinycore384GIT login the tc user ) is the XSR. The XSR scipt is responsible for connecting to the linux server via telnet and forwards to the client the lxpanel.

#Prerequisites for succes
a) one Computer named A that runs linux ( Ubuntu or Mint )...i used these distros...
The Computer A must have installed Telnet Server and Lxpanel at least one user with username=user01 and password=123456 and having ip addrees 192.168.1.111.

b) an old client computer B  or more clients (booting with ipxegit.iso) that are in the same network (the server A , client B and other clients connect to hub router that gives automatic dhcp adreesses and is connected to internet).



 
