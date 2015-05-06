#!/bin/bash
function init_repos(){
	echo ""
	echo "#################################################################"
	echo "############### INSTALL < ADD REPOS INIT > ###############"
	echo "#################################################################"
	echo ""
	sleep 2
	(
		sudo apt-add-repository ppa:nemh/systemback -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";

}