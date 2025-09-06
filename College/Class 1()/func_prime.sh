#!/bin/bash

# Function to check prime
Prime() {
    f=0
    i=1
    while [ $i -le $1 ]
    do
        k=$(( $1 % i ))
        if [ $k -eq 0 ]
        then
            f=$((f + 1))
        fi
        i=$((i + 1))
    done

    if [ $f -eq 2 ]
    then
        echo 2
    else
        echo 0
    fi
}

# Main program
echo -n "Enter the number: "
read n

p=$(Prime $n)   # function call

if [ $p -eq 2 ]
then
    echo "$n is prime number"
else
    echo "$n is not prime number"
fi
