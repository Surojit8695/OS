#!/bin/bash

echo -n "Enter the number of term: "
read n

if [ "$n" -le 0 ]; then
    echo "Error: Please enter a positive integer greater than zero."
    exit 1
fi

sum=0

for((i=1;i<=n;i++))
do
    term=1
    for((j=1;j<=i;j++))
    do
        term=$(echo "$term * $j" | bc)
    done
    sum=$(echo "scale=2; $sum + ($term/($i*$i))" | bc)
done

echo "The sum of the series is: $sum"