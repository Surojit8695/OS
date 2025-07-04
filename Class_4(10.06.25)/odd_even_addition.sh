echo -n "Enter the size of the array:"
read n
echo "Enter the data"
for((i=0;i<n;i++))
do
	read a[$i] 
done
echo "Array elements are"
for((i=0;i<n;i++))
do
	echo "${a[$i]}"
done

oddsum=0
evensum=0
for((i=0;i<n;i++))
do
	k=${a[$i]}
	p=`expr $k % 2`
	if [ $p -eq 0 ]
	then
	evensum=`expr $evensum + ${a[$i]}`
	else
	oddsum=`expr $oddsum + ${a[$i]}`
	fi
done
echo "Evensum is: $evensum"
echo "Oddsum is: $oddsum"

