# Write a program that take side of a square and the it will calculae the area and the perimeter
# area=side*side
# perimeter=4*side
echo -n "Enter the side:"
read x
area=`expr $x \* $x`
echo "The area of the square is: $area"
per=`expr 4 \* $x`
echo "The perimeter of the square is: $per"
