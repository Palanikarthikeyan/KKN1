read -p "Enter a portNumber:" port

if [ $port -gt 500 -a $port -lt 600 ]
then
	read -p "Enter a appname:" app
	case $app in
	webAPP)  app="webAPP"
		 p=$port
		 mkdir "$PWD/$app-$p"
		 if [ $? -ne 0 ];then
			echo "Directory creation failed"
		 	exit
		 fi
		;;
	testAPP) app="testAPP"
		 p=$port
		;;
	*)	echo "input app:$app is not matched"
		exit # exit from script
	esac
else
	echo "Invalid port range"
fi
