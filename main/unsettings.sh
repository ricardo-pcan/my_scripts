#!/bin/bash
function unsettings(){
	echo ""
	echo "######################################################"
	echo "############### INSTALL < UNSETTINGS > ###############"
	echo "######################################################"
	echo ""
	sleep 2;
	(
		sudo apt install unsettings -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}