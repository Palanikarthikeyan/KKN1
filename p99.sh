BEGIN{
FS=":"
}
{
split($2,Qty,",")
t=0
for(x in Qty){
	t=t+Qty[x]
}
print "Item Code:",$1," total Sales count:",t
}
