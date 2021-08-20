count=0
while read var
do
	echo "$((++count)) $var"
done<IP
# like cat -n IP
