#!/bin/bash

function repos(){
	echo ""
	echo "--------------- ADD REPOS -----------------"
	echo ""
	sleep 2
	(
		sudo apt-add-repository ppa:nemh/systemback -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";

}

function hello(){
	echo "----------------------------------------------"
	echo "-------- Ripper utils -------------------------"
	echo "----------------------------------------------"
	sleep 2
}

function update(){
	echo ""
	echo "--------------- UPDATE -----------------"
	echo ""
	sleep 2
	(
		sudo apt-get update
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";

}

function cleaningUp(){
	echo "----------------	CLEANNING ---------------------- "
	(
		sudo apt-get -y autoremove 
		sudo apt-get -y autoclean 
		sudo apt-get -y clean
	)&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function systemback(){
	echo ""
	echo "--------------- INSTALL SYSTEMBACK -----------------"
	echo ""
	sleep 2
	(
		sudo apt-get install systemback -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";

}


#########################################
############# PROCEDURE #################
#########################################

	hello
	repos
	update
	systemback
	cleaningUp


