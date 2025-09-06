# function for factorial 
Factorial()
{
	fact=1
	for((i=1;i<=$1;i++))
	do
		fact=` expr $fact \* $i`
	done

	echo "$fact"
}


echo -n "Enter the nuber:"
read n
f=`Factorial $n` # function call
echo "factorial of $n is : $f"

