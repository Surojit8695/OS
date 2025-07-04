#7. Write a shell script to find the sum of the following series up to n terms:
#1! + 2! + 3! + ... + n!
echo -n "Enter the number of term(n):"
read k
sum=0
for((i=1;i<=k;i++))
do
	fact=1
	for((j=1;j<=i;j++))
	do
		fact=`expr $fact \* $j`
	done
	sum=`expr $sum + $fact`
done
echo "Sum of the factorial is:$sum"
