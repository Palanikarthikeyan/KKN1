
 if [ $# -eq 0 ];then
	echo "Usage:Empty argument"
	exit
 fi
 if [ $# -gt 1 ];then
	echo "Usage:commandline will allows single argument only"
	exit
 fi
 
 if [ -e $1 ];then
	echo "Yes file:$1 is exists"
 else
	echo "Sorry file:$1 is not exists"
 fi

