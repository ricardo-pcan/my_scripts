#!/bin/bash
function main_repos(){
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

	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}