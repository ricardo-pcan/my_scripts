#!/bin/bash
function (){
  echo ""
  echo "######################################################"
  echo "############### INSTALL < CAIRO DOCK > ###############"
  echo "######################################################"
  echo ""
  sleep 2;
  (
    sudo apt-get install cairo-dock cairo-dock-plug-ins -y 
  ) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
  
}