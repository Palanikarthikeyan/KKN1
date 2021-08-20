read -p "Enter a filename:" fname

if [ -e $fname ]
then
	echo "File:$fname is exists"
	file $fname
else
	echo "Sorry input file:$fname is not exists"
fi
