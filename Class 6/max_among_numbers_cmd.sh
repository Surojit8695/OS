# Find maximum and minimum among N number through command line

#store the value
n=$#
for((i=0;i<n;i++))
do
	k=`expr $i + 1`
	eval a[$i]=\$$k #a[0]=val 1,a[2]=val 2,a[3]=val 3, ...
done

#Print the number within the array
echo  "The elements are:"
for((i=0;i<n;i++))
do
	echo "${a[$i]}"
done

#Find maximum
max=${a[0]}
for((i=0;i<n;i++))
do
	if [ ${a[$i]} -gt $max ]
	then
		max=${a[$i]}
	fi
done
echo "Maximum element is: $max"


#Find minimum
min=${a[0]}
for((i=0;i<n;i++))
do
	if [ ${a[$i]} -lt $min ]
	then
		min=${a[$i]}
	fi
done
echo "Minimum element is: $min"
