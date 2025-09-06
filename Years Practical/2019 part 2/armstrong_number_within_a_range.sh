# Write a script to find the number is armstrong or not.
echo -n "Enter the lower limit:"
read m
echo -n "Enter the upper limit"
read n
for((i=$m;i<=$n;i++))
do
	temp=$i
	sum=0
	count=0
	while [ $temp -ne 0 ]
	do
		rem=`expr $temp % 10`
		count=`expr $count + 1`
		temp=`expr $temp / 10`
	done
	temp=$i
	while [ $temp -ne 0 ]
	do
		rem=`expr $temp % 10`
		sum=$(echo "$sum + ($rem^$count) "|bc)
		temp=`expr $temp / 10`
	done
	if [ $i -eq $sum ]
	then
		echo "The number $i is armstrong"
	fi
done
