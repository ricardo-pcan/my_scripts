sh development/repos.sh
sh main/repos.sh
function repos(){
	echo ""
	echo "******************************************"
	echo "*************** ADD REPOS ***************"
	echo "-----------------------------------------"
	echo ""
	sleep 2
	(
		 dev_repos
		 main_repos
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}