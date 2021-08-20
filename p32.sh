read -p "Enter a codeNumber:" code
case $code in
sales|SALES|Sales) echo "dept code is sales" ;;
F|f|a|b) echo "code value is:$code" ;;
[Ll]inux) echo "Server name is:$code" ;;
*)  echo "Sorry $code is not matched"
esac
