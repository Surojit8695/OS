Sum()
{
	z=$(($1 +$2))
	return $z #this is returing the summ value actually printing but here returing.
}
echo -n "Enter the 1st value:"
read x
echo -n "Enter the 2nd number:"
read y
#s=$( Sum $x $y )
Sum $x $y 
#capture return value (0-255)only
s=$?
echo "Sum is :$s"
