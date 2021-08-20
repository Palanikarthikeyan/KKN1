while read var
do
	if [[ $var =~ ^$ ]];then
		continue
	else
		echo "$var"
	fi
done<p1.log >p3.log

# grep -v "^$" p1.log >p2.log
