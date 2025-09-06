echo -n "Enter the row:"
read n
for((i=1;i<=n;i++))
do
	for((j=1;j<=i;j++))
	do
	k=`expr $j % 2`
	echo -ne "$k\t"
	done
	echo ""
done
