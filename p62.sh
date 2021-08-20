
for var in sh bash ksh tcsh csh perl python
do
	if [ $var == "ksh" ];then
		continue
	else
		echo "$var"
	fi
done
