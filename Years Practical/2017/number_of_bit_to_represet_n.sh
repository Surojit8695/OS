echo -n "Enter the number:"
read decimal
binary=$( echo "obase=2;$decimal" |bc)
echo "$binary"


temp=$binary
count=0
while [ $temp -ne 0 ]
do
	rem=`expr $temp % 10`
	temp=`expr $temp / 10`
	count=`expr $count + 1`
done
echo "Number of bit required to represent $decimal in bairy is: $count"
