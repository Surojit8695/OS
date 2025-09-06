echo -n "Enter the number (Decimal):"
read n
bin=$(echo "ibase=10;obase=2;$n"|bc)
temp=$bin
term=0
count=0;
while [ $temp -ne 0 ]
do
	rem=$(($temp % 10))
	count=$((count+1))
	term=$(($term * 10 + $rem))
	temp=$((temp/10))
done
 echo "Number of bit required to represent the number $n is:$count"
