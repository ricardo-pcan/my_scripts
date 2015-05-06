#!/bin/bash
function gparted() {
	echo ""
	echo "###################################################"
	echo "############### INSTALL < GPARTED > ###############"
	echo "###################################################"
	echo ""
	sleep 2
	(
		sudo apt-get install gparted -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}