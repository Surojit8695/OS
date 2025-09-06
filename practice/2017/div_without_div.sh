echo "Enter the number "
read num
while [ $num -gt 0 ]
do
	num=$(($num-11))
done
if [ $num -eq 0 ]
then
	echo "It is divisible by 11"
else
	echo "Not divisible by 11" 
fi
