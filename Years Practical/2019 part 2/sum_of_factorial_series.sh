echo -n "Enter the number of Term:"
read n

sum=0
for((i=1;i<=n;i++))
do
	fact=1
	for((j=1;j<=i;j++))
	do
		fact=`expr $fact \* $j`
	done
	sum=`expr $sum + $fact`
done
echo "$sum"
