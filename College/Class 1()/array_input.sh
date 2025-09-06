#!/bin/bash

# Input number of elements
echo -n "Enter the number of elements in the array: "
read n

# Declare an empty array
arr=()

# Initialize index
i=0

# Input elements using while loop
echo "Enter $n elements:"
while [ $i -lt $n ]
do
    read -p "Element [$i]: " element
    arr[$i]=$element
    ((i++))  # Corrected increment
done

# Reset index
i=0

# Display the array elements
echo -e "\nThe array elements are:"
while [ $i -lt $n ]
do
    echo "arr[$i] = ${arr[$i]}"
    ((i++))  # Corrected increment
done

