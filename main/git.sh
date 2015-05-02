function git(){
	echo ""
	echo "###########################################"
	echo "############### INSTALL GIT ###############"
	echo "###########################################"
	echo ""
	sleep 2
	(
		sudo apt-get install git -y
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}