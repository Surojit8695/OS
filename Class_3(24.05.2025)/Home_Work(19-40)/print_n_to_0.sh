# Write a script that will print N to 0.
echo -n "Enter the value of n:"
read n
i=$n
while [ $i -ge 0 ]
do
	echo "$i"
	i=`expr $i - 1`
done
