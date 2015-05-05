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
		sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa -y

		# I3
		echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
		sudo apt-get update
		sudo apt-get --allow-unauthenticated install sur5r-keyring -y

		#SUBLIME TEXT
		sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}