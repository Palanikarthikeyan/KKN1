<<Q
step 1: read a partition name from <STDIN>(ex: /dev/sda1)
step 2: read a partition Size from <STDIN>(ex: 100)
step 3: read a another disk partition name from <STDIN>
step 4: read a partition Size from <STDIN>
step 5: calculate Sum of two disks partition size - use expr
step 6: display partition details and total partition Size (use single echo)
Q
read -p "Enter a partition Name:" p1
read -p "Enter a $p1 Size:" s1
read -p "Enter a partition Name:" p2
read -p "Enter a $p2 Size:" s2
total=`expr $s1 + $s2`
echo "
----------------------------
Partition	Size
----------------------------
$p1	$s1 GB
$p2	$s2 GB
----------------------------
	Total: $total GB
----------------------------"
