
 InstallFx(){
	if [ `whoami` != "root" ];then
		exit # exit from script
	fi
	yum -y install $1 >>/var/log/package_installed.log 2>&1
	if [ $? -ne 0 ];then
		echo "Sorry package $1 installation is failed"
		echo "Refer /var/log/package_installed.log"
		return 1
	fi
	date >>/var/log/package_installed.log
	echo >>/var/log/package_installed.log
	return 0
 }		   
daemonStartup(){
	if [ `whoami` != "root" ];then
		exit
	fi
	systemctl start $1
	if [ $? -ne 0 ];then
		echo "Sorry daemon $daemon startup is failed"
		return 1
	fi
	return 0
}
 if [ `whoami` == "root" ];then
	
	package="httpd"
	rpm -q $package >/dev/null 2>&1
	if [ $? -ne 0 ];then
		InstallFx $package # calling function - with argument
		if [ $? -ne 0 ];then
			echo "package installation is failed"
		fi
	fi

	daemon="httpd"
	systemctl is-active $daemon >/dev/null 2>&1
	if [ $? -eq 0 ];then
		echo "Yes daemon $daemon is active state"
	else
		echo "Daemon $daemon is not active"
		daemonStartup $daemon # function call with argument
		if [ $? -ne 0 ];then
			echo "Daemon $daemon startup is failed"
		fi
	fi
else

	echo "Sorry your not root user"
	exit
fi


