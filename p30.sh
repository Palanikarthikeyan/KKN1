read -p "Enter a codeNumber:" code
case $code in
101) echo "input code is:101" ;;
14.56) echo "code number:14.56" ;;
+)  echo "input operator:$code" ;;
F)  echo "Code value is:F" ;;
sales) echo "dept code is sales" ;;
*)  echo "Sorry $code is not matched"
esac
