echo -n "Enter the number 1: "
read n1
echo -n "Enter the number 2: "
read n2
num1=$n1
num2=$n2
while [ $num2 -ne 0 ]
do
    rem=`expr $num1 % $num2`
    num1=$num2
    num2=$rem
done
gcd=$num1
lcm=`expr $n1 \* $n2 / $gcd`
echo "Gcd of $n1 and $n2 is: $gcd"
echo "Lcm of $n1 and $n2 is: $lcm"

