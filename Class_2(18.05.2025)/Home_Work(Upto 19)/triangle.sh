# Write a script that takes the 3 sides of the Triangle and finds the area and perimeter.
#!/bin/bash

echo -n "Enter side 1: "
read a
echo -n "Enter side 2: "
read b
echo -n "Enter side 3: "
read c

# Calculate perimeter
perimeter=$(echo "$a + $b + $c" | bc)

# Semi-perimeter
s=$(echo "scale=4; ($a + $b + $c) / 2" | bc)

# Calculate area using Heron's formula: sqrt(s*(s-a)*(s-b)*(s-c))
area=$(echo "scale=4; sqrt($s * ($s - $a) * ($s - $b) * ($s - $c))" | bc -l)

echo "The area of the triangle is: $area"
echo "The perimeter of the triangle is: $perimeter"

