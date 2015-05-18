#!/bin/bash
function redditr(){
  echo ""
  echo "############################################"
  echo "############### INSTALL < REDDITR > ###############"
  echo "############################################"
  echo ""
  sleep 2;
  (
    wget https://launchpad.net/ubuntu/+source/udev/175-0ubuntu19/+build/4325788/+files/libudev0_175-0ubuntu19_amd64.deb
    sudo dpkg -i libudev0_175-0ubuntu19_amd64.deb
    wget http://reditr.com/downloads/linux/reditr_i386.deb
    sudo dpkg -i reditr_i386.deb
  ) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
  
}