echo "Enter coordinates of point A (x1 y1):"
read x1 
read y1

echo "Enter coordinates of point B (x2 y2):"
read x2 
read y2

echo "Enter coordinates of point C (x3 y3):"
read x3 
read y3

# Calculate the area using the formula
area=$(echo "scale=2; 0.5 * ($x1*($y2 - $y3) + $x2*($y3 - $y1) + $x3*($y1 - $y2))" | bc) #formula 

echo "$area"
abs_area=$(echo "$area / 1" | bc)

if [ $abs_area -eq 0 ]
then
	echo "Linear"
else
	echo "Non linear"
fi
