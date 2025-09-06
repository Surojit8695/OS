echo -n "Enter the number 1: "
read n1
echo -n "Enter the number 2: "
read n2
echo -n "Enter the number 3:"
read n3

num1=$n1
num2=$n2
num3=$n3
while [ $num2 -ne 0 ]
do
    rem=`expr $num1 % $num2`
    num1=$num2
    num2=$rem
done

num4=$num1
while [ $num4 -ne 0 ]
do
    rem=`expr $num3 % $num4`
    num3=$num4
    num4=$rem
done
gcd=$num3
echo "Gcd of $n1 and $n2 and $n3 is: $gcd"
lcm=$(echo "($n1 * $n2 * $n3) / $gcd" | bc)
echo "lcm of $n1 and $n2 and $n3 is: $lcm"

