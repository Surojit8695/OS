Prime()
{
	num=$1
	i=1
	count=0
	while [ $i -le $num ]
	do
	k=$(($num % $i)) 
		if [ $k -eq 0 ]
		then
			count=$((count+1))
		fi
		i=$((i+1))
	done
	if [ $count -eq 2 ]
	then
		echo "1"
	else
		echo "0"
	fi
}

echo -n  "Enter the number:"
read num1

result=$(Prime $num1)

if [ $result -eq 1 ]
then
	echo "$num1 is prime number"
	
elif [ $result -eq 0 ]
then
	echo "$num1 is not prime number"
fi
