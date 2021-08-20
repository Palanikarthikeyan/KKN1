
app="flask"
port=5000
URL="127.0.0.1"

display(){
	uname -rs
	echo $SHELL
	whoami
	echo "Today:`date +%D`"
}
sales_count(){
	local t=`expr $1 + 10`
	return $t
}
	

