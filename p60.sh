while :
do
	read -p "enter your name:" name
	if [ $name == "root" ];then
		echo "Matched"
		break # exit from loop
	else
		echo "Not-Matched"
	fi
done
