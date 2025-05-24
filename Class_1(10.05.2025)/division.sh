# Here we perform division of two number
echo -n "Enter the first number:"
read x
echo -n "Enter the second number:"
read y
div=`expr $x / $y`
echo "Division of $x and $y is: $div"
#This division will only produce interger part this does not produce floating part like if we divided 10/3 the answer will be 3 but it should be 3.33(aprox)
