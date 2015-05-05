#!/bin/bash
function dev_repos() {
	echo ""
	echo "#################################################################"
	echo "############### INSTALL < ADD REPOS DEVELOPMENT > ###############"
	echo "#################################################################"
	echo ""
	sleep 2
	(
		# JAVA8
		sudo add-apt-repository ppa:webupd8team/java -y

		# NIGHTLY
		sudo apt-get install firefox-trunk -y

		# I3
		echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
		sudo apt-get update
		sudo apt-get --allow-unauthenticated install sur5r-keyring -y

		
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}