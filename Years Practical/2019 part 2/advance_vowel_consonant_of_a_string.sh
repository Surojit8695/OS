#!/bin/bash

read -p "Enter the string: " str
len=${#str}
count=0
v=0

# Convert to lowercase to handle capital vowels too
str_lower=$(echo "$str" | tr 'A-Z' 'a-z')

for ((i=0; i<len; i++)); do
    ch="${str_lower:$i:1}"
    
    # Skip spaces and non-alphabetic characters
    if [[ "$ch" =~ [a-z] ]]; then
        ((count++))
        if [[ "$ch" == [aeiou] ]]; then
            ((v++))
        fi
    fi
done

echo "Total characters (a-z): $count"
echo "Total vowels: $v"
c=$((count - v))
echo "Total consonants: $c"

