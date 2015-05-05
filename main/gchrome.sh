#!/bin/bash
function gchrome(){
	echo ""
	echo "#########################################################"
	echo "############### INSTALL < GOOGLE CHROME > ###############"
	echo "#########################################################"
	echo ""
	sleep 2;
	(
		sudo apt-get install google-chrome-stable -y
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}