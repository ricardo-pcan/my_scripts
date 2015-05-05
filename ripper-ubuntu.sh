#!/bin/bash

clear

function checkColors(){
	if [ $(tput colors) ]; then
		red="\e[31m"
		green="\e[32m"
		endcolor="\e[39m"
	fi
}


function createTMPFolder(){
	echo "tmp folder"
	tmp=${TMPDIR-/tmp}
	tmp=$tmp/oduso.$RANDOM.$RANDOM.$RANDOM.$$ # Use a random name so it's secure
	(umask 077 && mkdir "$tmp") || { # Another security precaution
		echo "Could not create temporary directory! Exiting." 1>&2 
		exit 1
	}
}

function welcome(){
	echo "-------------------------"
	echo "Hello ripper"
	echo "_________________________"
	sudo trap "rm -rf $tmp" EXIT # Delete tmp files on exit
}

function addRepositories(){
	echo "add repositories"
	(
	sudo apt-add-repository ppa:videolan/stable-daily -y
	sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
	echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list
	sudo apt-add-repository ppa:otto-kesselgulasch/gimp -y
	sudo apt-add-repository ppa:numix/ppa -y
	sudo apt-add-repository ppa:danielrichter2007/grub-customizer -y
	sudo apt-add-repository ppa:inkscape.dev/stable -y
	sudo apt-add-repository ppa:me-davidsansome/clementine -y
	sudo apt-add-repository ppa:pidgin-developers/ppa -y
	sudo apt-add-repository ppa:ubuntu-wine/ppa -y
	sudo add-apt-repository ppa:webupd8team/atom -y
	sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
	sudo apt-add-repository ppa:bmeznarsic/icon-themes -y
	sudo apt-add-repository ppa:thefanclub/grive-tools -y
	#sudo apt-add-repository ppa:webupd8team/popcorntime -y
	sudo apt-add-repository ppa:nvbn-rm/ppa -y
	sudo apt-add-repository ppa:webupd8team/brackets -y
	sudo apt-add-repository ppa:snwh/pulp -y
	sudo add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora -y
	sudo add-apt-repository ppa:webupd8team/java -y
	sudo add-apt-repository ppa:chris-lea/node.js -y
	sudo add-apt-repository ppa:tualatrix/ppa -y
	sudo add-apt-repository ppa:diesch/testing -y
	#sudo add-apt-repository ppa:nuvola-player-builders/stable -y
	)&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

##Install

function restrictedExtras(){
	echo "install restricted extras"	
	(
		sudo apt-get install ubuntu-restricted-extras -y
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function compressors(){
	echo "install compressors"
	(
	sudo apt-get install unrar rar p7zip-full unace unzip -y
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function wine(){
	echo "install wine"
	(
	echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
	sudo apt-get -y install wine -y
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function vlc(){
	echo "install VLC"
	(
		sudo apt-get -y install vlc
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function inkscape(){
	echo "install inkscape"
	(
		sudo apt-get -y install inkscape
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function gparted(){
	echo "install gparted"
	(
		sudo apt-get -y install gparted
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function filezilla(){
	echo "install filezilla"
	(
		sudo apt-get -y install filezilla
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function clementine(){
	echo "install clementine"
	(
		sudo apt-get -y install clementine
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function pidgin(){
	echo "install pidgin"
	(
		sudo apt-get -y install pidgin
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function gimp(){
	echo "install gimp"
	(
		sudo apt-get -y install gimp
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function atom(){
	echo "install atom"
	(
		sudo  apt-get -y install atom
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function sublimeText3(){
	echo "install sublime text"
	(
		sudo apt-get -y install sublime-text-installer
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function brackets(){
	echo "install brackets"
	(
		sudo apt-get install brackets -y
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function popcornTime(){
	echo "install popcorn time"
	(
		sudo echo popcorn-time shared/accepted-popcorntime-license-v1-1 select true | debconf-set-selections
		sudo apt-get install popcorn-time -y
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function grive(){
	echo "install grive tools"
	(
		sudo apt-get install grive-tools -y
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function unetbooting(){
	echo "install unetbooting"
	(
		sudo apt-get -y install unetbootin
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function tap(){
	echo "install tap"
	(
		sudo apt-get install elementary-taprevival-icons -y
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function pacifica(){
	echo "install pacifica"
	(
		sudo wget http://fc00.deviantart.net/fs71/f/2013/305/9/6/pacifica_icons_by_bokehlicia-d6nn5lb.zip -O $tmp/pacifica.zip
		sudo unzip $tmp/pacifica.zip -d $tmp
		sudo mv $tmp/Pacifica /usr/share/icons/
		sudo mv $tmp/Pacifica-U /usr/share/icons/
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function numixCircle(){
	echo "install numix circle"
	(
		sudo apt-get -y install numix-icon-theme-circle
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function fileArchiving(){
	echo "install filearchiving"
	(
		sudo apt-get install unace rar unrar p7zip-rar p7zip zip unzip sharutils uudeview mpack arj cabextract file-roller -y
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function upgrade(){
	echo "upgrade -->"
	(
		sudo apt-get -y upgrade
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function cleaningUp(){
	echo "cleaning up "
	(
		sudo apt-get -y autoremove 
		sudo apt-get -y autoclean 
		sudo apt-get -y clean
	)&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function paper(){
	echo "#####install paper#####"
	(
		sudo apt-get install paper-gtk-theme -y
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function java8(){
	echo "install java 8"
	(
		sudo apt-get install oracle-java8-installer -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function curl(){
	echo "install curl"
	(
		sudo apt-get install curl -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function svn(){
	echo "install svn"
	(
		sudo apt-get install subversion -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function git(){
	echo "install git"
	(
		sudo apt-get install git
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function ruby(){
	echo "install ruby"
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
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function rails(){
	echo "install rails"
	(
		sudo apt-get install nodejs -y
		gem install rails -v 4.2.0 --no-ri --no-doc
	)&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function unsettings(){
	echo "install unsettings"
	(
		sudo apt install unsettings -y
	)&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function nuvola(){
	echo "install nuvola player"
	(
		sudo apt-get install nuvolaplayer -y 
	)&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function googleMusic(){
	echo "install google music"
	(
		sudo sh -c 'echo "deb http://dl.google.com/linux/musicmanager/deb/ stable main" >> /etc/apt/sources.list.d/google-musicmanager.list'

		wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
		sudo apt-get update
		sudo apt-get install google-musicmanager-beta
	)&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function terminator(){
	echo "install terminator"
	(		
		sudo apt-get install terminator -y 
	)&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}



function update(){
	echo "update -->"
	(
		sudo apt-get update
	)&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function purgePPA(){
	echo "purge ppa's"	
	(
	sudo ppa-purge ppa:videolan/stable-daily -y
	sudo ppa-purge ppa:otto-kesselgulasch/gimp -y
	sudo ppa-purge ppa:birdie-team/stable -y
	sudo ppa-purge ppa:numix/ppa -y
	sudo ppa-purge ppa:danielrichter2007/grub-customizer -y
	sudo ppa-purge ppa:inkscape.dev/stable -y
	sudo ppa-purge ppa:me-davidsansome/clementine -y
	sudo ppa-purge ppa:pidgin-developers/ppa -y
	sudo ppa-purge ppa:ubuntu-wine/ppa -y
	sudo ppa-purge ppa:webupd8team/atom -y
	sudo ppa-purge ppa:webupd8team/sublime-text-3 -y
	sudo ppa-purge ppa:bmeznarsic/icon-themes -y
	sudo ppa-purge ppa:thefanclub/grive-tools -y
	sudo ppa-purge ppa:webupd8team/popcorntime -y
	sudo ppa-purge ppa:nvbn-rm/ppa -y
	sudo ppa-purge ppa:webupd8team/brackets -y
	sudo ppa-purge ppa:snwh/pulp -y
	sudo ppa-purge ppa:ubuntu-mozilla-daily/firefox-aurora -y
	sudo ppa-purge ppa:webupd8team/java -y
	sudo ppa-purge ppa:chris-lea/node.js -y
	sudo ppa-purge ppa:tualatrix/ppa -y
	sudo ppa-purge ppa:diesch/testing -y
	sudo ppa-purge ppa:nuvola-player-builders/stable -y
	)
}

function nodejs(){
	(
	sudo apt-get update
	sudo apt-get install curl apt-transport-https -y
	sudo curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
	sudo echo 'deb https://deb.nodesource.com/node_0.10 utopic main' > /etc/apt/sources.list.d/nodesource.list
	sudo echo 'deb-src https://deb.nodesource.com/node_0.10 utopic main' >> /etc/apt/sources.list.d/nodesource.list
	sudo apt-get update && apt-get install nodejs -y
	node -v && npm -v	
	)
}

function tlptools(){
	echo "install tlp tools"
	(
		sudo apt-get install laptop-mode-tools -y
	)&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function bleachbit(){
	echo "##### install bleachbit #####"
	(
		sudo apt-get install bleachbit -y
	)&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function deborphan(){
	echo "#### install deborphan ####"
	(
		sudo apt-get install deborphan
	)&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function i3(){
	echo "####install i3#####"
	(
		echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
		sudo apt-get update
		sudo apt-get --allow-unauthenticated install sur5r-keyring -y
		sudo apt-get update
		sudo apt-get install i3	-y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function nightly(){
	echo "#####install nightly#####"
	(
		sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa -y
		sudo apt-get update
		sudo apt-get install firefox-trunk -y
	)&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function nginx(){
	echo "install nginx"
	(
		sudo apt-get install nginx -y	
	)&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";

}

function zlib(){
	echo "intall zlib"
	(
		cd /usr/local/src
		sudo curl -O http://zlib.net/zlib-1.2.8.tar.gz
		sudo tar -xzvf zlib-1.2.8.tar.gz
		cd zlib-1.2.8
		sudo ./configure
		sudo make
		sudo make install
	)&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";

}

function postgresql(){
	echo "install postgres"
	(
		sudo apt-get install postgresql postgresql-contrib -y
		sudo su – postgres
		createuser
		postgres
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	

}

function environmentFolders(){
	echo "##### create environment folders ###"
	(
		sudo mkdir ~/mywork
		sudo mkdir ~/mysoftware
		sudo mkdir ~/myjunk
		sudo mkdir ~/myinbox
		sudo mkdir ~/myprojects
		sudo mkdir ~/myimages
		sudo mkdir ~/mymusic
		sudo mkdir ~/.ssh
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";

}
#_________________________________________________________________________
##preloge
	checkColors
	welcome
	#addRepositories
	#update
##to do
		
	#restrictedExtras
	#compressors
	#wine
	#vlc
	#inkscape
	#gparted
	#filezilla
	#clementine
	#pigdin
	#atom
	#gimp
	#sublimeText3
	#brackets
	#nightly
	#popcornTime
	#grive
	#unetbooting
	#tap
	#numixCircle
	#fileArchiving
	#paper
	#java8
	#curl
	#svn
	#git
	#ruby
	#rails
	#unsettings
	#terminator
	#tiptools
	#bleachbit
	#deborphan
	#googleMusic
	#i3
	#nginx
	#zlib
	#postgresql
	environmentFolders
#___________________________________________________________________________

