read -p "Enter a filename:" fname

if ! [ -f $fname ];then
	echo "Sorry $fname is not a reg.file"
	exit # exit from script
fi

read -p "Enter a resultfile:" wfname

if [ -e $wfname ];then
	echo "Sorry file $wfname is already exists"
	exit
fi
read -p "Enter a search pattern:" key

grep $key $fname >$wfname 

if [ $? -ne 0 ];then
echo "Usage:Sorry pattern:$key is not matched from $fname file"
fi
