#Write a program in C that takes two values and swap the values with the third variable.
echo -n "Enter the value x:"
read x
echo -n "Enter the value x:"
read y
echo "Before Swap"
echo "X=$x"
echo "Y=$y"
temp=$x
x=$y
y=$temp
echo "After Swap"
echo "X=$x"
echo "Y=$y"

