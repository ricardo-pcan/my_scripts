#!/bin/bash
function (){
  echo ""
  echo "######################################################"
  echo "############### INSTALL < VIRTUALBOX > ###############"
  echo "######################################################"
  echo ""
  sleep 2;
  (
    sudo apt-get install virtualbox -y
    sudo apt-get install virtualbox-guest-additions-iso
  ) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
  
}