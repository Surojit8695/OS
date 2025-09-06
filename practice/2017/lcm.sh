#!/bin/bash

# Function to find GCD
gcd() {
    a=$1
    b=$2
    while [ $b -ne 0 ]
    do
        temp=$b
        b=$((a % b))
        a=$temp
    done
    echo $a
}

# Function to find LCM of two numbers
lcm_two() {
    a=$1
    b=$2
    g=$(gcd $a $b)
    echo $(( (a * b) / g ))
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
