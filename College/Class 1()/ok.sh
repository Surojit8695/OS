#!/bin/bash

# Input array size
echo -n "Enter the number of elements: "
read n

# Input array elements
i=0
while [ $i -lt $n ]
do
    echo -n "A[$i]= "
    read a[i]
    i=$((i + 1))
done

# Print original array
echo "Elements are:"
i=0
while [ $i -lt $n ]
do
    echo "${a[i]}"
    i=$((i + 1))
done

# Bubble Sort using while loop
i=0
while [ $i -lt $n ]
do
    flag=0
    j=0
    while [ $j -lt $((n - i - 1)) ]
    do
        if [ ${a[j]} -gt ${a[$((j + 1))]} ]; then
            temp=${a[j]}
            a[j]=${a[$((j + 1))]}
            a[$((j + 1))]=$temp
            flag=1
        fi
        j=$((j + 1))
    done

    if [ $flag -eq 0 ]; then
        break
    fi
    i=$((i + 1))
done

# Print sorted array
echo "After sorting Elements are:"
i=0
while [ $i -lt $n ]
do
    echo "${a[i]}"
    i=$((i + 1))
done
