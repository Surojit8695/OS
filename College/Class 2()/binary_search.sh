#!/bin/bash

# Input array
echo -n "Enter the number of elements: "
read n

for ((i = 0; i < n; i++)); do
    echo -n "A[$i]= "
    read arr[i]
done

# Bubble Sort
for ((i = 0; i < n-1; i++)); do
    for ((j = 0; j < n-i-1; j++)); do
        if (( arr[j] > arr[j+1] )); then
            # Swap
            temp=${arr[j]}
            arr[j]=${arr[j+1]}
            arr[j+1]=$temp
        fi
    done
done

# Print sorted array
echo "Sorted array:"
for ((i = 0; i < n; i++)); do
    echo -n "${arr[i]} "
done
echo

# Ask for key
echo -n "Enter the key to search: "
read key

# Binary search
low=0
high=$((n - 1))
found=0

while [ $low -le $high ]; do
    mid=$(( (low + high) / 2 ))

    if [ "$key" -eq "${arr[mid]}" ]; then
        found=1
        break
    elif [ "$key" -lt "${arr[mid]}" ]; then
        high=$((mid - 1))
    else
        low=$((mid + 1))
    fi
done
if [ $found -eq 1 ]; then
    echo "$key is found at position $mid "
else
    echo "$key not found in the array"
fi

