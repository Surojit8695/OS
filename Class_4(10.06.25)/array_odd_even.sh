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

odd=""
even=""
for ((i = 0; i < n; i++)); do
    k=${a[i]}
    p=$((k % 2))
    if [ $p -eq 0 ]; then
        even="$even $k"
    else
        odd="$odd $k"
    fi
done

echo "Odd values are:$odd"
echo "Even values are:$even"

