f1(){
	echo $1 $2 # this is function call args
	echo $@ # function call args(list of all)
	echo $# # total no.of args
	ps|awk '{print $1,$2}' #awk variables
	echo "data1 data2 data3"|awk '{print $0}' # awk variables
	echo "Exit from $FUNCNAME block"
}
echo $1 $2 $3 ## this is shellscript commandline args variable
echo $0 # working script filename
echo $@ # List of commandline args
echo $# # total no.of commandline args

f1 10 20 30 40 50
echo "Exit from $0 script file"
