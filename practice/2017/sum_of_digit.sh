echo -n "Enter the number:"
read num
temp=$num
sum=0
while [ $temp -ne 0 ]
do
	rem=$(($temp % 10))
	sum=$(($sum + $rem))
	temp=$((temp/10))
done
echo "Sum is $sum"
