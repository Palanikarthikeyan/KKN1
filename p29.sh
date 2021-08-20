read -p "Enter a servername:" server

case $server in
unix)  echo "input server name is:$server"
       ps
       ;;
Linux) echo "server name is:$server"
       echo "version is:`uname -r`"
	;;
winx)  echo "Winx server" ;;
*)    echo "Sorry server $server is not matched"
esac
