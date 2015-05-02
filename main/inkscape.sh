function inkscape(){
	echo ""
	echo "############################################"
	echo "############### INSTALL < INKSPCAPE > ###############"
	echo "############################################"
	echo ""
	sleep 2
	(
		sudo apt-get install inkscape -y
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}