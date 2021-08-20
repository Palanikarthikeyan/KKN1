t=0
while read var
do
	c=`echo $var|cut -d: -f2`
	t=`expr $c + $t`
done<IP
echo "Total:$t"
