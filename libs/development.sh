#!/bin/bash


function welcome(){
	echo "-------------------------"
	echo "Development"
	echo "_________________________"
	#sudo trap "rm -rf $tmp" EXIT # Delete tmp files on exit
}

#######################
##### REPOSITORIES #####
#######################

function repos(){
	echo "------------- ADD REPOS --------------"
	(
		sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
		sudo add-apt-repository ppa:webupd8team/brackets -y
		sudo add-apt-repository ppa:webupd8team/java -y
		sudo add-apt-repository ppa:chris-lea/node.js -y

	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";

}


###################
###### UTILS ######
###################

function filezilla(){
	echo "--------INSTALL FILEZILLA-------"
	(
		sudo apt-get -y install filezilla
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function java8(){
	echo "---------- INSTALL JAVA8  ---------------"
	(
		sudo sudo apt-get install oracle-java8-installer -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function terminator(){
	echo "---------- INSTALL TERMINATOR  ---------------"
	(		
		sudo apt-get install terminator -y 
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function ruby2(){
	echo "---------- INSTALL RUBY  ---------------"
	(
		cd
		git clone git://github.com/sstephenson/rbenv.git .rbenv
		echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
		echo 'eval "$(rbenv init -)"' >> ~/.bashrc
		exec sudo $SHELL

		git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
		echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
		exec $SHELL

		git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

		rbenv install 2.2.1
		rbenv global 2.2.1
		gem install bundle
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function rails(){
	echo "---------- INSTALL RAILS  ---------------"
	(
		sudo apt-get install nodejs -y
		gem install rails -v 4.2.0 --no-ri --no-doc
		rbenv rehash
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function curl(){
	echo "---------- INSTALL CURL ---------------"
	(
		sudo apt-get install curl -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function svn(){
	echo "---------- INSTALL SVN ---------------"
	(
		sudo apt-get install subversion -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function git(){
	echo "---------- INSTALL GIT ---------------"
	(
		sudo apt-get install git -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function apache(){
	echo ""
	echo "---------- INSTALL APACHE ---------------"
	echo ""
	(
		sudo apt-get install apache2 -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function mysql(){
	echo ""
	echo "---------- INSTALL MYSQL ---------------"
	echo ""
	(
		sudo apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql -y
		sudo mysql_install_db
		sudo /usr/bin/mysql_secure_installation
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function php(){
	echo ""
	echo "---------- INSTALL PHP ---------------"
	echo ""
	(
		sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt -y
		sudo service apache2 restart
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";

}

function postgresql(){
	echo ""
	echo "-------------------- INSTALL POSTGRESQL ---------------------"
	echo ""
	(
		sudo apt-get install postgresql-9.4 -y
		sudo update-rc.d postgresql defaults

	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}



####################
#####EDITORS########
####################

function atom(){
	echo "---------INSTALL ATOM------------"
	(
		sudo  apt-get -y install atom
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function sublimeText3(){
	echo ""
	echo "----------- INSTALL SUBLIMETEXT 3 --------"
	echo ""
	(
		sudo apt-get -y install sublime-text-installer
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


function brackets(){
	echo "----------INSTALL BRACKETS---------"
	(
		sudo apt-get install brackets -y
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


########################
####### SYSTEM #########
########################
function cleaningUp(){
	echo "------------- CLEANING UP ---------------- "
	(
		sudo apt-get -y autoremove 
		sudo apt-get -y autoclean 
		sudo apt-get -y clean
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}

function update(){
	echo "------------- UPDATE -------------"
	(
		sudo apt-get update
	) &> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
}


######################################
############# PROCEDURE ##############
######################################


########INIT#########
	welcome
	repos
	update
###### EDITORS ######
	sublimeText3 #Y
	#brackets #Y
	git #Y
	svn #Y
	curl #Y
	terminator #Y
	apache #Y 
	mysql #Y ##
	php #Y
	ruby2
	rails
	postgresql
###### FINISH ########
	cleaningUp
