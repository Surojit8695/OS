#!/bin/bash
# Count vowels per line
file=$1
n=1
while read -r line; do
    echo "Line $n:"
    for v in a e i o u; do
        echo "$v: $(echo "$line" | grep -o "$v" | wc -l)"
    done
    n=$((n+1))
done < "$file"
