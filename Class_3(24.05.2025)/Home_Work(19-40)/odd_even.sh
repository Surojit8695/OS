# Write a script that takes a number and finds it is even or odd using the Ternary/if else operator.
echo -n "Enter the number:"
read n
k=`expr $n % 2`
if [ $k -eq 0 ]
then
	echo "$n is even"
else
	echo "$n is odd"
fi
