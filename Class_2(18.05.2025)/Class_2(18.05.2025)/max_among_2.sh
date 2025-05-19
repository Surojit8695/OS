echo -n "Enter the 2 number:"
read x
read y
if [ $x -eq $y ]
then 
echo "All numbers are equal"
elif [ $x -gt $y ]
then
	max=$x
	echo "Maximum is: $max"
else
	max=$y
	echo "Maximum is: $max"
fi

