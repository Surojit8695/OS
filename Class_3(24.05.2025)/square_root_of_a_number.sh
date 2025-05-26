echo -n "Enter the number:"
read n
squre=$(echo "scale=2;sqrt($n)"|bc)
echo "Square root of the number $n is: $squre"
power=$(echo "($n^2)"|bc)
echo "$n^2 is: $power"
