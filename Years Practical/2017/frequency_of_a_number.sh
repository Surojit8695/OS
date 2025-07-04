#nput n numbers through the keyboard. Write a shell script to #find the frequency of a particular number in the given list.
echo -n "Enter the number of element:"
read n
for((i=0;i<n;i++))
do
	echo -n "A[$i]="
	read a[$i]
done
#print the elements
for((i=0;i<n;i++))
do
	echo -n "${a[$i]} "
done
echo ""
echo -n "Enter the number that you want to check frequency:"
read num
count=0
for((i=0;i<n;i++))
do
	if [ $num -eq ${a[$i]} ]
	then
	count=`expr $count + 1`
	fi
done
echo "Frequency of $num is $count"

