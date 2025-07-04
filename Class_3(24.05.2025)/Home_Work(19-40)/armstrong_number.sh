# Write a script to find the number is armstrong or not.
echo -n "Enter the number:"
read number
temp=$number
sum=0

while [ $temp -ne 0 ]
do
	rem=`expr $temp % 10`
	count=`expr $count + 1`
	temp=`expr $temp / 10`
done
temp=$number
while [ $temp -ne 0 ]
do
	rem=`expr $temp % 10`
	sum=$(echo "$sum + ($rem^$count) "|bc)
	temp=`expr $temp / 10`
done
if [ $number -eq $sum ]
then
	echo "The number is armstrong"
else
	echo "The number is not armstrong"
fi
