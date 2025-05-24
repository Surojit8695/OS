# Write script to find the maximum and maximum between 2 numbers.
echo "Enter 2 numbers:"
read x
read y
if [ $x -gt $y ]; then
    max=$x
else
    max=$y
fi
echo "Maximum element is: $max"
