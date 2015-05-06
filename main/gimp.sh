#!/bin/bash
function gimp() {
	echo ""
	echo "############################################"
	echo "############### INSTALL < GIMP > ###############"
	echo "############################################"
	echo ""
	sleep 2
	(
		sudo apt-get install gimp -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}