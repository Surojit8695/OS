echo -n "Enter first number:" #if we give -n then there will be no enter taken by default
read x
echo -n "Enter second number:"
read y
echo "X is: $x"
echo "Y is: $y"
add=`expr $x + $y`
echo "Addition of $x and $y is: $add"
