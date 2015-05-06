#!/bin/bash
function numix_circle(){
	echo ""
	echo "############################################"
	echo "############### INSTALL <  > ###############"
	echo "############################################"
	echo ""
	sleep 2;
	(
		sudo apt-get -y install numix-icon-theme-circle
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}