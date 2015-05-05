#!/bin/bash
function zlib(){
	echo ""
	echo "############################################"
	echo "############### INSTALL < ZLIB > ###############"
	echo "############################################"
	echo ""
	sleep 2
	(
		cd /usr/local/src
		sudo curl -O http://zlib.net/zlib-1.2.8.tar.gz
		sudo tar -xzvf zlib-1.2.8.tar.gz
		cd zlib-1.2.8
		sudo ./configure
		sudo make
		sudo make install
	) #&> /dev/null && echo -e "$green OK $endcolor" || echo -e "$red FAILED $endcolor";
	
}