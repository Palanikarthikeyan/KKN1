if [ $# -ne 1 ];then
	echo "Usage:Commandline accept single file"
	echo "$0 <filename>"
	exit
fi

if ! [ -f $1 ];then
	echo "Usage:input file must be a reg.file"
	exit
fi

if [ "`basename $0`" == "$1" ];then
	echo "Usage:input file is running script file"
	exit
fi

count=0
while read var
do
	count=`expr $count + 1`
	if [ $count -gt 10 -a $count -lt 26 ];then
		continue
	else
		echo "$count $var"
	fi
done<$1
