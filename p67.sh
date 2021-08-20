
select v in 127.0.0.1 google.com facebook.com
do
	ping -c 2 $v
	read -p "Wish to exit from menu:" v
	if [ $v == "Yes" -o $v == "yes" -o $v == "y" -o $v == "Y" ]
	then
		break
	fi
done
