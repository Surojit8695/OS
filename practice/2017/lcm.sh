#!/bin/bash

# Function to find LCM of two numbers without using GCD
lcm_two() {
    a=$1
    b=$2
    # Set max to the greater of a and b
    if [ $a -gt $b ]; then
        max=$a
    else
        max=$b
    fi

    while true; do
        if (( max % a == 0 && max % b == 0 )); then
            echo $max
            return
        fi
        ((max++))
    done
}

# Main program
echo -n "Enter numbers ofterm n: "
read n
for((i=0;i<n;i++))
do
    echo -n "A[$i]="
    read arr[$i]
done

lcm=${arr[0]}

for (( i=1; i<n; i++ ))
do
    lcm=$(lcm_two $lcm ${arr[i]})
done

echo "LCM = $lcm"