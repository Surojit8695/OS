#!/bin/bash

echo -n "Enter the number of terms: "
read n

a=1
b=2
c=3
sum=0

if [ $n -ge 1 ]
then
    sum=$((sum + a))
fi
if [ $n -ge 2 ]
then
    sum=$((sum + b))
fi
if [ $n -ge 3 ]
then
    sum=$((sum + c))
fi
# for n=4 currnt sum is 6
for ((i=4; i<=n; i++))
do
    d=$((a + b + c))
    sum=$((sum + d))
    a=$b
    b=$c
    c=$d
done

echo "Sum is: $sum"

