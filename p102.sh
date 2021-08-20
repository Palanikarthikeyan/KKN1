f1(){
	echo "List of log files:-"
	ls -l *.log
	echo "Exit from f1 block"
}
f2(){
	echo "current process details:-"
	ps -f
	echo "Exit from f2 block"
}
f3(){
	awk 'BEGIN{
	FS=":"
	}
	{
	split($2,Qty,",")
	t=0
	for(x in Qty){
		t=t+Qty[x]
	}
	print "Item Code:",$1," total Sales count:",t
	}' Inventory
}
echo "Main script section"
f1
#f2
f3
