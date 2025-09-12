#!/bin/bash
# Write a shell script to display all the lines of a file, starting with a vowel. Provide the file name as the command line argument.
# check if filename is given
if [ $# -ne 1 ]; then
    echo "Usage: $0 filename"
    exit 1
fi

file=$1

# check if file exists
if [ ! -f "$file" ]; then
    echo "Error: $file not found"
    exit 1
fi

# display lines starting with vowel (case-insensitive)
grep -i '^[aeiou]' "$file"
