# Write a script to find the number is palindrome or not.
echo -n "Enter the number:"
read number
temp=$number
sum=0
while [ $temp -ne 0 ]
do
	rem=`expr $temp % 10`
	sum=$(echo "($sum * 10) + $rem "|bc)
	temp=`expr $temp / 10`
done
if [ $number -eq $sum ]
then
	echo "The number is palindrome"
else
	echo "The number is not palindrome"
fi
