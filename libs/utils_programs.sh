#!/bin/bash
echo "update syste,"
(
sudo apt-get update
sudo apt-get upgrade
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e[39m'; # Hide all output


#repos
echo "add repos"
(
sudo add-apt-repository ppa:costales/folder-color -y&&
sudo add-apt-repository ppa:tualatrix/ppa -y&&
sudo add-apt-repository ppa:diesch/testing -y&&
sudo add-apt-repository ppa:nuvola-player-builders/stable -y&&
sudo apt-get update
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e[39m'; # Hide all output




#restricted extras
echo "restricted extras"
(
sudo apt install ubuntu-restricted-extras -y
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e#[39m'; # Hide all output

#folder color
echo "Install folder color"
(
sudo apt-get install folder-color -y
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e[39m'; # Hide all output

#ubuntu-tweak
#echo "install ubuntu-tweak"
#(
#sudo apt install ubuntu-tweak
#) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e#[39m'; # Hide all output

#unsettings
echo "install unsettings"
(
sudo apt install unsettings -y
)&> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e#[39m'; # Hide all output

#
echo "install compression utils"
(
sudo apt install rar unace p7zip-full p7zip-rar sharutils mpack lha arj -y
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e#[39m'; # Hide all output

#
echo "install nuvola player"
(
sudo apt-get install nuvolaplayer -y
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e#[39m'; # Hide all output

#google music
echo ""
(
sudo sh -c 'echo "deb http://dl.google.com/linux/musicmanager/deb/ stable main" >> /etc/apt/sources.list.d/google-musicmanager.list'

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

sudo apt-get update

sudo apt-get install google-musicmanager-beta

) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e#[39m'; # Hide all output

echo ""
(

) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e#[39m'; # Hide all output
