v="sys"
echo "This is shell script"
r=`python<<Abc
import $v
print($v.version)
print($v.platform)
Abc`
echo
echo "$r"
echo "This is shell script section"
