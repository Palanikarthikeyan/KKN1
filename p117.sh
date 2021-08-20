v="sys"
echo "This is shell script"
python<<Abc
import $v
print($v.version)
print($v.platform)
Abc
echo
echo "This is shell script section"
