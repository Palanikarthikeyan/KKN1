#!/bin/bash
if [ `whoami` == "root" ]
then
	PACKAGES=(csh ksh zsh httpd irb)

	for v in ${PACKAGES[@]}
	do
		yum -y install $v >>yum_package.log
		date >>yum_package.log
		echo >>yum_package.log
		sleep 2
	done
	
	for v in ${PACKAGES[@]}
	do
		rpm -q $v >/dev/null
		if [ $? -eq 0 ];then
			rpm -qi $v >>PACKAGE_INFO.log
			echo >>PACKAGE_INFO.log
		fi
	done
else
	echo "Sorry your not root user"
	exit
fi
