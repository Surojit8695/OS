# Write a script to find the number is Krishnamurthy Number or not using function.
Krishamurthi()
{
temp=$1
sum=0
while [ $temp -ne 0 ]
do
	rem=`expr $temp % 10`
	i=1
	fact=1
	while [ $i -le $rem ]
	do
	fact=`expr $fact \* $i`
	i=`expr $i + 1`
	done
	sum=$(echo "$sum + $fact"|bc)
	temp=`expr $temp / 10`
done
echo "$sum"
}
echo -n "Enter the number:"
read number
s=`Krishamurthi $number`
if [ $number -eq $s ]
then
	echo "$number is Krishnamurthy Number"
else
	echo "$number is not krishnamurthy"
fi
