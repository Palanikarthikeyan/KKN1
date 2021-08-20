read -p "Enter a directory:" dname

if [ -d $dname ]
then
	echo "directory $dname is exists"
	ls -ld $dname
else
	mkdir $dname
	if [ $? -ne 0 ];then
		echo "sorry directory creation is failed"
	fi
fi
