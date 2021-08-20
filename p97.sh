
A=(`df -T|awk '{print $3}'|sed '1d'`)

for var in ${A[@]}
do
	t=0
	for v in `echo $var|sed -r 's/[A-Za-z]+//'`
	do
		t=`expr $v + $t`
	done
done
echo "$t"
