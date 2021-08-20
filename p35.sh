read -p "Enter a server name:" server
case $server in
Linux)
	read -p "Enter a shell name:" var
	if [ $var == "bash" ];then
		fname=".bashrc"
	elif [ $var == "ksh" -o $var == "sh" ];then
		fname=".profile"
	else
		var="/bin/nologin"
		fname="/etc/profile"
	fi
	;;
winx)
	read -p "Enter a shell name:" var
	if [ $var == "psh" ];then
		fname="C:\\winprofile"
	else
		var="C:\\nologin"
		fname="C:\\defaultprofile"
	fi
	;;
*)   
	echo "Sorry server $server is not matched"
	exit
esac
echo -e "Server:$server\t Shellname:$var\t profile:$fname"
