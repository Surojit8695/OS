#!/bin/bash

echo "Enter filename:"
read file

if [ ! -f "$file" ]; then
    echo "Error: $file not found"
    exit 1
fi

lineno=1
while read line
do
    a=$(echo "$line" | grep -o -i "a" | wc -l)
    e=$(echo "$line" | grep -o -i "e" | wc -l)
    i=$(echo "$line" | grep -o -i "i" | wc -l)
    o=$(echo "$line" | grep -o -i "o" | wc -l)
    u=$(echo "$line" | grep -o -i "u" | wc -l)

    echo "Line $lineno: a=$a e=$e i=$i o=$o u=$u"

    lineno=$((lineno+1))
done < "$file"
