echo -n "Enter the number of term:"
read n
sum=0

for((i=1;i<=n;i++))
do
term=1

	for((j=1;j<=i;j++))
	do
		term=$(echo "$term * $j"|bc)
	done
		sum=$(echo "scale=2;$sum + ($term/($i*$i))"|bc)
done
echo "The sum of the series is: $sum"
