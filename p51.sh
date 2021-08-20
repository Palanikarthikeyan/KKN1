A=(bash ksh tcsh csh sh)

echo ${A[@]}

B=(${A[@]}) # copy array to newarray 

echo ${B[@]}

A=(expect perl ${A[@]} python ruby)

echo ${A[@]}
echo "Size:${#A[@]}"
