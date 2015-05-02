#!/bin/bash

sudo apt-get update
sudo apt-get upgrade


sudo apt install ubuntu-restricted-extras -y

#repos

echo "instal repos"
(
sudo add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo add-apt-repository ppa:chris-lea/node.js -y

sudo apt-get update
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e#[39m'; # Hide all output


#firefox developer edition
echo ""
(
sudo apt-get install firefox -y
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e#[39m'; # Hide all output

#java
echo "installing java"
(
sudo apt-get install oracle-java8-installer -y
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e#[39m'; # Hide all output

echo "instalando curl"
(
sudo apt-get install curl -y
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e#[39m'; # Hide all output

echo "instalando subversion"
(
sudo apt-get install subversion -y
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e#[39m'; # Hide all output

echo "instalando ruby"
(
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties -y
sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev -y
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc
source ~/.bashrc
rvm install 2.1.5
rvm use 2.1.5 --default
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e#[39m'; # Hide all output

#rails
echo "installing rails"
(
sudo apt-get install nodejs -y
gem install rails -v 4.0.0 --no-ri --no-doc
)&> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e#[39m'; # Hide all output
