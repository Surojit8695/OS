# function for prime number
Prime()
{
	f=0
	for((i=1;i<=$1;i++))
	do
	k=`expr $1 % $i`
	if [ $k -eq 0 ]
	then
		f=`expr $f + 1`
	fi
	done

	if [ $f -eq 2 ]
	then
		echo "2"
	else
		echo "0"
	fi
}


echo -n "Enter the nuber:"
read n
p=`Prime $n` # function call
if [ $p -eq 2 ]
then
echo "$n is prime number"
else
echo "$n is not prime number"
fi
