if [ `ps -e|wc -l` -gt 100 ]
then
	echo "Yes total no.of process count is more than 100"
else
	echo "Less than 100"
fi
if [ `ps -e|wc -l` -gt 100 ];then
	echo "Yes total no.of process count is more than 100"
else
	echo "Less than 100"
fi
