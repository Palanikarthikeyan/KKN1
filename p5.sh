<<Q
step 1: declare a variable - initialize value(system command result)
step 2: display following system info 
kernel (uname)
today date(MM/DD/YY)
Login name(whoami)
Login ID(id -u)
Note: use - single echo command
Q
os=`uname`
DATE=`date +%D` # DATE=$(date +%D)
name=$(whoami)  # name=`whoami`
myID=$(id -u)

echo " About my system details:-
---------------------------------------
Working Kernel:$os
====================
Today:$DATE
====================
MyLogin:$name   Login ID:$myID
----------------------------------------"
