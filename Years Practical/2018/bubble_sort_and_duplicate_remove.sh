#!/bin/bash

# Read the number of elements
echo -n "Enter the number of elements: "
read n

# Read array elements
for ((i = 0; i < n; i++))
do
    echo -n "A[$i] = "
    read a[$i]
done

# Print the array
echo "Array elements are:"
for ((i = 0; i < n; i++))
do
    echo "A[$i] = ${a[$i]}"
done

# Sort the array using Bubble Sort
for ((i = 0; i < n - 1; i++))
do
    for ((j = 0; j < n - i - 1; j++))
    do
        if [ ${a[j]} -gt ${a[j+1]} ]
        then
            # Swap elements
            temp=${a[j]}
            a[j]=${a[j+1]}
            a[j+1]=$temp
        fi
    done
done

# Print sorted array
echo "Sorted array:"
for ((i = 0; i < n; i++))
do
    echo -n "${a[$i]} "
done
echo

# Remove duplicates (from a sorted array)
unique=()
unique[0]=${a[0]}
k=1
for((i=1;i<n;i++))
do
	 if [ "${a[$i]}" -ne "${a[$i-1]}" ];then
	 unique[$k]=${a[$i]}
	 ((k++))
	 fi
done


# Print unique elements
echo "Array after removing duplicates:"
for ((i = 0; i < k; i++))
do
    echo -n "${unique[$i]} "
done
echo

