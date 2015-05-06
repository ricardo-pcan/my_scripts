#!/bin/bash
function apache2(){
	echo ""
	echo "#################################>#################"
	echo "############### INSTALL < APACHE2 > ###############"
	echo "###################################################"
	echo ""
	sleep 2;
	(
		sudo apt-get install apache2 -y
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}