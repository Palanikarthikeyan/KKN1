i=0
while [ $i -lt 5 ]
do
    uptime
    sleep 1
    ps
    sleep 1
    echo
i=`expr $i + 1`
done >r1.log # Vs done >>r1.log
             #         |__Append
	     #
