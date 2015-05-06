#!/bin/bash<
function systemback(){
	echo ""
	echo "#################################>#################"
	echo "############### INSTALL < SYSTEMBACK > ###############"
	echo "###################################################"
	echo ""	sleep 2
	(
		sudo apt-get install systemback -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";

}