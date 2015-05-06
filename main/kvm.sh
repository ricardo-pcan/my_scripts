#!/bin/bash
user="ricardo-pcan"
function kvm(){
	echo ""
	echo "###############################################"
	echo "############### INSTALL < KVM > ###############"
	echo "###############################################"
	echo ""
	sleep 2
	(
		sudo apt-get install qemu-kvm libvirt-bin bridge-utils virt-manager -y
		sudo adduser $user libvirtd
		sudo adduser $user kvm	
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";

}
