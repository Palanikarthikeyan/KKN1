servers=(unix Linux sunos aix)
echo "A.${servers[@]}"

echo "B.${#servers[@]}"

echo "C.${servers[1]}"

servers[1]="Oracle Linux 7.4"  # modification

echo "D.${servers[1]}"
echo "E.${servers[@]}"

# How to create newelement into an existing array?
#
# Arrayname[index]=Value
#           -----

servers[4]="Aix"
servers[5]=14455.24
servers[6]="HpUx"

echo "F.${servers[@]}"
echo "G.${#servers[@]}"

# How to delete nth index?
#  unset array[index]

unset servers[1]

echo
echo -e "${servers[@]}\t Size:${#servers[@]}"
