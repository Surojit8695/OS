Perfect()
{
	sum=0
	for((i=1;i<$1;i++))
	do
		
		k=`expr $1 % $i`
		if [ $k -eq 0 ]
		then
			sum=`expr $sum + $i`
		fi
	done

	echo "$sum"
}
echo -n "Enter the number:"
read n
s=`Perfect $n`
if [ $s -eq $n -a $s -ne 0 ]
then
	echo "$n is perfect number"
else
	echo "$n is not perfect number"
fi
