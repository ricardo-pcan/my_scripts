#!/bin/bash
function (){
  echo ""
  echo "###################################################"
  echo "############### INSTALL < IPYTHON > ###############"
  echo "###################################################"
  echo ""
  sleep 2;
  (
    sudo apt-get install ipython -y
  ) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
  
}