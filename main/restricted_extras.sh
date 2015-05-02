function restricted_extras(){
	echo ""
	echo "############################################"
	echo "############### INSTALL < RESTRICTED EXTRAS > ###############"
	echo "############################################"
	echo ""
	sleep 2
	(
		sudo apt-get install ubuntu-restricted-extras -y
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}