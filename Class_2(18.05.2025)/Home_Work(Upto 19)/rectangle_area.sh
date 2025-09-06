#Write a program in C that takes the 2 sides of the Rectangle and finds the area and perimeter.
echo -n "Enter the height:"
read height
echo -n "Enter the width:"
read width
area=`expr $height \* $width`
echo "The are of the rectangle is: $area"
val=`expr $height + $width`
peri=`expr 2 \* $val`
echo "The Perimeter of the rectangle is: $peri"



#using let keyword

#!/bin/bash
# echo -n "Enter the height: "
# read height

# echo -n "Enter the width: "
# read width

# let area=height*width
# let peri=2*(height+width)

# echo "The area of the rectangle is: $area"
# echo "The perimeter of the rectangle is: $peri"

#using bc calculator

#!/bin/bash
#echo -n "Enter the height: "
#read height

#echo -n "Enter the width: "
#read width

#area=$(echo "$height * $width" | bc)
#peri=$(echo "2 * ($height + $width)" | bc)

#echo "The area of the rectangle is: $area"
#echo "The perimeter of the rectangle is: $peri"

