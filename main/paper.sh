#!/bin/bash
function paper(){
	echo ""
	echo "#######################################################"
	echo "############### INSTALL < PAPER THEME > ###############"
	echo "#######################################################"
	echo ""
	sleep 2;
	(
		sudo apt-get install paper-gtk-theme -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}