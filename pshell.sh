
. ./myfile.env

#echo $v # shell_py
#python $v # python shell_py
lv=$v
export lv
rv=`/bin/bash<<EOF
python $lv
EOF`
echo $rv
