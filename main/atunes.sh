#!/bin/bash
function (){
  echo ""
  echo "##################################################"
  echo "############### INSTALL < ATUNES > ###############"
  echo "##################################################"
  echo ""
  sleep 2;
  (
    sudo apt-get install atunes -y
  ) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
  
}