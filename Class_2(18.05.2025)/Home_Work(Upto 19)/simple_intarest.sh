# Write a program in C that takes the principle,year,rate and finds the simple interest.
echo -n "Enter the principle(P):"
read p
echo -n "Enter the time is year(t):"
read t
echo -n "Enter the rate(r):"
read r
si=$( echo "scale=2;($p*$t*$r)/100"|bc)
a=$(echo "$p+$si"|bc)
echo "The simple interest is: $si"
echo "The total amount(interest+principle is:$a"
