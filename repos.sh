#!/bin/bash
function repos(){
	echo ""
	echo "******************************************"
	echo "*************** ADD REPOS ***************"
	echo "-----------------------------------------"
	echo ""
	sleep 2
	(
		source development/repos.sh
		source main/repos.sh
		
		 dev_repos
		 main_repos
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}