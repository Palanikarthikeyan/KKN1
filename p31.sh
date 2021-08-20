read -p "Enter a servername:" server

case $server in
unix)  echo "matched-1" ;;
Linux) echo "matched-2" ;;
winx)  echo "matched-3" ;;
150)   echo "matched-4" ;;
*)     echo "not-matched" 
esac
echo # empty line  
# if elif style
if [ $server == "unix" ];then
	echo "MATCHED-1"
elif [ $server == Linux ] ;then
	echo "MATCHED-2"
elif [ $server == winx ];then
	echo "MATCHED-3"
elif [ $server -eq 150 ];then
	echo "MATCHED-4"
else
	echo "NOT-MATCHED"
fi
