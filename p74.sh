i=0
while [ $i -lt 5 ]
do
    uptime >>LB.log
    sleep 1
    ps  >>process.log
    sleep 1
    date >>D1.log
i=`expr $i + 1`
done
