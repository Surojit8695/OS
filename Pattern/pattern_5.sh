echo -n "Enter the row:"
read n
k=1
for((i=1;i<=n;i++))
do
	for((j=1;j<=i;j++))
	do
	echo -ne "$((k % 2))\t"
	k=`expr $k + 1`
	done
	echo ""
done
