#!/bin/bash
function gitInstall() {
	echo ""
	echo "###########################################"
	echo "############### INSTALL GIT ###############"
	echo "###########################################"
	echo ""
	sleep 2
	(
		sudo apt-get install git -y
		git config --global user.name $USER
		git config --global user.email ricardo.pcan@gmail.com
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}