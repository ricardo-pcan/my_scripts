#!/bin/bash
function atom(){
	echo ""
	echo "################################################"
	echo "############### INSTALL < ATOM > ###############"
	echo "################################################"
	echo ""
	sleep 2;
	(
		sudo  apt-get -y install atom 
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}