#fstype="xfs"
#fmount="/D1"
#fpart="/dev/xvdb1"

echo -n "Enter a filesystem type:"
read fstype
echo -n "Enter $fstype partition Name:"
read fpart
echo -n "Enter $fpart mountpoint directory:"
read fmount

echo "--------------------------------
File system type is:$fstype
File system mount point:$fmount
Partition is:$fpart
--------------------------------"
