#!/bin/bash
file="myfile.txt"
echo -n "Enter the word you want to search:"
read word
# -q dont show actual content it return true of false le 0 or 1
if grep -q "$word" "$file"; then
    echo "Word found in file"
else
    echo "Word not found"
fi
grep -c  $word "$file"
