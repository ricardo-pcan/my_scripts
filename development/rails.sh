#!/bin/bash
function rails(){
	echo ""
	echo "#################################################"
	echo "############### INSTALL < RAILS > ###############"
	echo "#################################################"
	echo ""
	sleep 2;
	(
		sudo apt-get install nodejs -y
		gem install rails -v 4.2.0 --no-ri --no-doc
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}