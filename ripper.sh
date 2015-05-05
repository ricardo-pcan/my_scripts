#!/bin/bash
	echo ""
	echo "_____________________________________________"
	echo "############### RIPPER UBUNTU ###############"
	echo "---------------------------------------------"
	echo ""
	sleep 2
	(
		## LIBS ##
			sh utils.sh
			sh repos.sh
			sh libs.sh

		## PROCEDURE
			# PRE
			
				checkColors
				repos
				update

	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
