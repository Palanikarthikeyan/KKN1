<<Q
write a shell script
step 1: declare and initialize file system details
	(filesystemType; filesystemMount ; filePartition)
	(ex: xfs      /D1     /dev/sda1 )
step 2: using echo command - display filesystem details
Q

fstype="xfs"
fmount="/D1"
fpart="/dev/xvdb1"

echo "--------------------------------
File system type is:$fstype
File system mount point:$fmount
Partition is:$fpart
--------------------------------"
