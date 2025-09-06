echo "----MENU----"
echo "1.ADDITION"
echo "2.SUBTRACTION"
echo "3.MULTIPLICATION"
echo "4.DIVISION"
echo -n "Enter your choice:"
read choice 
if [  $choice -ge 1  -a  $choice -le 4   ]
then
	read -p "Enter the first number:" n1
	read -p "Enter the second number:" n2
fi
case $choice in
1)
	sum=$((n1+n2))
	echo "Addition of $n1 and $n2 is: $sum"
	;;
2)
	sub=$((n1-n2))
	echo "Subtraction of $n1 and $n2 is: $sub"
	;;
3)
	mul=$((n1*n2))
	echo "Multiplication of $n1 and $n2 is: $mul"
	;;
4)
	div=$(echo "scale=2;$n1/$n2"|bc)
	echo "Division of $n1 and $n2 is: $div"
	;;
*) echo "Invalid input"
esac
