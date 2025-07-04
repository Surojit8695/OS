# Write a script that will check a number perfect or not
echo -n "Enter the number:"
read n
sum=0
for((i=1;i<n;i++))
do
	
	k=`expr $n % $i`
	if [ $k -eq 0 ]
	then
		sum=`expr $sum + $i`
	fi
done

if [ $sum -eq $n -a $sum -ne 0 ]
then
	echo "$n is perfect number"
else
	echo "$n is not perfect number"
fi
