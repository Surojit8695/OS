# Write a script that takes two points p1(x1,y1) and p2(x2,y2) and finds the distance and slope between the points.
echo -n "Enter coordinates of point 1 (x1 y1):"
read x1
read y1
echo -n "Enter coordinates of point 1 (x2 y2):"
read x2
read y2
dis=$(echo "sqrt(($x2 - $x1)*($x2 - $x1)+($y2 - $y1)*($y2 - $y1))"|bc -l)
echo "Distance is: $dis"
