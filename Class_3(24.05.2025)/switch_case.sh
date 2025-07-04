echo "1.ADDITION"
echo "2.SUBTRACTION"
echo "3.MULTIPLICATION"
echo "4.DIVISION"
echo -n "Enter your choice:"
read choice
if [ $choice -ge 1 -a $choice -le 4 ]
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
*) echo "Wrong choice.."
esac

