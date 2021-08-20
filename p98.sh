
while read var
do
	echo $var|awk -F"[^A-Za-z0-9]" '{split($2,Qty,",");for(x in Qty){print Qty[x]}}'
	for v in $r
	do
		...
	done

done<Inventory
