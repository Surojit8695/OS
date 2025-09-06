#!/bin/bash
# Program to print all prime numbers in a given range (using while loops)

echo -n "Enter the lower boundary: "
read low
echo -n "Enter the upper boundary: "
read up

while [ $low -le $up ]
do
    i=1
    count=0

    while [ $i -le $low ]
    do
        if [ $((low % i)) -eq 0 ]
        then
            count=$((count + 1))
        fi
        i=$((i + 1))
    done

    if [ $count -eq 2 ]
    then
        echo -n "$low "
    fi

    low=$((low + 1))
done

echo ""
