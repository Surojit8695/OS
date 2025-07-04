echo -n "Enter the number of term:"
read n
i=1
a=0
b=1
while [ $i -le $n ]
do
	echo -n "$a "
	c=`expr $a + $b`
	a=$b
	b=$c
	i=`expr $i + 1`
done
echo ""

