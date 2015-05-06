#!/bin/bash
function terminator() {
	echo ""
	echo "######################################################"
	echo "############### INSTALL < TERMINATOR > ###############"
	echo "######################################################"
	echo ""
	sleep 2
	(
		sudo apt-get install terminator -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}