#!/bin/bash
function (){
  echo ""
  echo "###################################################"
  echo "############### INSTALL < VAGRANT > ###############"
  echo "###################################################"
  echo ""
  sleep 2;
  (
    sudo apt-get install vagrant -y 
  ) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
  
}