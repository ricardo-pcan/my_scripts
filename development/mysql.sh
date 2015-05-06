#!/bin/bash
function mysql(){
	echo ""
	echo "#################################################"
	echo "############### INSTALL < MYSQL > ###############"
	echo "#################################################"
	echo ""
	sleep 2;
	(
		sudo apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}