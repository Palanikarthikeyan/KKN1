LOGFILE_SIZE=(`ls -l *.log|awk '{print $5}'`)
t=0
for var in ${LOGFILE_SIZE[@]}
do
	t=`expr $t + $var`
done
echo "Total Log file Size:$t"
