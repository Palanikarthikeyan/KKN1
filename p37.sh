echo "Current Working directory:$PWD"
 
 read -p "Enter a directory name:" dname
 if ! [ -d $dname ];then
	mkdir $dname
	if [ $? -eq 0 ];then
		echo "Directory $dname is created"
	fi
 fi
 mv *.log $dname
 if [ $? -eq 0 ];then
	echo "all the log files are moved to $dname directory"
 fi
 tar -cf B1.tar $dname
 if [ $? -ne 0 ];then
	echo "tar operation is failed"
 fi


