
# ps -e|grep -E "bash|[0-9]$"
# ----------------

ps -e|while read var
do
	if [[ $var =~ bash|[0-9]$ ]];then
		echo "$var"
	fi
done
