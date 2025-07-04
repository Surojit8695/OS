Sum()
{
	z=$(($1 +$2))
	echo "$z" #this is returing the summ value actually printing but here returing.
}
echo -n "Enter the 1st value:"
read x
echo -n "Enter the 2nd number:"
read y
#s=$( Sum $x $y )
s=`Sum $x $y` # here we reseive the function value under 's'
echo "Sum is :$s"
