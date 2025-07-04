# Write a script that will print 1 to n.
echo -n "Entee the value of n:"
read n
i=1
while [ $i -le $n ]
do
	echo "$i"
	i=`expr $i + 1`
done
