#!/bin/bash

# check if arguments given
if [ $# -ne 3 ]; then
    echo "Usage: $0 filename oldword newword"
    exit 1
fi

file=$1
old=$2
new=$3

# check file exists
if [ ! -f "$file" ]; then
    echo "Error: $file not found"
    exit 1
fi

# substitute using sed
sed -i "s/$old/$new/g" "$file"

echo "All occurrences of '$old' replaced with '$new' in $file"
