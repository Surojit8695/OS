# Write a program in C that takes two values and swap the values without the third variable.
echo -n "Enter the value x:"
read x
echo -n "Enter the value x:"
read y
echo "Before swap"
echo "X=$x"
echo "Y=$y"
x=`expr $x - $y`
y=`expr $x + $y`
x=`expr $y - $x`
echo "After swap"
echo "X=$x"
echo "Y=$y"
