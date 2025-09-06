#!/bin/bash

# Input array size
echo -n "Enter the number of elements: "
read n

# Input array elements
echo "Enter $n elements (in sorted order):"
for ((i=0; i<n; i++)); do
    echo -n "A[$i]= "
    read arr[i]
done

# Input key to search
echo -n "Enter the key value: "
read key

# Initialize low, high, and flag
low=0
high=$((n - 1))
flag=0

# Binary search
while [ $low -le $high ]
do
    mid=$(((low + high) / 2))

    if [ "$key" -eq "${arr[mid]}" ]; then
        flag=1
        break
    elif [ "$key" -lt "${arr[mid]}" ]; then
        high=$((mid - 1))
    else
        low=$((mid + 1))
    fi
done

# Result
if [ $flag -eq 1 ]; then
    echo "$key is found at position $mid"
else
    echo "$key not found in the array"
fi
