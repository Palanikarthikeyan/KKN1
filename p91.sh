read -p "Enter a partition name:" pname

echo $pname|grep -qE "^/dev/sd[abd][1-4]$"
  
  if [ $? -ne  0 ];then
	echo "Invalid partition"
	exit
  fi
echo "partition name:$pname"

cat /proc/partitions|grep $pname
if [ $? -ne 0 ];then
 echo "partition:$pname is not exists"
fi

df -Th|grep $pname
if [ $? -ne 0 ];then
	echo "Partition:$pname is not mounted"
fi
