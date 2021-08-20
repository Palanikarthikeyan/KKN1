
t=0
for var in $@
do
	var=`echo $var|sed -r 's/[A-Za-z]+//'`
	t=`expr $var + $t`
done
echo "Total:$t GB"

# Run as: ./p93 100GB 120G 200GB 300MB 150gb
# ------
