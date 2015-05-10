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
				upgrade
				checkColors
				repos
				update

			# MAIN	

				git
				svn
				curl
				terminator
				kvm
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
				paper
				unsettings
				gchrome
				environmentFolders

			# DEVELOPMENT
				nightly
				i3
				nginx
				zlib
				sublime_text
				atom
				php5
				java8
				mysql
				apache2
				zsh

			# POST
				cleaningUp

	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
