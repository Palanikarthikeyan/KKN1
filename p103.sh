f1(){
	echo "List of log files:-"
	ls -l *.log
	echo "Exit from $FUNCNAME block"
}
f2(){
	echo "current process details:-"
	ps -f
	echo "Exit from $FUNCNAME block"
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
	echo "Exit from $FUNCNAME block"
}
echo "Main script section"
f1
sleep 2
f2
sleep 2
f3
echo "Exit from $0 script"
