Armstrong()
{
	temp=$1
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
	echo "$sum"
}

echo -n "Enter the number:"
read number
s=`Armstrong $number`
if [ $number -eq $s ]
then
	echo "$number is armstrong"
else
	echo "$number is not armstrong"
fi
