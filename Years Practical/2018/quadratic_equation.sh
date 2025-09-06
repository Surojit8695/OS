# Write a script that takes a quadratic equation as input and find the roots of the equation.
echo -n "Enter the value of a:"
read a
echo -n "Enter the value of b:"
read b
echo -n "Enter the value of c:"
read c
# formula -b +- (root over of(b^2 -4ac))/2a
d=$(echo "scale=2;sqrt(( $b * $b )- ( 4 * $a * $c ) )" | bc)
x1=$(echo "scale=2;( - $b + $d )/( 2 * $a )" | bc)
x2=$(echo "scale=2;(- $b - $d )/( 2 * $a )" | bc)
echo "The value of discrimenant is $d"
echo "The value of x1 is: $x1"
echo "The value of x2 is: $x2"
