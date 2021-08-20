c=0
while read var
do
	c=`expr $c + 1`
	if [ $c -gt 1 -a $c -lt 6 ];then
		echo "$c $var"
	fi
done<$1
