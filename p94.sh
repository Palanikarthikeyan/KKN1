
TOTAL=(`free -m|awk '{print $2}'|grep -v "[A-Za-z]"`)
t=0
for var in ${TOTAL[@]}
do
	t=`expr $var + $t`
done
echo "Total Memory:$t MB"

USED=(`free -m|awk '{print $3}'|sed '1d'`)
t=0
for var in ${USED[@]}
do
	t=`expr $var + $t`
done
echo "Total Used Memory:$t MB"

FREE=(`free -m|awk '{print $4}'|sed '1d'`)
t=0
for var in ${FREE[@]}
do
	t=`expr $var + $t`
done
echo "Total Available Memory:$t MB"
