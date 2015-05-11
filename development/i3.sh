#!/bin/bash
function i3() {
	echo ""
	echo "##############################################"
	echo "############### INSTALL < i3 > ###############"
	echo "##############################################"
	echo ""
	sleep 2
	(
		sudo apt-get install i3	-y 
		sudo apt-get install feh -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}