echo -n "Enter the number 1:"
read a
echo -n "Enter the number 2:"
read b

if [ $a -gt $b ]
then
    max=$a
else
    max=$b
fi

while [ true ]
do
    x=`expr $max % $a`
    y=`expr $max % $b`
    if [ $x -eq 0 -a $y -eq 0 ]
    then
    	lcm=$max
        break
    fi
    max=`expr $max + 1`
done
echo "Lcm of $a and $b is:$lcm"
