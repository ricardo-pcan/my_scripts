#!/bin/bash
function django(){
	echo ""
	echo "############################################"
	echo "############### INSTALL < DJANGO > ###############"
	echo "############################################"
	echo ""
	sleep 2;
	(
		sudo apt-get install python-pip -y
		sudo pip install virtualenv
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}