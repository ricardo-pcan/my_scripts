#!/bin/bash
function greet() {
	echo "##########################################################"
	echo "############### HELLO RIPPER::INSTALL < > ################"
	echo "##########################################################"
}

function update() {
	echo ""
	echo "#######################################"
	echo "############### UPDATE ################"
	echo "#######################################"
	echo ""
	sleep 2

	(
		sudo apt-get update
	)&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}
function cleaningUp() {
	echo ""
	echo "##############################################"
	echo "################ CLEANNING UP ################"
	echo "##############################################"
	echo ""
	sleep 2
	(
		sudo apt-get -y autoremove 
		sudo apt-get -y autoclean 
		sudo apt-get -y clean
	)&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function checkColors() {
	if [ $(tput colors) ]; then
		red="\e[31m"
		green="\e[32m"
		endcolor="\e[39m"
	fi
}