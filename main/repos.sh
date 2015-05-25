#!/bin/bash
function main_repos() {
	echo ""
	echo "#####################################################"
	echo "############### INSTALL < ADD REPOS MAIN > ###############"
	echo "#####################################################"
	echo ""
	sleep 2
	(
		#GRIVE
		sudo apt-add-repository ppa:thefanclub/grive-tools -y 

		#NUVOLA
		sudo add-apt-repository ppa:nuvola-player-builders/stable -y

		#GMUSIC
		sudo sh -c 'echo "deb http://dl.google.com/linux/musicmanager/deb/ stable main" >> /etc/apt/sources.list.d/google-musicmanager.list'
		wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
		
		#POPCORN TIME
		sudo apt-add-repository ppa:webupd8team/popcorntime -y

		#NUMIX
		sudo apt-add-repository ppa:numix/ppa -y

		# PAPER THEME
		sudo apt-add-repository ppa:snwh/pulp -y

		# UNSETTINGS
		sudo add-apt-repository ppa:diesch/testing -y

		# GOOGLE CHROME
		wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
		sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
		# ATUNES
		sudo add-apt-repository ppa:noobslab/apps -y	
}