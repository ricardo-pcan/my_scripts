#!/bin/bash
function node(){
	echo ""
	echo "###################################################"
	echo "############### INSTALL < NODE.JS > ###############"
	echo "###################################################"
	echo ""
	sleep 2;
	(
		cd /usr/local/src/
		sudo curl -O http://nodejs.org/dist/v0.12.2/node-v0.12.2-linux-x64.tar.gz
		sudo tar -xvf node-v0.12.2-linux-x64.tar.gz
		sudo mv node-v0.12.2-linux-x64.tar.gz /usr/local/node
		echo "export PATH=$PATH:/usr/local/node/bin" >> $HOME/.bashrc
		source ~/.bashrc
		
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}