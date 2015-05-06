#!/bin/bash
function java8() {
	echo ""
	echo "#################################################"
	echo "############### INSTALL < JAVA8 > ###############"
	echo "#################################################"
	echo ""
	sleep 2
	(
		sudo apt-get install oracle-java8-installer -y 
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}