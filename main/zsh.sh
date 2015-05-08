#!/bin/bash
function zsh(){
	echo ""
	echo "###############################################"
	echo "############### INSTALL < ZSH > ###############"
	echo "###############################################"
	echo ""
	sleep 2;
	(
		sudo apt-get install zsh -y
		curl -L http://install.ohmyz.sh | sh 
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}