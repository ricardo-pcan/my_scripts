#!/bin/bash

user="ricardo-pcan"

function hello(){
	echo "----------------------------------------------"
	echo "-------- Ripper KVM -------------------------"
	echo "----------------------------------------------"
	sleep 2
}

function cleaningUp(){
	echo ""
	echo "----------------	CLEANNING ---------------------- "
	echo ""
	(
		sudo apt-get -y autoremove 
		sudo apt-get -y autoclean 
		sudo apt-get -y clean
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


###########################################
###########################################

function kvm(){
	echo ""
	echo "-------------- INSTALL KVM -------------------------"
	echo ""
	sleep 2
	(
		sudo apt-get install qemu-kvm libvirt-bin bridge-utils virt-manager -y
		sudo adduser $user libvirtd
		sudo adduser $user kvm	
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";

}


###########################################
###########################################

	kvm
	cleaningUp
