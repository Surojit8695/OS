#!/bin/bash

# Prompt for dimensions
echo -n "Enter the number of rows: "
read rows
echo -n "Enter the number of columns: "
read cols

# Declare an associative array for 2D indexing
declare -A array

# Read array elements from user
for ((i=0; i<rows; i++)); do
    for ((j=0; j<cols; j++)); do
        echo -n "A[$i][$j] = "
        read array[$i,$j]
    done
done

# Print the 2D array like a matrix
echo -e "\n2D Array:"
for ((i=0; i<rows; i++)); do
    for ((j=0; j<cols; j++)); do
        echo -n "${array[$i,$j]} "
    done
    echo
done

# Print a specific element (just for demonstration)
echo -e "\nElement at [0][0]: ${array[0,0]}"

