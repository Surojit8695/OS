#!/bin/bash
# Print lines between m and n
echo "Enter filename:"
read file
echo "Enter m:"
read m
echo "Enter n:"
read n

if [ -f "$file" ] && [ $m -le $n ]; then
    sed -n "${m},${n}p" "$file"
else
    echo "Invalid input"
fi
