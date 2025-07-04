# Write a script that will find total numbers of even and odd numbers among 1 to n.
echo -n "Enter the value of n:"
read n
for((i=1;i<=n;i++))
do
	# if [ $(($i % 2)) -eq 0 ]
	if [ `expr $i % 2` -eq 0 ]
	then
		echo "$i is even"
	else
		echo "$i is odd"
	fi
done 
