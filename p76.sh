
if [ $# -eq 0 ];then
	echo "Usage: Empty argument"
	echo "$0 <file1> <file2>"
	exit
elif [ $# -ne 2 ];then
	echo "Usage: Commandline args allows 2 files"
	echo "$0 <oldfile1> <newfile2>"
	exit
fi

if ! [ -f $1 ];then
	echo "Usage:file $1 is not a reg.file"
	exit
fi

if [ "`basename $0`" == "$1" ];then
	echo "Usage:input file:$1 is same as script file"
	exit
fi
if [ -e $2 ];then
	echo "Sorry file:$2 is already exists"
	exit
fi

while read var
do
   echo "$var"
done<$1 >$2
