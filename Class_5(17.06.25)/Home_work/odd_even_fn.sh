# function for odd even number
odd_even()
{
	k=`expr $1 % 2`
	if [ $k -eq 0 ]
	then
	echo "$1 is even number"
	else
	echo "$1 is odd number"
	fi
}


echo -n "Enter the nuber:"
read n
odd_even $n # function call without return

