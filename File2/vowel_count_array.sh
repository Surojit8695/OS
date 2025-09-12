#!/bin/bash

# take filename from user
echo "Enter filename:"
read file

# declare array
counts=()

# read file line by line
while read line
do
    # count vowels (both upper & lower case)
    vcount=$(echo "$line" | grep -o -i "[aeiou]" | wc -l)

    # store in array using index
    counts[$i]=$vcount

    # increase index
    i=$((i+1))
done < "$file"

# print array using loop
echo -n "Output : "
for ((j=0; j<i; j++))
do
    echo -n "${counts[$j]} "
done
echo

# Input:

# Hello.
# World.
# It is beautiful
# OK.

# Output : 2 1 7 1


