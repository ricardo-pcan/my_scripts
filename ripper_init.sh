#!/bin/bash

	echo ""
	echo "################################################"
	echo "############### INSTALL < INIT > ###############"
	echo "################################################"
	echo ""
	sleep 2
	(
		source utils.sh
		source init/repos.sh
		source init/systemback.sh

		# PROCEDURE
			checkColors
			init_repos
			update
			systemback
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
