# Input array
echo -n "Enter the number of elements: "
read n

for ((i=0; i<n; i++)); do
    echo -n "A[$i]= "
    read arr[i]
done

# Print array
echo "The elements are:"
for ((i=0; i<n; i++)); do
    echo "${arr[i]}"
done

# Linear search
echo -n "Enter the key value: "
read key
flag=0

for ((i=0; i<n; i++)); do
    if [ "$key" -eq "${arr[i]}" ]; then
        flag=1
        break
    fi
done

if [ $flag -eq 1 ]; then
    echo "$key is found at position $i"
else
    echo "$key not found in the array"
fi

