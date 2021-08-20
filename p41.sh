if [ $# -eq 0 ];then
	echo "Usage: Commandline args is empty"
	exit
fi

if [ $# -gt 2 ];then
	echo "Usage:Commandline arg accept two args"
	exit
fi
expr $1 + $2
echo
expr ${1} + ${2}
