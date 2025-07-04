echo -n "Enter the row and the column:"
read r
read c
for((i=0;i<r;i++))
do
	for((j=0;j<c;j++))
	do
	echo -ne "*\t"
	done
	echo ""
done
