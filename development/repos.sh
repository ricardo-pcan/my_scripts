#!/bin/bash
function (){
	echo ""
	echo "#################################################################"
	echo "############### INSTALL < ADD REPOS DEVELOPMENT > ###############"
	echo "#################################################################"
	echo ""
	sleep 2
	(
		# JAVA8
		sudo add-apt-repository ppa:webupd8team/java -y

	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}