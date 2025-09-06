#!/bin/bash

# Read lower and upper bounds
read -p "Enter the lower bound: " lb
read -p "Enter the upper bound: " ub

echo "Non-Fibonacci numbers in the range $lb to $ub:"

# Loop through all numbers in the range
for num in $(seq $lb $ub)
do
    a=0
    b=1
    fib=0

    # Generate Fibonacci numbers until fib >= num
    while [ $fib -lt $num ]
    do
        fib=$((a + b))
        a=$b
        b=$fib
    done

    # Check if num is not a Fibonacci number
    if [ $num -ne 0 ] && [ $num -ne 1 ] && [ $num -ne $fib ]
    then
        echo $num
    fi
done
