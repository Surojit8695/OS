echo -n "Enter the first number:"
read x
echo -n "Enter the second number:"
read y
add=$(($x+$y))
echo "Addition of $x and $y is: $add"

sub=$(($x-$y))
echo "Subtraction of $x and $y is: $sub"

mul=$(($x*$y))
echo "Multiplication of $x and $y is: $mul"

div=$(echo "scale=2;($x/$y)"|bc)
echo "Division of $x / $y is: $div"
