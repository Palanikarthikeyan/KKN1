read -p "Enter a directory:" dname

if [ -d $dname ]
then
	echo "directory $dname is exists"
	ls -ld $dname
else
	mkdir $dname
	if [ $? -eq 0 ];then
		echo "Yes directory $dname is created under `pwd` directory"		
	else
		echo "sorry directory creation is failed"
	fi
fi
