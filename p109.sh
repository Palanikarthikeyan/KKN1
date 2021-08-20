
isname(){
	echo $1|grep -Eq "^[A-Z][a-z]+$"
	if [ $? -eq 0 ];then
		return 0
	else
		return 1
	fi
}
read -p "Enter a emp name:" ename
isname $ename
if [ $? -ne 0 ];then
	echo "Usage:Sorry emp name is not title case"
	exit
fi
echo "Hello $ename"
