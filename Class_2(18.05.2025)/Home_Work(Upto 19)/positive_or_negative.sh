# Write a script that takes  a number and find it is positive or negative.
echo -n "Enter the number:"
read num
if [ $num -ge 0 ]
then
        echo "The number is Positive"
else
        echo "The number is Negative"
fi