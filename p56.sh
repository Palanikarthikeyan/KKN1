
users=(userA userB userC userD)

# echo ${users[@]}
# ----------------

for v in ${users[@]}
do
	echo "$v"
done
