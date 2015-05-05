#!/bin/bash
function curl(){
	echo ""
	echo "################################################"
	echo "############### INSTALL < CURL > ###############"
	echo "################################################"
	echo ""
	sleep 2
	(
		sudo apt-get install curl -y
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}