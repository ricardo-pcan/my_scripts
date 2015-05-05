#!/bin/bash
function gmusic() {
	echo ""
	echo "#################################################################"
	echo "############### INSTALL < GOOGLE MUSIC MANNAGER > ###############"
	echo "#################################################################"
	echo ""
	sleep 2
	(
		sudo apt-get install google-musicmanager-beta 
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}