echo -n "Enter the size of the array:"
read n
echo "Enter the data"
for((i=0;i<n;i++))
do
	read a[$i] #a[0],a[1],a[2],a[3],... so on
done
echo "Array elements are"
for((i=0;i<n;i++))
do
	echo "${a[$i]}"
done
