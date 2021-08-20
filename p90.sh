
read -p "Enter a emp name:" ename
echo $ename|grep -qE "^[A-Z][a-z]+$"
if [ $? -ne 0 ];then
	echo "Emp name is not in title case format"
	exit
fi
read -p "Hello..$ename enter your emp ID:" eid
echo $eid|grep -qE "^[A-E][0-9]{3}$"
if [ $? -ne 0 ];then
	echo "Emp id:$eid is not valid format"
	exit
fi
echo -e "Emp name:$ename\t Empid:$eid"

