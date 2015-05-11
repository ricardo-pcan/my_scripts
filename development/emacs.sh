#!/bin/bash
function emacs(){
	echo ""
	echo "############################################"
	echo "############### INSTALL < EMACS > ###############"
	echo "############################################"
	echo ""
	sleep 2;
	(
		sudo apt-get install emacs24 -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}