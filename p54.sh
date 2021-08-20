 i=0
 while [ $i -lt 5 ]
 do
	echo "Hello..$i"
	i=`expr $i + 1`
 done
 echo

 for v in "data1" 100 2.4 /etc/passwd
 do
	echo "Hello...$v"
 done
