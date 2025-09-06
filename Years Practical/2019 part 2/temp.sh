#!/bin/bash

# Generate first 50 non-Fibonacci numbers
count=0
limit=50

# Start from 0
a=0
b=1
n=2

i=0

echo "First $limit non-Fibonacci numbers:"

while [ $count -lt $limit ]; do
    # Generate next Fibonacci number if needed
    c=$((a + b))

    # Print numbers between current Fibonacci pair (a, b) that are not Fibonacci
    for (( i=a+1; i<b && count<limit; i++ )); do
        echo -n "$i "
        count=$((count + 1))
    done

    # Move to next Fibonacci pair
    a=$b
    b=$c
done

echo ""

