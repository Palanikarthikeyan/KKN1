read -p "enter a shell name:" var

if [ $var == "bash" -o $var == "sh" -o $var == "ksh" ]
then
	fname=".profile"
elif [ $var == "csh" -o $var == "zsh" ]
then
	fname=".cshrc"
else
	var="/bin/nologin"
	fname="/etc/profile"
fi

echo -e "Shell:$var Profile:$fname"
