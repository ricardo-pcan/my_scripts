#!/bin/bash
function php5(){
	echo ""
	echo "################################################"
	echo "############### INSTALL < PHP5 > ###############"
	echo "################################################"
	echo ""
	sleep 2
	(
		sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}