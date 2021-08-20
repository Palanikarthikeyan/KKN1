 echo "Enter a N value:"
 read n
 a=`expr $n + 100`
 set -x 
 b=`expr $a + 200`
 c=`expr $b + 300`
 echo "result:$c"
 set +x
 echo "List of files:-"
 ls
 echo "Exit from code"
