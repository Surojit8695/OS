#!/bin/bash

# Input Matrix 1
echo -n "Enter the number of rows (Matrix 1): "
read rows
echo -n "Enter the number of columns (Matrix 1): "
read cols

declare -A a

for ((i=0; i<rows; i++)); do
    for ((j=0; j<cols; j++)); do
        echo -n "A[$i][$j] = "
        read a[$i,$j]
    done
done

# Print Matrix 1
echo -e "\n1st 2D Array:"
for ((i=0; i<rows; i++)); do
    for ((j=0; j<cols; j++)); do
        echo -n "${a[$i,$j]} "
    done
    echo
done

# Input Matrix 2
echo -n "Enter the number of rows (Matrix 2): "
read rows2
echo -n "Enter the number of columns (Matrix 2): "
read cols2

# Check dimensions
if [[ "$rows" -ne "$rows2" || "$cols" -ne "$cols2" ]]; then
    echo "Error: Matrix dimensions do not match. Cannot perform addition."
    exit 1
fi

declare -A b

for ((i=0; i<rows2; i++)); do
    for ((j=0; j<cols2; j++)); do
        echo -n "B[$i][$j] = "
        read b[$i,$j]
    done
done

# Print Matrix 2
echo -e "\n2nd 2D Array:"
for ((i=0; i<rows; i++)); do
    for ((j=0; j<cols; j++)); do
        echo -n "${b[$i,$j]} "
    done
    echo
done

# Matrix Addition
declare -A c

for ((i=0; i<rows; i++)); do
    for ((j=0; j<cols; j++)); do
        c[$i,$j]=$(( ${a[$i,$j]} - ${b[$i,$j]} ))
    done
done

# Print Resulting Matrix
echo -e "\nAfter addition, the resulting matrix is:"
for ((i=0; i<rows; i++)); do
    for ((j=0; j<cols; j++)); do
        echo -n "${c[$i,$j]} "
    done
    echo
done

