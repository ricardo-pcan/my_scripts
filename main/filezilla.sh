function filezilla(){
	echo ""
	echo "#####################################################"
	echo "############### INSTALL < FILEZILLA > ###############"
	echo "#####################################################"
	echo ""
	sleep 2
	(
		sudo apt-get install filezilla -y
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}