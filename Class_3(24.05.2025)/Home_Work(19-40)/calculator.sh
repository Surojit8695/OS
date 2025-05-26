# Write a program in C that will implement a calculator for 2 numbers (addition ,subtraction, multiplication, division, power(1st number to the power 2nd number ) using switch case.
echo "1.ADDITION"
echo "2.SUBTRACTION"
echo "3.MULTIPLICATION"
echo "4.DIVISION"
echo "5.POWER"
echo -n "Enter your choice:"
read choice
if [ $choice -ge 1 -a $choice -le 5 ]
then
echo -n "Enter the first number:"
read x
echo -n "Enter the second number:"
read y
fi
case $choice in
1) echo "Addition is: $(($x+$y))";;
2) echo "Subtraction is: $(($x-$y))";;
3) echo "Multiplication is: $(($x*$y))";;
4) echo "Division is: $(echo "scale=2;($x/$y)"|bc)";;
5) echo "Power is: $(echo "$x^$y" | bc)";;
*) echo "Wrong choice.."
esac

