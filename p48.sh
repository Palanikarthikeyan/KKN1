
 if [ $# -eq 0 ];then
	echo "Usage:Empty argument"
	echo "$0 <filename>"
	exit
 fi
 if [ $# -gt 1 ];then
	echo "Usage:commandline will allows single argument only"
	echo "$0 <filename>"
	exit
 fi

f=`basename $0`
if [ "$f" == "$1" ];then
	echo "Usage: Inputfile and script file both are samefile"
	exit
fi
fname=$1 # from cmdline args variable -> UDV 
 if [ -e $fname ];then
	echo "Yes file:$fname is exists"
 else
	echo "Sorry file:$fname is not exists"
 fi

