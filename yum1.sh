#!/bin/bash

if [ `whoami` == "root" ];then
	read -p "Enter a packagename:" pname
	rpm -q $pname
	if [ $? -ne 0 ];then
		echo "Package is not avaiable"
		yum -y install $pname
	fi

else
	echo "Sorry your not root user"
	exit
fi
