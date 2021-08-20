 pin=1234

 count=0

 while [ $count -lt 3 ]
 do
	read -p "Enter a pin Number:" p
	count=`expr $count + 1`
	if [ $p -eq $pin ]
	then
		echo "Success pin number is matched at $count attempt"
		break
	fi
 done

 if [ $pin -ne $p ]
 then
	echo "Sorry your pin is blocked"
 fi

