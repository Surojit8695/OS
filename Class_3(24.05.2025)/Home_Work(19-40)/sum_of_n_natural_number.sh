# Write a script that will find the sum of 1st n natural numbers.
echo -n "Enter the number of term(n):"
read n
sum=0
for((i=1;i<=n;i++))
do
	sum=`expr $sum + $i`
done
echo "Sum of first natural number is: $sum"
