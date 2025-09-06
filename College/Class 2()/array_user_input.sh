echo -n "Enter number of elements:"
read n

for ((i = 0; i < n; i++)); do
    echo -n "A[$((i+1))]="
    read arr[$i]
done

#print the array
for ((i=0;i<n;i++))
do
	echo "${arr[$i]}"
	#echo "${arr[i]}"
done

echo "You entered: ${arr[@]}"

