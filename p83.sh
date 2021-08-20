
SH=(`find ~ -name "*.sh"`)

for var in ${SH[@]}
do
	grep -l "expr" $var
done
