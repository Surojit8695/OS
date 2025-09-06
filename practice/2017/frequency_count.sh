#!/bin/bash

# Read the number of elements
echo -n "Enter the number of elements: "
read n

# Read the list of numbers
echo "Enter $n numbers:"
for (( i=0; i<n; i++ ))
do
    read arr[$i]
    
done

# Read the number to search for
echo -n "Enter the number to find frequency of: "
read search

# Initialize count
count=0

# Loop through array to count frequency
for (( i=0; i<n; i++ ))
do
  if [ "${arr[$i]}" -eq "$search" ]; then
        count=$((count + 1))
    fi  
done

# Output the result
echo "Frequency of $search is: $count"

