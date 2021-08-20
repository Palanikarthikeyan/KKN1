
read -p "Enter a filename:" fname
read -p "Enter a fieldsep:" fsep
read -p "Enter a filedNumber:" fn

A=(`cut -d"$fsep" -f"$fn" $fname`)

echo "Total no.of elements:${#A[@]}"

for var in ${A[@]}
do
	echo "->$var"
done
