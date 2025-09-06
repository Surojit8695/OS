# Write a script to find the reverse of a number using function.
Reverse()
{
	temp=$1
	sum=0
	while [ $temp -ne 0 ]
	do
		rem=`expr $temp % 10`
		sum=$(echo "($sum * 10) + $rem "|bc)
		temp=`expr $temp / 10`
	done
	echo "$sum"
}
echo -n "Enter the number:"
read number
s=`Reverse $number`
echo "Reverse of $number is:$s"
