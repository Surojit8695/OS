# a whole number greater than 1 that cannot be exactly divided by any whole number other than itself and 1 (e.g. 2, 3, 5, 7, 11).
echo -n "Enter the number:"
read n
for((i=1;i<=n;i++))
do
	
	k=`expr $n % $i`
	if [ $k -eq 0 ]
	then
		f=`expr $f + 1`
	fi
done

if [ $f -eq 2 ]
then
	echo "$n is prime number"
else
	echo "$n is not prime number"
fi
