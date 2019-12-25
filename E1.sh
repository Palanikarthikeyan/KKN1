#!/bin/bash
# Author : Mr.Palani Karthikeyan

if [ `ps -e|grep bash|wc -l` -lt 5 ]
then
	pidof bash
else
	echo "Running process PID:$$"
fi
