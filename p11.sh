
if [ "`whoami`" == "root" ]
then
	echo "Yes your root user"
	echo "Install following package:-"
	# yum -y install python3 
else
	echo "Sorry your not root user"
fi

	
