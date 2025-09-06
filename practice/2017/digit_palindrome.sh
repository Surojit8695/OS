echo -n "Enter the number:"
read num
temp=$num
term=0
while [ $temp -ne 0 ]
do
	rem=$(($temp % 10))
	term=$(($term * 10 + $rem))
	temp=$((temp/10))
done
if [ $term -eq $num ]
then
	echo "The digit is palindrome"
else
	echo "The digit is not palindrome"
fi
