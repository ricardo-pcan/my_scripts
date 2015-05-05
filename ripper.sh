#!/bin/bash
	echo ""
	echo "_____________________________________________"
	echo "############### RIPPER UBUNTU ###############"
	echo "---------------------------------------------"
	echo ""
	sleep 2
	(
		## LIBS ##
			source utils.sh
			source repos.sh
			source libs.sh

		## PROCEDURE
			# PRE
			
				checkColors
				repos
				update

			# MAIN	

				git
				svn
				curl
				terminator
				restricted_extras
				gimp
				inkscape
				gparted
				filezilla
				grive
				clementine
				nuvola
				gmusic
				turpial

			# DEVELOPMENT
				nightly
				i3
				nginx
				zlib

	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
