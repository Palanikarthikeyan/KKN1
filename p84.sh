ps|while read -a var
do
	echo -e "${var[0]}\t ${var[-1]}"
done
echo

ps|while read -a var
do
	echo -e "${var[-1]}\t ${var[0]}"
done
echo
ps|while read -a var
do
	echo -e "${var[0]}\t ${var[1]}"
done
echo
