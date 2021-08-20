
 function display()
 {
	echo "Login name:`whoami`"
	echo "Login ID:$UID"
	echo "Kernel :`uname`"
	echo "Login shell:$SHELL"
	echo "Today:`date +%D`"
	echo "Exit from display block"
 }

 echo "This is $0 script section"
 display # function call
 echo "Exit from $0 script"
