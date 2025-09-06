echo "Enter the number of term:"
read n
sum=0
for((i=1;i<=n;i++))
do
	fact=1
	for((j=1;j<=i;j++))
	do
		fact=$(($fact * $j))
	done
	sum=`expr $sum + $fact`
done

echo "The sum is $sum"
