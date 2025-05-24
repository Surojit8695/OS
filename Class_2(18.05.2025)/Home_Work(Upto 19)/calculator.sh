# Write script that  take two numbers and find the addition,subtraction,multiplication and division and print the result
echo -n "Enter the first number:"
read x
echo -n "Enter the second number:"
read y
add=`expr $x + $y `
echo "Addition of $x and $y is: $add"
sub=`expr $x - $y`
echo "Subtraction of $x and $y is: $sub"
mul=`expr $x \* $y`
echo "Multiplication of $x and $y is: $mul"
div=$(echo "scale=3;($x / $y)"|bc)
#Here we stored the feactional value using the BC calculator
# scale=2
# 5/2
# 2.50
echo "Division of $x and $y is: $div"
