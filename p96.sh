
read -p "Enter a v1 value:" v1
read -p "Enter a v2 value:" v2

t=`echo $v1 $v2|awk '{print $1+$2}'`
avg=`echo $t|awk '{print $1/2}'`

echo "Total:$t  avg:$avg"

