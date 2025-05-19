# Multiplication of two number from user input
echo -n "Enter the first number:"
read x
echo -n "Enter the second number:"
read y
#mul=`expr $x * $y`: this is not possiable because '*' is a metacharacter that's why we have to use a back slash(\)
mul=`expr $x \* $y`
echo "Multiplication of $x and $y is: $mul"
