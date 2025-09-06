#!/bin/bash
# Program to check if a number is prime or not (using while loop)

echo -n "Enter the number: "
read n

i=1
f=0   # divisor counter

while [ $i -le $n ]
do
    k=$((n % i))
    if [ $k -eq 0 ]
    then
        f=$((f + 1))
    fi
    i=$((i + 1))
done

if [ $f -eq 2 ]
then
    echo "$n is a Prime Number"
else
    echo "$n is NOT a Prime Number"
fi
