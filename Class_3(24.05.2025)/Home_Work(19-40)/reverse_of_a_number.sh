# Write a script to find the reverse of a number.
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
echo "Reverse of $number is:$sum"
