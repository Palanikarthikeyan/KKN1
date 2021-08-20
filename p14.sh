<<Q
step 1: read user name from <STDIN>
step 2: test input user name is "root" or not->exit
                              ---------
				|
			step 3: read a shell name
			step 4: test input shell is bash or not
						    -----
						     |
				step 5:display username,shellname,bashversion
								  $BASH_VERSION
Q
read -p "Enter a username:" name
if [ $name == "root" ]
then
	read -p "Enter a shell name:" var
	if [ $var == "bash" ];then
		echo -e "UserName:$name\nShell:$var\tVersion:$BASH_VERSION"
	else
		echo "Sorry $var is not a bash shell"
	fi
else
	echo "Sorry $name is not root"
fi
