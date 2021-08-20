
os[0]="unix"
os[1]="Linux"
os[45]="winx"
os[34]="qnx"
os[600]="sunos"
echo ${os[@]}
echo ${#os[@]}
echo
for v in ${os[@]}
do
	echo "$v"
done
