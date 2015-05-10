#!/bin/bash
function node(){
	echo ""
	echo "###################################################"
	echo "############### INSTALL < NODE.JS > ###############"
	echo "###################################################"
	echo ""
	sleep 2;
	(
		sudo apt-get install nodejs nodejs-dev npm -y
		
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}