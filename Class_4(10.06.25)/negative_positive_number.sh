#!/bin/bash

echo -n "Enter the size of the array: "
read n

echo "Enter the data:"
for ((i = 0; i < n; i++)); do
    read a[i]
done

echo "Array elements are:"
for ((i = 0; i < n; i++)); do
    echo "${a[i]}"
done

Negative=""
Positive=""
for ((i = 0; i < n; i++)); do
    k=${a[i]}
    if [ $k -lt 0 ]; then
        Negative="$Negative $k"
    else
        Positive="$Positive $k"
    fi
done

echo "Negative values are:$Negative"
echo "Positive values are:$Positive"

