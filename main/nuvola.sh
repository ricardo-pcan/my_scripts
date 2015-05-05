#!/bin/bash
function (){
	echo ""
	echo "#########################################################"
	echo "############### INSTALL < NUVOLA PLAYER > ###############"
	echo "#########################################################"
	echo ""
	sleep 2
	(
		sudo apt-get install nuvolaplayer -y 
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}