# Write a program in C that will find the area and perimeter of square ,circle , rectangle, triangle using switch case.
#!/bin/bash

echo "1. SQUARE"
echo "2. CIRCLE"
echo "3. RECTANGLE"
echo "4. TRIANGLE"
echo -n "Enter your choice: "
read choice

case $choice in
1)
    echo -n "Enter the side of the square: "
    read x
    area=$((x * x))
    per=$((4 * x))
    echo "The area of the square is: $area"
    echo "The perimeter of the square is: $per"
    ;;
2)
    echo -n "Enter the radius of the circle: "
    read r
    area=$(echo "scale=2; 3.1415 * $r * $r" | bc)
    per=$(echo "scale=2; 2 * 3.1415 * $r" | bc)
    echo "The area of the circle is: $area"
    echo "The perimeter (circumference) of the circle is: $per"
    ;;
3)
    echo -n "Enter the height of the rectangle: "
    read height
    echo -n "Enter the width of the rectangle: "
    read width
    area=$((height * width))
    per=$((2 * (height + width)))
    echo "The area of the rectangle is: $area"
    echo "The perimeter of the rectangle is: $per"
    ;;
4)
    echo -n "Enter side a of the triangle: "
    read a
    echo -n "Enter side b of the triangle: "
    read b
    echo -n "Enter side c of the triangle: "
    read c

    perimeter=$(echo "$a + $b + $c" | bc)
    s=$(echo "scale=4; ($a + $b + $c) / 2" | bc)
    area=$(echo "scale=4; sqrt($s * ($s - $a) * ($s - $b) * ($s - $c))" | bc -l)

    echo "The perimeter of the triangle is: $perimeter"
    echo "The area of the triangle is: $area"
    ;;
*) echo "Wrong choice..";;
esac

