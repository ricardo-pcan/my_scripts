#!/bin/bash

	echo ""
	echo "################################################"
	echo "############### INSTALL < INIT > ###############"
	echo "################################################"
	echo ""
	sleep 2
	(
		source init/repos.sh
		source init/systemback.sh

		# PROCEDURE
			init_repos
			systemback
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
