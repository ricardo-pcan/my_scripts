#!/bin/bash
function (){
	echo ""
	echo "############################################"
	echo "############### INSTALL < GRIVE > ###############"
	echo "############################################"
	echo ""
	sleep 2
	(	
		sudo apt-get install grive-tools -y
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}