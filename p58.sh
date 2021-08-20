#!/bin/bash
used=(`free -m|awk '{print $3}'|sed '1d'`)
t=0
for var in ${used[@]}
do
	t=`expr $var + $t`
done
echo $t


