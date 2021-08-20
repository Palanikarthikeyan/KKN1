<<Q
step 1: read a shell name from <STDIN>
|
step 2: test input shell is bash --> initialize profile file name is ".bashrc"
	test input shell is ksh  --> initialize profile file name is ".kshrc"
	test input shell is csh  --> initialize profile file name is ".cshrc"
	|
	|
	default shell name is ->/bin/nologin    profile filename -> /etc/profile

step 3: display shell name and profile filename
Q

read -p "Enter a shell name:" var

if [ $var == "bash" ];then
	fname=".bashrc"
elif [ $var == "ksh" ];then
	fname=".kshrc"
elif [ $var == "csh" ];then
	fname=".cshrc"
else
	echo "Sorry input shell $var is not matched.. default shell details:-"
	var="/bin/nologin"
	fname="/etc/profile"
fi
echo -e "Shell name:$var\t Profilefile name:$fname"

