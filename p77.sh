 while read var
 do
	if [ $var == "ps" -o $var == "date" -o $var == "pwd" -o $var == "ls" ];then
		continue
	else
		eval "$var"
	fi

 done<cmd.txt >resultfile
