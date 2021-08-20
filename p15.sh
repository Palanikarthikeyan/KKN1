
 read -p "Enter a portnumber:" port

 if [ $port -gt 500  -a  $port -lt 600 ]
 then
	echo "Validport"
 else
	echo "Invalidport"
 fi
 
# read a shell name from <STDIN>
# test inputShell name is bash or sh shell //any one shell name is matched -Valid

 read -p "Enter a shell name:" var
 
 if [ $var == "bash" -o  $var == "sh" ]
 then
	echo "Valid shell"
 else
	echo "$var is not a bash/sh ..."
 fi
