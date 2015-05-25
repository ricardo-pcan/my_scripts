#!/bin/bash
function (){
  echo ""
  echo "####################################################"
  echo "############### INSTALL < COMPOSER > ###############"
  echo "####################################################"
  echo ""
  sleep 2;
  (
    curl -sS https://getcomposer.org/installer | php
    sudo mv composer.phar /usr/local/bin/composer
  ) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
  
}