function (){
	echo ""
	echo "############################################"
	echo "############### INSTALL <  > ###############"
	echo "############################################"
	echo ""
	sleep 2
	(
		sudo apt-get install firefox-trunk -y 
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}