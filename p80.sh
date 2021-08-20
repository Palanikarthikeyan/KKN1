t=0
while read var
do
   name=`echo $var|cut -d, -f1`
   city=`echo $var|cut -d, -f3`
   cost=`echo $var|cut -d, -f4`
   echo -e "Emp name is:$name \tWorking city:$city"
   t=`expr $cost + $t`
done<emp.csv
echo " Sum of emp's Cost:$t"
