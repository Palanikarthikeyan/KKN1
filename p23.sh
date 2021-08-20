read -p "Enter a filename:" fname

if [ -e $fname ]
then
	if [ -f $fname ];then
		echo "File:$fname is reg.file"
		ls -l $fname
	elif [ -d $fname ];then
		echo "File:$fname is directory file"
		ls -ld $fname
	else
		file $fname
	fi
else
	echo "Sorry input file:$fname is not exists"
fi
