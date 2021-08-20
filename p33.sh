<<Q
write a shellscript

using case statement - display system menu list in below format
	
	*****************************
        *      MENU  LIST 	    *
	*****************************
	A. Kernel Info
	B. Login shell name and version
	C. Display mounted File systemdetails
	D. LoadBalance report
	
	Enter your choice:

Q
echo "
        *****************************
        *      MENU  LIST           *
        *****************************
        A. Kernel Info
        B. Login shell name and version
        C. Display mounted File systemdetails
        D. LoadBalance report "
read -p "Enter your choice:" choice
case $choice in
A)	echo "Working kernel details:-"
	uname -rs
	;;
B)	echo "Login shell: $SHELL and version: $BASH_VERSION" ;;
C)	echo "Mounted File System details:-"
	echo "--------------------------------"
	df -Th
	;;
D)	echo "Current CPU LoadBalance:-"
	uptime
	;;
*)	echo "Sorry '$choice' is invalid choice"
	echo "Try-again"
esac

