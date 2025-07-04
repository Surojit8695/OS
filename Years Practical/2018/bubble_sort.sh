#!/bin/bash

echo -n "Enter the number of elements: "
read n

# Read elements into array
for ((i = 0; i < n; i++))
do
    echo -n "A[$i]= "
    read a[$i]
done

# Print elements before sorting
echo "Before sorting the elements are:"
for ((i = 0; i < n; i++))
do
    echo "${a[$i]}"
done

# Bubble Sort (Descending Order)
for ((i = 0; i < n - 1; i++))
do
    for ((j = 0; j < n - i - 1; j++))
    do
        if [ "${a[$j]}" -lt "${a[$((j + 1))]}" ]; then
            temp=${a[$j]}
            a[$j]=${a[$((j + 1))]}
            a[$((j + 1))]=$temp
        fi
    done
done

# Print elements after sorting
echo "After sorting in descending order:"
for ((i = 0; i < n; i++))
do
    echo "${a[$i]}"
done

