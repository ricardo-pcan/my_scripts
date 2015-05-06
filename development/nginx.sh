#!/bin/bash
function nginx() {
	echo ""
	echo "############################################"
	echo "############### INSTALL <  > ###############"
	echo "############################################"
	echo ""
	sleep 2
	(
		sudo apt-get install nginx -y 
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}