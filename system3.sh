
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
	
	while read var
	do
		rpm -q $var >/dev/null 2>&1
		if [ $? -ne 0 ];then
		    InstallFx $var # calling function - with argument
			if [ $? -ne 0 ];then
				echo "package installation is failed"
			fi
		fi
	done<serverInfo.log # serverInfo.log - file - it contains remote m/c IPAddress(or) host

	while read var
	do
		systemctl is-active $var >/dev/null 2>&1
		if [ $? -eq 0 ];then
			echo "Yes daemon $var is active state"
		else
			echo "Daemon $var is not active"
			daemonStartup $var # function call with argument
			if [ $? -ne 0 ];then
				echo "Daemon $var startup is failed"
			fi
		fi
	done<daemonInfo.log # daemonInfo.log - file - it contains list of daemon name 
else

	echo "Sorry your not root user"
	exit
fi


