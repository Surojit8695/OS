# Write a script that will find the sum of even and odd numbers among 1 to n.
echo -n "Enter the value of n:"
read n
oddsum=0
evensum=0
for((i=1;i<=n;i++))
do
	# if [ $(($i % 2)) -eq 0 ]
	if [ `expr $i % 2` -eq 0 ]
	then
		evensum=`expr $evensum + $i`
	else
		oddsum=`expr $oddsum + $i`
	fi
done
echo "Sum of even numbers is : $evensum"
echo "Sum od odd numbers is: $oddsum"
