
pin=1234

 count=0

 while [ $count -lt 3 ]
 do
	read -p "Enter a pin Number:" p
	count=`expr $count + 1`
	if [ $p -eq $pin ]
	then
		echo "Success pin number is matched at $count attempt"
		echo "SUCCESS-`date`" >>pin.log
		break
	else
		echo "FAILED-`date`" >>pin.log
	fi
 done

 if [ $pin -ne $p ]
 then
	echo "Sorry your pin is blocked"
 fi

 read -p "wish to read pin.log file: Yes|yes:" choice
 if [ $choice == "yes" -o $choice == "Yes" ];then
	while read v
	do
		echo "$v"
	done<pin.log
 fi
 
