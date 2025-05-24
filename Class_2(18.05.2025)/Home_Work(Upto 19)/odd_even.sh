# Write a script that takes a number and find it is even or odd.
echo -n "Enter the number:"
read num
n=`expr $num % 2`
if [ $n -eq 0 ]
then
        echo "The number is even"
else
        echo "The number is odd"
fi