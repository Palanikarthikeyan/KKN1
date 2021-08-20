read -p "Enter a IPAddress:" IP
read -p "Enter a count value:" count

ping -c $count $IP
