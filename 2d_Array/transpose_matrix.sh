#!/bin/bash

# Input Matrix
echo -n "Enter the number of rows: "
read rows
echo -n "Enter the number of columns: "
read cols

declare -A matrix
declare -A transpose

# Read matrix elements
for ((i=0; i<rows; i++)); do
    for ((j=0; j<cols; j++)); do
        echo -n "matrix[$i][$j] = "
        read matrix[$i,$j]
    done
done

# Print Original Matrix
echo -e "\nOriginal Matrix:"
for ((i=0; i<rows; i++)); do
    for ((j=0; j<cols; j++)); do
        echo -n "${matrix[$i,$j]} "
    done
    echo
done

# Transpose the Matrix
for ((i=0; i<rows; i++)); do
    for ((j=0; j<cols; j++)); do
        transpose[$j,$i]=${matrix[$i,$j]}
    done
done

# Print Transposed Matrix
echo -e "\nTransposed Matrix:"
for ((i=0; i<cols; i++)); do  # note: rows and cols are swapped
    for ((j=0; j<rows; j++)); do
        echo -n "${transpose[$i,$j]} "
    done
    echo
done

