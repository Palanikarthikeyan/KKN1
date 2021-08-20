
read -p "Enter any two digits:" n
echo $n|grep -q "^[0-9][0-9]$"
if [ $? -eq 0 ];then
	echo "Valid format"
	expr $n + 100
else
	echo "Invalid format"
	exit
fi
