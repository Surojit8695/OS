#Write a script that takes the 2 sides of the Rectangle and finds the area and perimeter.
echo -n "Enter the height:"
read height
echo -n "Enter the width:"
read width
area=`expr $height \* $width`
echo "The are of the rectangle is: $area"
val=`expr $height + $width`
peri=`expr 2 \* $val`
echo "The Perimeter of the rectangle is: $peri"