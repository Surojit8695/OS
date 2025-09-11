#!/bin/bash
# Convert file content to uppercase
echo "Enter filename:"
read file
if [ -f "$file" ]; then
    tr 'a-z' 'A-Z' < "$file"
else
    echo "File not found"
fi
