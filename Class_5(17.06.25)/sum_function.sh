sum()
{
	echo "Sum is Called"
	echo "$1"
	echo "$2"
}

echo -n "Enter the value of x:"
read x
echo -n "Enter the value of y:"
read y
sum $x $y # function call

