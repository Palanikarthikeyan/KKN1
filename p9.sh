myvar=100
echo $myvar # 100
echo "Login shell:$SHELL" # /bin/bash # we can use shellvariable directly 

v=$SHELL # we can initialize existing shellvariable to UDV
echo "v value is:$v"

echo "List of files from $HOME directory"
ls $HOME
echo "Exit From $PWD path" # $PWD - shellvariable ; pwd - systemcommand
echo
echo "Exit From `pwd` Path"
