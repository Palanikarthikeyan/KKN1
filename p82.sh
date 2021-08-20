
cmds=(date uptime uname ps)

for var in ${cmds[@]}
do
	$var
done>t1.log

mv t1.log /tmp

for var in ${cmds[@]}
do
	$var
done>/tmp/t2.log
. ./myenv
for var in ${cmds[@]}
do
	$var
done>"$myfvar/t3.log"

