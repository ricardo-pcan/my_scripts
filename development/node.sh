#!/bin/bash
function node(){
	echo ""
	echo "###################################################"
	echo "############### INSTALL < NODE.JS > ###############"
	echo "###################################################"
	echo ""
	sleep 2;
	(
		git clone git://github.com/creationix/nvm.git ~/.nvm
		printf "\n\n# NVM\nif [ -s ~/.nvm/nvm.sh ]; then\n\tNVM_DIR=~/.nvm\n\tsource ~/.nvm/nvm.sh\nfi" >> ~/.bashrc
		NVM_DIR=~/.nvm
		source ~/.nvm/nvm.sh
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}