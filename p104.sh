
f1(){
	ls -l $1 $2
	echo "Total no.of args:$#"
	for var in $@
	do
		echo "-->$var"
	done
	echo "Exit from $FUNCNAME block"
}

f2(){
	echo $1 $2 $3
	echo "Total no.of args:$#"
	echo "List of all:$@"
	echo "Exit from $FUNCNAME block"
}
	
f1 p2 p3 p4 p5 p6 # function call args
echo
f2 data1 data2 data3 data4
echo $1 $2 # this is commandline args
echo $@    # list of all the args from commandlines
echo $#    # total no.of args from commandline
echo "Exit from script"
