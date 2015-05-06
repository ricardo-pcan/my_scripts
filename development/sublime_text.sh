#!/bin/bash
function sublime_text(){
	echo ""
	echo "########################################################"
	echo "############### INSTALL < SUBLIME TEXT > ###############"
	echo "########################################################"
	echo ""
	sleep 2;
	(
		sudo apt-get -y install sublime-text-installer 
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}