# Write a program in C that takes the radius of the circle and finds the area and perimeter.
echo -n "Enter the radious:"
read r
area=$(echo "(3.1415 * $r * $r)"|bc)
echo "The area of the circle is: $area"
