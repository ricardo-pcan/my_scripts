#!/bin/bash
function turpial() {
	echo ""
	echo "###################################################"
	echo "############### INSTALL < TURPIAL > ###############"
	echo "###################################################"
	echo ""
	sleep 2
	(
		sudo apt-get install turpial -y
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}