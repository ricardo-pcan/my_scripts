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
		wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}