PS3="Enter your choice:"
select var in unix linux sunos aix quit
do
	case $var in
	unix)  echo "server name is:$var"
		;;
	linux) echo "current process details:-"
	        ps
		;;
	sunos) echo "Mounted filesystem:"
		df -Th
		;;
	aix)	echo "Total no.of process count:`ps -e|wc -l`" ;;
	quit)   echo "Thank you!!!" ; break ;;
	*)	echo "Invalid choice"
	esac
done

