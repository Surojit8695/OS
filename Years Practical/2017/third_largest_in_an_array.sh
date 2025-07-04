#!/bin/bash

echo -n "Enter the number of elements: "
read n

if [ "$n" -lt 3 ]; then
    echo "Please enter at least three elements to find the top three maximum values."
    exit 1
fi

# Enter the element in an array
for ((i = 0; i < n; i++))
do
    echo -n "A[$i]="
    read a[$i]
done

# Initialize first, second, and third max
first=${a[0]}
second=${a[0]}
third=${a[0]}

for ((i = 1; i < n; i++))
do
    if [ "${a[$i]}" -gt "$first" ]; then
        third=$second
        second=$first
        first=${a[$i]}
    elif [ "${a[$i]}" -gt "$second" ] && [ "${a[$i]}" -ne "$first" ]; then
        third=$second
        second=${a[$i]}
    elif [ "${a[$i]}" -gt "$third" ] && [ "${a[$i]}" -ne "$second" ] && [ "${a[$i]}" -ne "$first" ]; then
        third=${a[$i]}
    fi
done

echo "First maximum number is: $first"
echo "Second maximum number is: $second"
echo "Third maximum number is: $third"

