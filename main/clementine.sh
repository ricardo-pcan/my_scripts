 #!/bin/bash
function clementine() {
	echo ""
	echo "######################################################"
	echo "############### INSTALL < CLEMENTINE > ###############"
	echo "######################################################"
	echo ""
	sleep 2
	(
		sudo apt-get install clementine -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}