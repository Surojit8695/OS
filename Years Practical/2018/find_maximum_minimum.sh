# Input array
echo -n "Enter the number of elements: "
read n

for ((i = 0; i < n; i++)); do
    echo -n "A[$i]= "
    read arr[i]
done

# Initialize max and min with first element
max=${arr[0]}
min=${arr[0]}

# Loop to find max and min
for ((i = 1; i < n; i++)); do
    if (( arr[i] > max )); then
        max=${arr[i]}
    fi

    if (( arr[i] < min )); then
        min=${arr[i]}
    fi
done

echo "Maximum value: $max"
echo "Minimum value: $min"

